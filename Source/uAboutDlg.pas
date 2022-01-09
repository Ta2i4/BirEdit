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


The Original Code is uAboutDlg.pas by Aleksey Tatuyko, released 2008-11-05.
All Rights Reserved.

$Id: Unit3.pas,v 1.1.7.199 2008/11/05 12:31:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
 }
 
unit uAboutDlg;

interface

uses
  Windows, TntWindows, TntForms, Graphics, Classes, Controls, ExtCtrls,
  TntExtCtrls, StdCtrls, TntStdCtrls;

type
  TAbout = class(TTntForm)
    TntImage1: TTntImage;
    TntLabel1: TTntLabel;
    TntLabel2: TTntLabel;
    btn1: TTntButton;
    TntLabel4: TTntLabel;
    TntMemo1: TTntMemo;
    TntLabel3: TTntLabel;
    procedure TntLabel3Click(Sender: TObject);
    procedure TntFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  end;

var
  About: TAbout;

implementation

{$R *.DFM}

procedure TAbout.TntFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=27 // Escape
  then ModalResult:=mrOk;
end;

procedure TAbout.TntLabel3Click(Sender: TObject);
begin
  Tnt_ShellExecuteW(Self.Handle,'open','http://biredit.fireforge.net/',nil,nil,SW_SHOWNORMAL);
end;

end.
