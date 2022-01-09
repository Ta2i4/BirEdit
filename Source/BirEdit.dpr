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

You can contact with me by e-mail: tatuich@mail.ru


The Original Code is BirEdit.dpr by Aleksey Tatuyko, released 2009-05-31.
All Rights Reserved.

$Id: BirEdit.dpr, v 1.2.4.406 2009/05/31 07:58:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://fireforge.net/projects/biredit/

}

program BirEdit;

{$SetPEFlags $20}

uses
  FastMM4,
  VCLFixPack,
  Forms,
  uMainFrm in 'uMainFrm.pas' {Main: TForm},
  BirEditAdv in 'BirEditAdv.pas',
  uAboutDlg in 'uAboutDlg.pas' {About},
  uConfirmReplaceDlg in 'uConfirmReplaceDlg.pas' {ConfirmReplace},
  uEncloseSelDlg in 'uEncloseSelDlg.pas' {SelIns},
  uGoTo in 'uGoTo.pas' {GoToDlg},
  uPrintPreviewDlg in 'uPrintPreviewDlg.pas' {Preview},
  uReplaceDlg in 'uReplaceDlg.pas',
  uSearchDlg in 'uSearchDlg.pas' {SearchForm},
  uSettingsDlg in 'uSettingsDlg.pas' {SettingsDlg};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'BirEdit';
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
