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


The Original Code is uPrintPreview.pas by Alexey Tatuyko, released 2010-01-01.
All Rights Reserved.

$Id: uPrintPreview.pas, v 1.3.4.621 2010/01/01 12:00:00 ta2i4 Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.fireforge.net/

}

unit uPrintPreview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SynEditPrintPreview, ComCtrls, ImgList, Menus, ToolWin, ActnList,
  AppEvnts, Printers;

type
  TPreviewDlg = class(TForm)
    EditPreview: TSynEditPrintPreview;
    ImageList: TImageList;
    StatBar: TStatusBar;
    ToolBar: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    btn6: TToolButton;
    btn7: TToolButton;
    btn8: TToolButton;
    btn9: TToolButton;
    btn10: TToolButton;
    Popup1: TPopupMenu;
    ActList: TActionList;
    FirstCmd: TAction;
    PrevCmd: TAction;
    NextCmd: TAction;
    ApplicationEvents1: TApplicationEvents;
    LastCmd: TAction;
    ZoomCmd: TAction;
    PrintCmd: TAction;
    CloseCmd: TAction;
    N251: TMenuItem;
    N501: TMenuItem;
    N1001: TMenuItem;
    N2001: TMenuItem;
    N4001: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure EditPreviewMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EditPreviewPreviewPage(Sender: TObject; PageNumber: Integer);
    procedure FirstCmdExecute(Sender: TObject);
    procedure PrevCmdExecute(Sender: TObject);
    procedure NextCmdExecute(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure LastCmdExecute(Sender: TObject);
    procedure ZoomCmdExecute(Sender: TObject);
    procedure PrintCmdExecute(Sender: TObject);
    procedure CloseCmdExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
  end;

var
  PreviewDlg: TPreviewDlg;

implementation

uses uMainFrm;

{$R *.dfm}

procedure TPreviewDlg.PrevCmdExecute(Sender: TObject);
begin
  EditPreview.PreviousPage;
end;

procedure TPreviewDlg.PrintCmdExecute(Sender: TObject);
begin
  EditPreview.Print;
end;

procedure TPreviewDlg.ZoomCmdExecute(Sender: TObject);
begin
  EditPreview.ScalePercent := 100;
  Popup1.Items.Items[2].Checked := True;
end;

procedure TPreviewDlg.ApplicationEvents1Hint(Sender: TObject);
begin
  StatBar.Panels.Items[0].Text := Application.Hint;
end;

procedure TPreviewDlg.CloseCmdExecute(Sender: TObject);
begin
  Close;
end;

procedure TPreviewDlg.EditPreviewMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  FScale: Integer;
begin
  FScale := EditPreview.ScalePercent;
  if Button = mbLeft then begin
    FScale := FScale * 2;
    if FScale > 400 then FScale := 400;
    EditPreview.ScalePercent := FScale;
  end else begin
    FScale := FScale div 2;
    if FScale < 25 then FScale := 25;
    EditPreview.ScalePercent := FScale;
  end;
  case EditPreview.ScalePercent of
    25: Popup1.Items.Items[0].Checked := True;
    50: Popup1.Items.Items[1].Checked := True;
    100: Popup1.Items.Items[2].Checked := True;
    200: Popup1.Items.Items[3].Checked := True;
    400: Popup1.Items.Items[4].Checked := True;
    else Popup1.Items.Items[5].Checked := True;
  end;
end;

procedure TPreviewDlg.EditPreviewPreviewPage(Sender: TObject;
  PageNumber: Integer);
begin
  StatBar.Panels.Items[1].Text := 'Page: ' + IntToStr(EditPreview.PageNumber) + '/' + IntToStr(EditPreview.PageCount);
end;

procedure TPreviewDlg.FirstCmdExecute(Sender: TObject);
begin
  EditPreview.FirstPage;
end;

procedure TPreviewDlg.FormShow(Sender: TObject);
begin
  EditPreview.UpdatePreview;
  if Printer.PrinterIndex >= 0
  then PrintCmd.Hint := Format(PrintCmd.Hint,
                                 [Printer.Printers[Printer.PrinterIndex],
                                 Printer.Printers[Printer.PrinterIndex]]);
end;

procedure TPreviewDlg.LastCmdExecute(Sender: TObject);
begin
  EditPreview.LastPage;
end;

procedure TPreviewDlg.N1Click(Sender: TObject);
begin
  case Popup1.Items.IndexOf((Sender as TMenuItem)) of
    0: EditPreview.ScalePercent := 25;
    1: EditPreview.ScalePercent := 50;
    2: EditPreview.ScalePercent := 100;
    3: EditPreview.ScalePercent := 200;
    4: EditPreview.ScalePercent := 400;
  end;
  Popup1.Items.Items[Popup1.Items.IndexOf(Sender as TMenuItem)].Checked := True;
end;

procedure TPreviewDlg.NextCmdExecute(Sender: TObject);
begin
  EditPreview.NextPage;
end;

end.
