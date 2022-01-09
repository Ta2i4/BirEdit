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


The Original Code is uGoTo.pas by Aleksey Tatuyko, released 2008-11-07.
All Rights Reserved.

$Id: uGoTo.pas,v 1.1.8.201 2008/11/07 12:28:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
}

unit uGoTo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntForms, StdCtrls, TntStdCtrls, Mask, JvExMask, JvSpin;

type
  TGoToDlg = class(TTntForm)
    LineLbl: TTntLabel;
    JvSpinEdit1: TJvSpinEdit;
    OkBtn: TTntButton;
    procedure JvSpinEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  end;

var
  GoToDlg: TGoToDlg;

implementation

{$R *.DFM}

procedure TGoToDlg.JvSpinEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=27 then ModalResult:=mrCancel;
end;

end.