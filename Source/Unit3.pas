{-------------------------------------------------------------------------------
Copyright (C) 2008 Aleksey Tatuyko

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.


The Original Code is Unit3.pas by Aleksey Tatuyko, released 2008-06-02.
All Rights Reserved.

$Id: Unit3.pas,v 1.1.3.137 2008/09/04 08:36:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
 }
 
unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntForms, ExtCtrls, TntExtCtrls, StdCtrls, TntStdCtrls, TntWindows;

type
  TAbout = class(TTntForm)
    TntImage1: TTntImage;
    TntLabel1: TTntLabel;
    TntLabel2: TTntLabel;
    btn1: TTntButton;
    TntLabel4: TTntLabel;
    TntMemo1: TTntMemo;
    TntLabel3: TTntLabel;
    procedure btn1Click(Sender: TObject);
    procedure TntLabel3Click(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  About: TAbout;

implementation

{$R *.DFM}

procedure TAbout.btn1Click(Sender: TObject);
begin
  Close;
end;

procedure TAbout.TntFormCreate(Sender: TObject);
begin
  Caption:='About...';
  btn1.Caption:='OK';
  TntLabel1.Caption:='BirEdit 1.1.3';
  TntLabel2.Caption:='Copyright (C) 2008 Aleksey Tatuyko';
  TntLabel3.Caption:='http://biredit.fireforge.net/';
  TntLabel4.Caption:='Build 137';
  TntMemo1.Text:='Author:'
  +#13#10+'  Aleksey Tatuyko'
  +#13#10+#13#10+'Libs used:'
  +#13#10+'  Unicode SynEdit, by Michael Hieke'
  +#13#10+'  TNT Unicode Controls, by Troy Wolbrink'
  +#13#10+'  JVCL, by JEDI group'
  +#13#10+#13#10+'Thanks to:'
  +#13#10+'  CodeGear for Delphi 2007'
  +#13#10+'  CnPack Team for IDE Wizards'
  +#13#10#13#10#13#10+'The author would like to thank everybody, who use this program.';
end;

procedure TAbout.TntLabel3Click(Sender: TObject);
begin
  Tnt_ShellExecuteW(Self.Handle,'open','http://biredit.fireforge.net/',nil,nil,SW_SHOWNORMAL);
end;

end.
