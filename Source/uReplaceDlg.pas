{-------------------------------------------------------------------------------
BirEdit text editor.
Copyright (C) 2008-2009 Aleksey Tatuyko

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>

You can contact with me by e-mail: tatuich@mail.ru


The Original Code is BirEdit.dpr by Aleksey Tatuyko, released 2009-07-27.
All Rights Reserved.

$Id: uReplaceDlg.pas, v 1.3.0.463 2009/07/27 05:30:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://fireforge.net/projects/biredit/

}

unit uReplaceDlg;

interface

uses
  SysUtils, Forms, uSearchDlg, Classes, Controls, StdCtrls, ExtCtrls, JvTimer;

type
  TReplaceForm = class(TSearchForm)
    ReplaceLbl: TLabel;
    ComboBox2: TComboBox;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Tmr1Timer(Sender: TObject);
  private
    function GetReplaceText: string;
    function GetReplaceTextHistory: string;
    procedure SetReplaceText(Value: string);
    procedure SetReplaceTextHistory(Value: string);
  public
    property ReplaceText: string read GetReplaceText write SetReplaceText;
    property ReplaceTextHistory: string read GetReplaceTextHistory
                                   write SetReplaceTextHistory;
  end;

var
  ReplaceForm: TReplaceForm;

implementation

{$R *.DFM}

function TReplaceForm.GetReplaceText: string;
begin
  Result := ComboBox2.Text;
end;

function TReplaceForm.GetReplaceTextHistory: string;
var
  i: integer;
begin
  // set up the history
  Result := '';
  for i := 0 to ComboBox2.Items.Count - 1 do begin
    if i >= 10 then Break;
    if i > 0 then Result := Result + #13#10;
    Result := Result + ComboBox2.Items[i];
  end;
end;

procedure TReplaceForm.SetReplaceText(Value: string);
begin
  ComboBox2.Text := Trim(Value);
end;

procedure TReplaceForm.SetReplaceTextHistory(Value: string);
begin
  ComboBox2.Items.Text := Value;
end;

procedure TReplaceForm.Tmr1Timer(Sender: TObject);
begin
  OkBtn.Enabled := not ((ComboBox1.Text = '') or (ComboBox2.Text = ''));
end;

procedure TReplaceForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  s: string;
  i: integer;
begin
  inherited;
  if ModalResult = mrOK then begin
    s := ComboBox2.Text;
    i := ComboBox2.Items.IndexOf(s);
    if i > -1 then begin
      ComboBox2.Items.Delete(i);
      ComboBox2.Items.Insert(0, s);
      ComboBox2.Text := s;
    end else ComboBox2.Items.Insert(0, s);
    if ComboBox2.Items.Count > 10 then for I := 10 to ComboBox2.Items.Count - 1
    do ComboBox2.Items.Delete(i);
  end;
end;

end.