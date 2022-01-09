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


The Original Code is BirEdit.dpr by Aleksey Tatuyko, released 2008-10-17.
All Rights Reserved.

$Id: BirEdit.dpr,v 1.1.6.180 2008/10/17 08:45:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
 }

program BirEdit;

uses
  Forms,
  TntForms,
  Unit1 in 'Unit1.pas' {Editor: TTntForm};

{$R *.res}
{$R fileicon.res}

begin
  Application.Initialize;
  TntApplication.Title:='BirEdit';
  Application.MainFormOnTaskBar:=True; 
  Application.CreateForm(TEditor, Editor);
  Application.Run;
end.
