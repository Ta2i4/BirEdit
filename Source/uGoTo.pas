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


The Original Code is uGoTo.pas by Alexey Tatuyko, released 2010-10-26.
All Rights Reserved.

$Id: uGoTo.pas, v 2.0.1.42 2010/10/26 04:34:00 tatuich Exp $

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
    procedure FormDestroy(Sender: TObject);
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

procedure TGoToDlg.FormDestroy(Sender: TObject);
begin
  GoToDlg := nil;
end;

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