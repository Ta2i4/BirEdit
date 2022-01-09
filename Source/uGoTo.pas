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


The Original Code is uGoTo.pas by Aleksey Tatuyko, released 2009-08-01.
All Rights Reserved.

$Id: uGoTo.pas, v 1.3.1.468 2009/08/01 11:58:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

unit uGoTo;

interface

uses
  Windows, Forms, Classes, Controls, StdCtrls, Mask, JvExMask, JvSpin;

type
  TGoToDlg = class(TForm)
    LineLbl: TLabel;
    Spin1: TJvSpinEdit;
    OkBtn: TButton;
    ChrLbl: TLabel;
    Spin2: TJvSpinEdit;
    procedure Spin1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    function GetLineXY: TPoint;
    procedure SetMaxXY(Value: TPoint);
    procedure SetLineXY(Value: TPoint);
  public
    property CaretXY: TPoint read GetLineXY write SetLineXY;
    property MaxXY: TPoint write SetMaxXY;
  end;

var
  GoToDlg: TGoToDlg;

implementation

{$R *.DFM}

function TGoToDlg.GetLineXY: TPoint;
begin
  Result := Point(Spin2.AsInteger, Spin1.AsInteger);
end;

procedure TGoToDlg.SetLineXY(Value: TPoint);
begin
  Spin1.AsInteger := Value.Y;
  Spin2.AsInteger := Value.X;
end;

procedure TGoToDlg.SetMaxXY(Value: TPoint);
begin
  Spin1.MaxValue := Value.X;
  Spin2.MaxValue := Value.Y;
end;

procedure TGoToDlg.Spin1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then ModalResult := mrCancel;
end;

end.