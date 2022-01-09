{-------------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: dlgReplaceText.pas, released 2000-06-23.

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

$Id: dlgReplaceText.pas,v 1.3.1 2008/10/17 10:34:25 rmay Exp $

You may retrieve the latest version of this file at the SynEdit home page,
located at http://SynEdit.SourceForge.net


Changes in original code by Aleksey Tatuyko:

2008/10/17 v 1.3.1
- using TNT Unicode Controls



Known Issues:
-------------------------------------------------------------------------------}

unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntForms, Unit4, StdCtrls, TntStdCtrls, TntExtCtrls, SynUnicode;

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
  Result:='';
  for i:=0 to TntComboBox2.Items.Count-1 do begin
    if i>=10 then break;
    if i>0 then Result:=Result+#13#10;
    Result:=Result+TntComboBox2.Items[i];
  end;
end;

procedure TReplaceForm.SetReplaceText(Value: UnicodeString);
begin
  //TntComboBox2.Text := Value;
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