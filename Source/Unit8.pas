{-------------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: dlgConfirmReplace.dpr, released 2000-06-23.

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

$Id: dlgConfirmReplace.pas,v 1.3.1 2008/10/17 17:47:56 rmay Exp $

You may retrieve the latest version of this file at the SynEdit home page,
located at http://SynEdit.SourceForge.net

Changes in original code by Aleksey Tatuyko:

2008/10/17 v 1.3.1
- using TNT Unicode Controls



Known Issues:
-------------------------------------------------------------------------------}

unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntForms, ExtCtrls, TntExtCtrls, StdCtrls, TntStdCtrls, SynUnicode;

type
  TConfirmReplace = class(TTntForm)
    TntImage1: TTntImage;
    TntLabel1: TTntLabel;
    TntButton1: TTntButton;
    TntButton2: TTntButton;
    TntButton3: TTntButton;
    TntButton4: TTntButton;
    procedure TntFormCreate(Sender: TObject);
    procedure TntFormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareShow(AEditorRect:TRect; X,Y1,Y2:integer);
  end;

var
  ConfirmReplace: TConfirmReplace;

implementation

{$R *.DFM}

procedure TConfirmReplace.TntFormCreate(Sender: TObject);
begin
  TntImage1.Picture.Icon.Handle:=LoadIconW(0,PWideChar(IDI_QUESTION));
end;

procedure TConfirmReplace.TntFormDestroy(Sender: TObject);
begin
  ConfirmReplace:=nil;
end;

procedure TConfirmReplace.PrepareShow(AEditorRect:TRect; X,Y1,Y2:integer);
var nW,nH:integer;
begin
  nW:=AEditorRect.Right-AEditorRect.Left;
  nH:=AEditorRect.Bottom-AEditorRect.Top;
  if nW<=Width
  then X:=AEditorRect.Left-(Width-nW)div 2
  else if X+Width>AEditorRect.Right then X:=AEditorRect.Right-Width;
  if Y2>AEditorRect.Top+MulDiv(nH,2,3)
  then Y2:=Y1-Height-4
  else Inc(Y2,4);
  SetBounds(X,Y2,Width,Height);
end;

end.