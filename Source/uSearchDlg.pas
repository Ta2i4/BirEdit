{-------------------------------------------------------------------------------
BirEdit text editor.
Copyright (C) 2008-2010 Alexey Tatuyko

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

You can contact with me by e-mail: tatuich@gmail.com


The Original Code is uSearchDlg.pas by Alexey Tatuyko, released 2010-10-26.
All Rights Reserved.

$Id: uSearchDlg.pas, v 2.0.1.42 2010/10/26 04:36:00 tatuich Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

unit uSearchDlg;

interface

uses
  Forms, Classes, Controls, StdCtrls, ExtCtrls, JvTimer;

type
  TSearchForm = class(TForm)
    SearchForLbl: TLabel;
    ComboBox1: TComboBox;
    OptsGrp: TGroupBox;
    CaseSentChk: TCheckBox;
    WholeWordChk: TCheckBox;
    FromCaretChk: TCheckBox;
    InSelChk: TCheckBox;
    RegExpChk: TCheckBox;
    DirectGrp: TRadioGroup;
    OkBtn: TButton;
    CancelBtn: TButton;
    Tmr1: TJvTimer;
    CycleChk: TCheckBox;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Tmr1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    function GetSearchBackwards: Boolean;
    function GetSearchCaseSensitive: Boolean;
    function GetSearchFromCursor: Boolean;
    function GetSearchInSelection: Boolean;
    function GetSearchWholeWords: Boolean;
    function GetSearchRegularExpression: Boolean;
    function GetSearchCycle: Boolean;
    function GetSearchText: string;
    function GetSearchTextHistory: string;
    procedure SetSearchBackwards(Value: Boolean);
    procedure SetSearchCaseSensitive(Value: Boolean);
    procedure SetSearchFromCursor(Value: Boolean);
    procedure SetSearchInSelection(Value: Boolean);
    procedure SetSearchWholeWords(Value: Boolean);
    procedure SetSearchCycle(Value: Boolean);
    procedure SetSearchRegularExpression(const Value: Boolean);
    procedure SetSearchText(Value: string);
    procedure SetSearchTextHistory(Value: string);
  public
    property SearchBackwards: Boolean read GetSearchBackwards
                                write SetSearchBackwards;
    property SearchCaseSensitive: Boolean read GetSearchCaseSensitive
                                write SetSearchCaseSensitive;
    property SearchFromCursor: Boolean read GetSearchFromCursor
                                write SetSearchFromCursor;
    property SearchInSelectionOnly: Boolean read GetSearchInSelection
                                write SetSearchInSelection;
    property SearchRegularExpression: Boolean read GetSearchRegularExpression
                                write SetSearchRegularExpression;
    property SearchWholeWords: Boolean read GetSearchWholeWords
                                write SetSearchWholeWords;
    property SearchCycle: Boolean read GetSearchCycle write SetSearchCycle;
    property SearchText: string read GetSearchText write SetSearchText;
    property SearchTextHistory: string read GetSearchTextHistory
                                write SetSearchTextHistory;
  end;

var
  SearchForm: TSearchForm;

implementation

{$R *.DFM}

procedure TSearchForm.FormDestroy(Sender: TObject);
begin
  SearchForm := nil;
end;

function TSearchForm.GetSearchBackwards: Boolean;
begin
  Result := DirectGrp.ItemIndex = 1;
end;

function TSearchForm.GetSearchCaseSensitive: Boolean;
begin
  Result := CaseSentChk.Checked;
end;

function TSearchForm.GetSearchFromCursor: Boolean;
begin
  Result := FromCaretChk.Checked;
end;

function TSearchForm.GetSearchInSelection: Boolean;
begin
  Result := InSelChk.Checked;
end;

function TSearchForm.GetSearchRegularExpression: Boolean;
begin
  Result := RegExpChk.Checked;
end;

function TSearchForm.GetSearchText: string;
begin
  Result := ComboBox1.Text;
end;

function TSearchForm.GetSearchTextHistory: string;
var
  i: integer;
begin
  Result := '';
  for i := 0 to ComboBox1.Items.Count - 1 do begin
    if i >= 10 then Break;
    if i > 0 then Result := Result + #13#10;
    Result := Result + ComboBox1.Items[i];
  end;
end;

function TSearchForm.GetSearchWholeWords: Boolean;
begin
  Result := WholeWordChk.Checked;
end;

function TSearchForm.GetSearchCycle: Boolean;
begin
  Result := CycleChk.Checked;
end;

procedure TSearchForm.SetSearchBackwards(Value: Boolean);
begin
  DirectGrp.ItemIndex := Ord(Value);
end;

procedure TSearchForm.SetSearchCaseSensitive(Value: Boolean);
begin
  CaseSentChk.Checked := Value;
end;

procedure TSearchForm.SetSearchFromCursor(Value: Boolean);
begin
  FromCaretChk.Checked := Value;
end;

procedure TSearchForm.SetSearchInSelection(Value: Boolean);
begin
  InSelChk.Checked := Value;
end;

procedure TSearchForm.SetSearchText(Value: string);
begin
  ComboBox1.Text := Value;
end;

procedure TSearchForm.SetSearchTextHistory(Value: string);
begin
  ComboBox1.Items.Text := Value;
end;

procedure TSearchForm.SetSearchWholeWords(Value: Boolean);
begin
  WholeWordChk.Checked := Value;
end;

procedure TSearchForm.SetSearchCycle(Value: Boolean);
begin
  CycleChk.Checked := Value;
end;

procedure TSearchForm.Tmr1Timer(Sender: TObject);
begin
  OkBtn.Enabled := not (ComboBox1.Text = '');
end;

procedure TSearchForm.SetSearchRegularExpression(const Value: Boolean);
begin
  RegExpChk.Checked := Value;
end;

procedure TSearchForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  s: string;
  i: integer;
begin
  if ModalResult = mrOk then begin
    s := ComboBox1.Text;
    i := ComboBox1.Items.IndexOf(s);
    if i > -1 then begin
      ComboBox1.Items.Delete(i);
      ComboBox1.Items.Insert(0, s);
      ComboBox1.Text := s;
    end else ComboBox1.Items.Insert(0, s);
    if ComboBox1.Items.Count > 10 then for I := 10 to ComboBox1.Items.Count - 1
    do ComboBox1.Items.Delete(i);
  end;
end;

end.
