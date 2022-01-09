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

You can contact with me by e-mail: tatuich@mail.ru


The Original Code is BirEdit.dpr by Aleksey Tatuyko, released 2009-05-25.
All Rights Reserved.

$Id: uAboutDlg.pas, v 1.2.2.400 2009/05/25 00:06:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://fireforge.net/projects/biredit/

}
 
unit uAboutDlg;

interface

uses
  Windows, Forms, ShellAPI, uMainFrm, Classes, Controls, ExtCtrls, StdCtrls;

type
  TAbout = class(TForm)
    Image1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    btn1: TButton;
    procedure lbl5Click(Sender: TObject);
    procedure lbl7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  end;

implementation

{$R *.DFM}

procedure TAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AnimateWindow(Self.Handle, 200, AW_HIDE or AW_BLEND);
end;

procedure TAbout.FormShow(Sender: TObject);
var
  x, y: Integer;
begin
  x := ((Editor.Width - Width) div 2) + Editor.Left;
  y := ((Editor.Height - Height) div 2) + Editor.Top;
  if x < Screen.DesktopLeft then x := Screen.DesktopLeft;
  if y < Screen.DesktopTop then y := Screen.DesktopTop;
  SetBounds(x, y, Width, Height);
  AnimateWindow(Self.Handle, 200, AW_ACTIVATE or AW_BLEND);
end;

procedure TAbout.lbl5Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', 'http://fireforge.net/projects/biredit/',
                 nil, nil, SW_SHOWNORMAL);
end;

procedure TAbout.lbl7Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', 'http://biredit.freeforums.org/',
                 nil, nil, SW_SHOWNORMAL);
end;

end.
