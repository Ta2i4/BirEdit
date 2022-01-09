{-------------------------------------------------------------------------------
BirEdit text editor.
Copyright (C) 2008-2011 Alexey Tatuyko

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


The Original Code is BirEdit.dpr by Alexey Tatuyko, released 2011-09-10.
All Rights Reserved.

$Id: BirEdit.dpr, v 2.1.0.90 2011/09/10 04:56:00 tatuich Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

program BirEdit;

{$SetPEFlags $20}

uses
  FastMM4,
  IniFiles,
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

procedure CreateBEType;
var
  b: Boolean;
  i: Integer;
  c: TIniFile;
  a: TRegistry;
begin
  c :=
      TIniFile.Create(IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))
                        + 'profile.ini');
  if c.ReadInteger('settings', 'saveplace', 2) <> 2 then begin
    a := TRegistry.Create(KEY_ALL_ACCESS);
    try
      a.RootKey := HKEY_CLASSES_ROOT;
      b := a.OpenKey('BirEdit.File', True);
      if b then begin
        a.WriteString('', 'BirEdit File');
        a.WriteString('FriendlyTypeName', 'BirEdit File');
        b := a.OpenKey('DefaultIcon', True);
      end;
      if b then a.WriteExpandString('',
                      IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))
                                      + ExtractFileName(ParamStr(0)) + ',1');
      a.CloseKey;
      b := a.OpenKey('BirEdit.File\shell', True);
      if b then b := a.OpenKey('open', True);
      if b then b := a.OpenKey('command', True);
      if b then begin
        a.WriteExpandString('', '"'
                    + IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))
                              + ExtractFileName(ParamStr(0)) + '" "%1"');
      end;
      a.CloseKey;
      b := a.OpenKey('BirEdit.File\shell\print', True);
      if b then b := a.OpenKey('command', True);
      if b then begin
        a.WriteExpandString('', '"'
                    + IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))
                              + ExtractFileName(ParamStr(0)) + '" /p "%1"');
      end;
      a.CloseKey;
      b := a.OpenKey('Applications', True);
      if b then b := a.OpenKey('biredit.exe', True);
      if b then b := a.OpenKey('DefaultIcon', True);
      if b
      then a.WriteString('', '"' +
                      IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))
                                + ExtractFileName(ParamStr(0)) + '"');
      a.CloseKey;
      b := a.OpenKey('Applications\biredit.exe\shell', True);
      if b then b := a.OpenKey('open', True);
      if b
      then b := a.OpenKey('command', True);
      if b
      then a.WriteString('', '"' +
                      IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))
                           + ExtractFileName(ParamStr(0)) + '" "%1"');
      a.CloseKey;
      b := a.OpenKey('Applications\biredit.exe\shell\print', True);
      if b then b := a.OpenKey('command', True);
      if b then begin
        a.WriteExpandString('', '"'
                    + IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))
                              + ExtractFileName(ParamStr(0)) + '" /p "%1"');
      end;
      a.CloseKey;
      b := a.OpenKey('Applications\biredit.exe\SupportedTypes', True);
      if b then for I := 0 to 91 do a.WriteString(BEFileExtensions[i], '');
      a.CloseKey;
    finally
      FreeAndNil(a);
    end;
  end;
  FreeAndNil(c);
end;

begin
  Application.Initialize;
  CreateBEType;
  Application.Title := 'BirEdit';
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
