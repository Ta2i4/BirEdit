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


The Original Code is uEncloseSelDlg.pas by Alexey Tatuyko, released 2010-10-26.
All Rights Reserved.

$Id: uEncloseSelDlg.pas, v 2.0.1.42 2010/10/26 04:33:00 tatuich Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}
 
unit uEncloseSelDlg;

interface

uses
  Forms, StdCtrls, Classes, Controls;

type
  TSelIns = class(TForm)
    BeforeLbl: TLabel;
    AfterLbl: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    OkBtn: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  end;

var
  SelIns: TSelIns;

implementation

{$R *.DFM}

procedure TSelIns.Edit1Change(Sender: TObject);
begin
  OkBtn.Enabled := (not (Edit1.Text = '')) or (not (Edit2.Text = ''));
end;

procedure TSelIns.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then ModalResult := mrCancel;
end;

procedure TSelIns.FormDestroy(Sender: TObject);
begin
  SelIns := nil;
end;

end.
