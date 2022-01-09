{-------------------------------------------------------------------------------
BirEdit text editor.
Copyright (C) 2008-2011 Alexey Tatuyko

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


The Original Code is uDropped.pas by Alexey Tatuyko, released 2011-12-23.
All Rights Reserved.

$Id: uDropped.pas, v 2.1.1.104 2011/12/23 01:14:00 tatuich@gmail.com Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

unit uDropped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, Menus, JvTimer, JvComponentBase, JvDragDrop;

type
  TDropDlg = class(TForm)
    ChkLst: TCheckListBox;
    BtnOpen: TButton;
    PopM: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    JvTmr: TJvTimer;
    dragdrop1: TJvDragDrop;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure JvTmrTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  end;

var
  DropDlg: TDropDlg;

implementation

uses uMainFrm;

{$R *.dfm}

procedure TDropDlg.FormDestroy(Sender: TObject);
begin
  DropDlg := nil;
end;

procedure TDropDlg.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then ModalResult := mrCancel;
end;

procedure TDropDlg.JvTmrTimer(Sender: TObject);
var
  a, b: Boolean;
  i:    Integer;
begin
  a := False;
  b := False;
  for I := 0 to ChkLst.Count - 1 do begin
    if ChkLst.Checked[i] = True then a := True;
    if ChkLst.Checked[i] = False then b := True;
  end;
  BtnOpen.Enabled := a;
  N2.Enabled := a;
  N1.Enabled := b;
  N3.Enabled := a and b;
end;

procedure TDropDlg.N1Click(Sender: TObject);
begin
  ChkLst.CheckAll(cbChecked);
end;

procedure TDropDlg.N2Click(Sender: TObject);
begin
  ChkLst.CheckAll(cbUnchecked);
end;

procedure TDropDlg.N3Click(Sender: TObject);
var
  i: Integer;
begin
  for I := 0 to ChkLst.Count - 1 do ChkLst.Checked[i] := not ChkLst.Checked[i];
end;

end.

