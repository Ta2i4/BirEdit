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


The Original Code is uPrintPreviewDlg.pas by Aleksey Tatuyko, released 2009-08-01.
All Rights Reserved.

$Id: uPrintPreviewDlg.pas, v 1.3.1.468 2009/08/01 11:59:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}
 
unit uPrintPreviewDlg;

interface

uses
  Forms, SysUtils, Classes, Controls, SynEditPrintPreview, StdCtrls, ExtCtrls;

type
  TPreview = class(TForm)
    SynEditPrintPreview: TSynEditPrintPreview;
    NextBtn: TButton;
    Panel1: TPanel;
    PrevBtn: TButton;
    LastBtn: TButton;
    FirstBtn: TButton;
    PrintBtn: TButton;
    Label1: TLabel;
    CloseBtn: TButton;
    procedure NextBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure LastBtnClick(Sender: TObject);
    procedure FirstBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  end;

var
  Preview: TPreview;

implementation

{$R *.DFM}

procedure TPreview.NextBtnClick(Sender: TObject);
begin
  SynEditPrintPreview.NextPage;
  Label1.Caption := IntToStr(SynEditPrintPreview.PageNumber) + '/'
                      + IntToStr(SynEditPrintPreview.PageCount);
end;

procedure TPreview.PrevBtnClick(Sender: TObject);
begin
  SynEditPrintPreview.PreviousPage;
  Label1.Caption := IntToStr(SynEditPrintPreview.PageNumber) + '/'
                      + IntToStr(SynEditPrintPreview.PageCount);
end;

procedure TPreview.LastBtnClick(Sender: TObject);
begin
  SynEditPrintPreview.LastPage;
  Label1.Caption := IntToStr(SynEditPrintPreview.PageNumber) + '/'
                      + IntToStr(SynEditPrintPreview.PageCount);
end;

procedure TPreview.FirstBtnClick(Sender: TObject);
begin
  SynEditPrintPreview.FirstPage;
  Label1.Caption := IntToStr(SynEditPrintPreview.PageNumber) + '/'
                      + IntToStr(SynEditPrintPreview.PageCount);
end;

procedure TPreview.PrintBtnClick(Sender: TObject);
begin
  SynEditPrintPreview.Print;
end;

procedure TPreview.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then ModalResult := mrOk;
end;

procedure TPreview.FormShow(Sender: TObject);
begin
  SynEditPrintPreview.FirstPage;
  Label1.Caption := IntToStr(SynEditPrintPreview.PageNumber) + '/'
                      + IntToStr(SynEditPrintPreview.PageCount);
end;

end.
