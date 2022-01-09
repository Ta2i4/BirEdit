{-------------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: dlgSearchText.pas, released 2000-06-23.

The Original Code is part of the SearchReplaceDemo project, written by
Michael Hieke for the SynEdit component suite.
Last modifications by Aleksey Tatuyko are Copyright (C) 2008 Aleksey Tatuyko.
All Rights Reserved.

Contributors to the SynEdit project are listed in the Contributors.txt file.

Alternatively, the contents of this file may be used under the terms of the
GNU General Public License Version 2 or later (the "GPL"), in which case
the provisions of the GPL are applicable instead of those above.
If you wish to allow use of your version of this file only under the terms
of the GPL and not to allow others to use your version of this file
under the MPL, indicate your decision by deleting the provisions above and
replace them with the notice and other provisions required by the GPL.
If you do not delete the provisions above, a recipient may use your version
of this file under either the MPL or the GPL.

$Id: dlgSearchText.pas,v 1.3.1 2008/10/17 08:46:10 rmay Exp $

You may retrieve the latest version of this file at the SynEdit home page,
located at http://SynEdit.SourceForge.net


Changes in original code by Aleksey Tatuyko:

2008/10/17 v 1.3.1
- using TNT Unicode Controls



Known Issues:
-------------------------------------------------------------------------------}

unit Unit4;

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
