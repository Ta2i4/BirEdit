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

You can contact with me by e-mail: tatuich@mail.ru


The Original Code is: dlgConfirmReplace.dpr, released 2000-06-23.

The Original Code is part of the SearchReplaceDemo project, written by
Michael Hieke for the SynEdit component suite.
Using TNT Unicode Controls by Aleksey Tatuyko.
All Rights Reserved.

Contributors to the SynEdit project are listed in the Contributors.txt file.

$Id: uConfirmReplaceDlg.pas,v 1.3 2008/11/05 12:33:56 rmay Exp $

You may retrieve the latest version of this file at the SynEdit home page,
located at http://SynEdit.SourceForge.net


Known Issues:
-------------------------------------------------------------------------------}

unit uConfirmReplaceDlg;

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