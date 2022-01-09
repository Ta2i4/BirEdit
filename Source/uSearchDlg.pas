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


The Original Code is: dlgSearchText.pas, released 2000-06-23.

The Original Code is part of the SearchReplaceDemo project, written by
Michael Hieke for the SynEdit component suite.
Using TNT Unicode Controls by Aleksey Tatuyko.
All Rights Reserved.

Contributors to the SynEdit project are listed in the Contributors.txt file.

$Id: uSearchDlg.pas,v 1.3 2008/11/05 12:38:10 rmay Exp $

You may retrieve the latest version of this file at the SynEdit home page,
located at http://SynEdit.SourceForge.net



Known Issues:
-------------------------------------------------------------------------------}

unit uSearchDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntForms, StdCtrls, TntStdCtrls, TntExtCtrls, SynUnicode;

type
  TSearchForm = class(TTntForm)
    TntLabel1: TTntLabel;
    TntComboBox1: TTntComboBox;
    TntGroupBox1: TTntGroupBox;
    TntCheckBox1: TTntCheckBox;
    TntCheckBox2: TTntCheckBox;
    TntCheckBox3: TTntCheckBox;
    TntCheckBox4: TTntCheckBox;
    TntCheckBox5: TTntCheckBox;
    TntRadioGroup1: TTntRadioGroup;
    TntButton1: TTntButton;
    TntButton2: TTntButton;
    procedure TntFormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    function GetSearchBackwards: boolean;
    function GetSearchCaseSensitive: boolean;
    function GetSearchFromCursor: boolean;
    function GetSearchInSelection: boolean;
    function GetSearchText: UnicodeString;
    function GetSearchTextHistory: UnicodeString;
    function GetSearchWholeWords: boolean;
    procedure SetSearchBackwards(Value: boolean);
    procedure SetSearchCaseSensitive(Value: boolean);
    procedure SetSearchFromCursor(Value: boolean);
    procedure SetSearchInSelection(Value: boolean);
    procedure SetSearchText(Value: UnicodeString);
    procedure SetSearchTextHistory(Value: UnicodeString);
    procedure SetSearchWholeWords(Value: boolean);
    procedure SetSearchRegularExpression(const Value: boolean);
    function GetSearchRegularExpression: boolean;
    { Private declarations }
  public
    property SearchBackwards: boolean read GetSearchBackwards write SetSearchBackwards;
    property SearchCaseSensitive: boolean read GetSearchCaseSensitive write SetSearchCaseSensitive;
    property SearchFromCursor: boolean read GetSearchFromCursor write SetSearchFromCursor;
    property SearchInSelectionOnly: boolean read GetSearchInSelection write SetSearchInSelection;
    property SearchText: UnicodeString read GetSearchText write SetSearchText;
    property SearchTextHistory: UnicodeString read GetSearchTextHistory write SetSearchTextHistory;
    property SearchWholeWords: boolean read GetSearchWholeWords write SetSearchWholeWords;
    property SearchRegularExpression: boolean read GetSearchRegularExpression write SetSearchRegularExpression;
    { Public declarations }
  end;

var
  SearchForm: TSearchForm;

implementation

{$R *.DFM}

function TSearchForm.GetSearchBackwards: boolean;
begin
  Result:=TntRadioGroup1.ItemIndex=1;
end;

function TSearchForm.GetSearchCaseSensitive: boolean;
begin
  Result:=TntCheckBox1.Checked;
end;

function TSearchForm.GetSearchFromCursor: boolean;
begin
  Result:=TntCheckBox3.Checked;
end;

function TSearchForm.GetSearchInSelection: boolean;
begin
  Result:=TntCheckBox4.Checked;
end;

function TSearchForm.GetSearchRegularExpression: boolean;
begin
  Result:=TntCheckBox5.Checked;
end;

function TSearchForm.GetSearchText: UnicodeString;
begin
  Result:=TntComboBox1.Text;
end;

function TSearchForm.GetSearchTextHistory: UnicodeString;
var i:integer;
begin
  Result:='';
  for i:=0 to TntComboBox1.Items.Count - 1 do begin
    if i>=10 then break;
    if i>0 then Result:=Result+#13#10;
    Result:=Result+TntComboBox1.Items[i];
  end;
end;

function TSearchForm.GetSearchWholeWords: boolean;
begin
  Result:=TntCheckBox2.Checked;
end;

procedure TSearchForm.SetSearchBackwards(Value: boolean);
begin
  TntRadioGroup1.ItemIndex:=Ord(Value);
end;

procedure TSearchForm.SetSearchCaseSensitive(Value: boolean);
begin
  TntCheckBox1.Checked:=Value;
end;

procedure TSearchForm.SetSearchFromCursor(Value: boolean);
begin
  TntCheckBox3.Checked:=Value;
end;

procedure TSearchForm.SetSearchInSelection(Value: boolean);
begin
  TntCheckBox4.Checked:=Value;
end;

procedure TSearchForm.SetSearchText(Value: UnicodeString);
begin
  TntComboBox1.Text:=Value;
end;

procedure TSearchForm.SetSearchTextHistory(Value: UnicodeString);
begin
  TntComboBox1.Items.Text:=Value;
end;

procedure TSearchForm.SetSearchWholeWords(Value: boolean);
begin
  TntCheckBox2.Checked:=Value;
end;

procedure TSearchForm.SetSearchRegularExpression(const Value: boolean);
begin
  TntCheckBox5.Checked:=Value;
end;

procedure TSearchForm.TntFormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  s: UnicodeString;
  i: integer;
begin
  if ModalResult=mrOk then begin
    s:=TntComboBox1.Text;
    if s<>'' then begin
      i:=TntComboBox1.Items.IndexOf(s);
      if i>-1 then begin
        TntComboBox1.Items.Delete(i);
        TntComboBox1.Items.Insert(0,s);
        TntComboBox1.Text:=s;
      end else TntComboBox1.Items.Insert(0,s);
    end;
  end;
end;

end.
