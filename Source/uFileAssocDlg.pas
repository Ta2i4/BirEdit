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


The Original Code is uFileAssocDlg.pas by Alexey Tatuyko, released 2010-10-26.
All Rights Reserved.

$Id: uFileAssocDlg.pas, v 2.0.1.42 2010/10/26 04:33:00 tatuich Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

unit uFileAssocDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, CheckLst, Menus;

type
  TFAssoc = class(TForm)
    chklst1: TCheckListBox;
    popup1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    btn1: TButton;
    btn2: TButton;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  end;

var
  FAssoc: TFAssoc;

implementation

{$R *.dfm}

procedure TFAssoc.FormDestroy(Sender: TObject);
begin
  FAssoc := nil;
end;

procedure TFAssoc.N1Click(Sender: TObject);
{$IFNDEF VER210}
var
  i: Integer;
{$ENDIF}
begin
  {$IFNDEF VER210}
    for i := 0 to chklst1.Count - 1 do chklst1.Checked[i] := True;
  {$ELSE}
    chklst1.CheckAll(cbChecked);
  {$ENDIF}
end;

procedure TFAssoc.N2Click(Sender: TObject);
{$IFNDEF VER210}
var
  i: Integer;
{$ENDIF}
begin
  {$IFNDEF VER210}
    for i := 0 to chklst1.Count - 1 do chklst1.Checked[i] := False;
  {$ELSE}
    chklst1.CheckAll(cbUnchecked);
  {$ENDIF}
end;

procedure TFAssoc.N3Click(Sender: TObject);
var
  i: Integer;
begin
  for I := 0 to chklst1.Count - 1
  do chklst1.Checked[i] := not chklst1.Checked[i];
end;

end.
