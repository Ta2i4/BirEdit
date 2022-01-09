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


The Original Code is BirEdit.dpr by Aleksey Tatuyko, released 2008-06-02.
All Rights Reserved.

$Id: BirEdit.dpr,v 1.1.3.135 2008/09/02 11:21:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
 }

program BirEdit;

uses
  Forms,
  SysUtils,
  BirIniFiles,
  TntForms,
  TntSysUtils,
  TntMenus,
  Unit1 in 'Unit1.pas' {Editor: TTntForm},
  Unit2 in 'Unit2.pas' {Preview: TTntForm},
  Unit3 in 'Unit3.pas' {About: TTntForm},
  Unit6 in 'Unit6.pas' {SelIns: TTntForm},
  Unit7 in 'Unit7.pas' {TabOpt: TTntForm};

{$R *.res}
{$R fileicon.res}

begin
  Application.Initialize;
  TntApplication.Title:='BirEdit';
  Application.MainFormOnTaskBar:=True; //Delphi 2007 option. Maybe, it's not compatible with Delphi 7.
  Application.CreateForm(TEditor, Editor);
  Application.CreateForm(TPreview, Preview);
  Application.CreateForm(TSelIns, SelIns);
  Application.CreateForm(TTabOpt, TabOpt);
  Application.CreateForm(TAbout, About);
  Application.Run;
end.
