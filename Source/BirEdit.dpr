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


The Original Code is BirEdit.dpr by Alexey Tatuyko, released 2010-01-07.
All Rights Reserved.

$Id: BirEdit.dpr, v 1.3.4.627 2010/01/07 03:47:00 ta2i4 Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.fireforge.net/

}

program BirEdit;

{$SetPEFlags $20}

uses
  FastMM4,
  Registry,
  Windows,
  SysUtils,
  Forms,
  uMainFrm in 'uMainFrm.pas' {Main: TForm},
  uAboutDlg in 'uAboutDlg.pas' {About},
  uConfirmReplaceDlg in 'uConfirmReplaceDlg.pas' {ConfirmReplace},
  uEncloseSelDlg in 'uEncloseSelDlg.pas' {SelIns},
  uGoTo in 'uGoTo.pas' {GoToDlg},
  uReplaceDlg in 'uReplaceDlg.pas',
  uSearchDlg in 'uSearchDlg.pas' {SearchForm},
  uSettingsDlg in 'uSettingsDlg.pas' {SettingsDlg},
  uDropped in 'uDropped.pas' {DropDlg},
  uPrintPreview in 'uPrintPreview.pas' {PreviewDlg},
  uFileAssocDlg in 'uFileAssocDlg.pas' {FAssoc};

{$R *.res}
{$R fileicon.res}

var
  a: TRegistry;
  b: Boolean;

begin
  Application.Initialize;
  a := TRegistry.Create(KEY_ALL_ACCESS);
  try
    a.RootKey := HKEY_CLASSES_ROOT;
    b := a.OpenKey('BirEdit.File', True);
    if b then begin
      a.WriteString('', 'BirEdit File');
      b := a.OpenKey('DefaultIcon', True);
    end;
    if b then begin
      a.WriteExpandString('',
              IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName))
                            + ExtractFileName(Application.ExeName) + '1');
      b := a.OpenKey('shell', True);
    end;
    if b then b := a.OpenKey('open', True);
    if b then b := a.OpenKey('command', True);
    if b then begin
      a.WriteExpandString('', '"'
            + IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName))
                          + ExtractFileName(Application.ExeName) + '" "%1"');
    end;
    a.CloseKey;
  finally
    a.Free;
  end;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'BirEdit';
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
