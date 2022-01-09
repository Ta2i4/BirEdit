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

You can contact with me by e-mail: tatuich@gmail.com


The Original Code is uConfirmReplaceDlg.pas by Aleksey Tatuyko, released 2009-08-01.
All Rights Reserved.

$Id: uConfirmReplaceDlg.pas, v 1.3.1.468 2009/08/01 11:55:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

unit uConfirmReplaceDlg;

interface

uses
  Windows, Forms, Classes, Controls, ExtCtrls, StdCtrls;

type
  TConfirmReplace = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  public
    procedure PrepareShow(AEditorRect: TRect; X, Y1, Y2: integer);
  end;

var
  ConfirmReplace: TConfirmReplace;

implementation

{$R *.DFM}

procedure TConfirmReplace.FormCreate(Sender: TObject);
begin
  Image1.Picture.Icon.Handle := LoadIcon(0, PChar(IDI_QUESTION));
end;

procedure TConfirmReplace.FormDestroy(Sender: TObject);
begin
  ConfirmReplace := nil;
end;

procedure TConfirmReplace.PrepareShow(AEditorRect: TRect; X, Y1, Y2: integer);
var
  nW, nH: integer;
begin
  nW := AEditorRect.Right - AEditorRect.Left;
  nH := AEditorRect.Bottom - AEditorRect.Top;
  if nW <= Width
  then X := AEditorRect.Left - (Width - nW) div 2
  else if X + Width > AEditorRect.Right then X := AEditorRect.Right - Width;
  if Y2 > AEditorRect.Top + MulDiv(nH, 2, 3)
  then Y2 := Y1 - Height - 4
  else Inc(Y2, 4);
  SetBounds(X, Y2, Width, Height);
end;

end.