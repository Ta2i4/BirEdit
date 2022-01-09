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


The Original Code is uPrintPreview.pas by Aleksey Tatuyko, released 2008-11-05.
All Rights Reserved.

$Id: uPrintPreview.pas,v 1.1.7.199 2008/11/05 12:38:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
 }
 
unit uPrintPreviewDlg;

interface

uses
  Messages, Classes, Controls, TntSysUtils, TntClasses, TntGraphics, TntControls,
  TntDialogs, TntWindows, TntForms, SynEditPrintPreview, StdCtrls,
  TntStdCtrls, SysUtils, ExtCtrls, TntExtCtrls;

type
  TPreview = class(TTntForm)
    SynEditPrintPreview: TSynEditPrintPreview;
    TntButton1: TTntButton;
    TntPanel1: TTntPanel;
    TntButton2: TTntButton;
    TntButton3: TTntButton;
    TntButton4: TTntButton;
    TntButton5: TTntButton;
    TntLabel1: TTntLabel;
    TntButton6: TTntButton;
    procedure TntButton1Click(Sender: TObject);
    procedure TntButton2Click(Sender: TObject);
    procedure TntButton3Click(Sender: TObject);
    procedure TntButton4Click(Sender: TObject);
    procedure TntButton5Click(Sender: TObject);
    procedure TntFormShow(Sender: TObject);
    procedure TntFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  end;

var
  Preview: TPreview;

implementation

{$R *.DFM}

procedure TPreview.TntButton1Click(Sender: TObject);
begin
  SynEditPrintPreview.NextPage;
  TntLabel1.Caption:=IntToStr(SynEditPrintPreview.PageNumber)+'/'+IntToStr(SynEditPrintPreview.PageCount);
end;

procedure TPreview.TntButton2Click(Sender: TObject);
begin
  SynEditPrintPreview.PreviousPage;
  TntLabel1.Caption:=IntToStr(SynEditPrintPreview.PageNumber)+'/'+IntToStr(SynEditPrintPreview.PageCount);
end;

procedure TPreview.TntButton3Click(Sender: TObject);
begin
  SynEditPrintPreview.LastPage;
  TntLabel1.Caption:=IntToStr(SynEditPrintPreview.PageNumber)+'/'+IntToStr(SynEditPrintPreview.PageCount);
end;

procedure TPreview.TntButton4Click(Sender: TObject);
begin
  SynEditPrintPreview.FirstPage;
  TntLabel1.Caption:=IntToStr(SynEditPrintPreview.PageNumber)+'/'+IntToStr(SynEditPrintPreview.PageCount);
end;

procedure TPreview.TntButton5Click(Sender: TObject);
begin
  SynEditPrintPreview.Print;
end;

procedure TPreview.TntFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then // Escape
    ModalResult:=mrOk;
end;

procedure TPreview.TntFormShow(Sender: TObject);
begin
  SynEditPrintPreview.FirstPage;
  TntLabel1.Caption:=IntToStr(SynEditPrintPreview.PageNumber)+'/'+IntToStr(SynEditPrintPreview.PageCount);
end;

end.
