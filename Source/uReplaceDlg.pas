{-------------------------------------------------------------------------------
BirEdit text editor.
Copyright (C) 2008 Aleksey Tatuyko

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


The Original Code is: dlgReplaceText.pas, released 2000-06-23.

The Original Code is part of the SearchReplaceDemo project, written by
Michael Hieke for the SynEdit component suite.
Using TNT Unicode Controls by Aleksey Tatuyko.
All Rights Reserved.

Contributors to the SynEdit project are listed in the Contributors.txt file.

$Id: dlgReplaceText.pas,v 1.3 2008/11/05 12:37:25 rmay Exp $

You may retrieve the latest version of this file at the SynEdit home page,
located at http://SynEdit.SourceForge.net


Known Issues:
-------------------------------------------------------------------------------}

unit uReplaceDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntForms, uSearchDlg, StdCtrls, TntStdCtrls, TntExtCtrls, SynUnicode;

type
  TReplaceForm = class(TSearchForm)
    TntLabel2: TTntLabel;
    TntComboBox2: TTntComboBox;
    procedure TntFormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    function GetReplaceText: UnicodeString;
    function GetReplaceTextHistory: UnicodeString;
    procedure SetReplaceText(Value: UnicodeString);
    procedure SetReplaceTextHistory(Value: UnicodeString);
    { Private declarations }
  public
    property ReplaceText: UnicodeString read GetReplaceText write SetReplaceText;
    property ReplaceTextHistory: UnicodeString read GetReplaceTextHistory write SetReplaceTextHistory;
    { Public declarations }
  end;

var
  ReplaceForm: TReplaceForm;

implementation

{$R *.DFM}

function TReplaceForm.GetReplaceText: UnicodeString;
begin
  Result:=TntComboBox2.Text;
end;

function TReplaceForm.GetReplaceTextHistory: UnicodeString;
var i: integer;
begin
  // set up the history
  Result:='';
  for i:=0 to TntComboBox2.Items.Count-1 do begin
    if i>=10 then break;
    if i>0 then Result:=Result+#13#10;
    Result:=Result+TntComboBox2.Items[i];
  end;
end;

procedure TReplaceForm.SetReplaceText(Value: UnicodeString);
begin
  TntComboBox2.Text:=WideTrim(Value);
end;

procedure TReplaceForm.SetReplaceTextHistory(Value: UnicodeString);
begin
  TntComboBox2.Items.Text:=Value;
end;

procedure TReplaceForm.TntFormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  s: UnicodeString;
  i: integer;
begin
  inherited;
  if ModalResult=mrOK then begin
    s:=TntComboBox2.Text;
    if s<>'' then begin
      i:=TntComboBox2.Items.IndexOf(s);
      if i>-1 then begin
        TntComboBox2.Items.Delete(i);
        TntComboBox2.Items.Insert(0,s);
        TntComboBox2.Text:=s;
      end else TntComboBox2.Items.Insert(0,s);
    end;
  end;
end;

end.