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


The Original Code is listfolderplugin.dpr by Alexey Tatuyko,
released 2010-11-14.
All Rights Reserved.

$Id: listfolderplugin.dpr, v 0.0.6.60 2010/11/14 11:12:00 tatuich Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

library listfolderplugin;

uses
  FastMM4,
  {$IFNDEF VER210}
  VCLFixPack,
  {$ENDIF}
  Windows,
  SysUtils,
  Classes,
  {$IFNDEF UNICODE}
  WideStrings,
  {$ENDIF}
  ShlObj,
  IniFiles;

{$R *.res}

{functions to be exported}

// plugin type
//
// available types:
//
// BE_EDIT_ALLTEXT, {v2.0.2.60 or later required}
// BE_EDIT_SELTEXT  {v2.0.0.23 or later required}
//
{$IFDEF UNICODE}
function BirEditPlugType: PChar;
{$ELSE}
function BirEditPlugType: PWideChar;
{$ENDIF}
begin
  BirEditPlugType := 'BE_EDIT_SELTEXT';
end;

// plugin name
{$IFDEF UNICODE}
function BirEditPlugName: PChar;
{$ELSE}
function BirEditPlugName: PWideChar;
{$ENDIF}
begin
  BirEditPlugName := 'List Folder';
end;

// function BirEditPlugExec(a: TObject): Boolean;
// only TStrings/TWideStrings supported for now (BirEdit v2.0.0.16)
{$IFDEF UNICODE}
function BirEditPlugExec(bestr: TStrings): Boolean;
{$ELSE}
function BirEditPlugExec(bestr: TWideStrings): Boolean;
{$ENDIF}
var
  BrowseInfo: TBrowseInfo;
  Buffer: array [0..MAX_PATH] of Char;
  ItemIDList: PItemIDList;
  temp: string;
  {$IFDEF UNICODE}
  tmpst: TStrings;
  {$ELSE}
  tmpst: TWideStrings;
  {$ENDIF}
  sini: TIniFile;

  opts: record
    nfb, odr, ssf: Boolean;
  end;

  procedure MyScanDir(MyDir: string);
  var
    mys: TSearchRec;
  begin
    MyDir := IncludeTrailingPathDelimiter(MyDir);
    if FindFirst(MyDir + '*', faAnyFile, mys) = 0 then repeat
      if (mys.Name = '.') or (mys.Name = '..') then Continue;
      if opts.odr then begin
        if (mys.Attr and faDirectory) <> 0 then begin
          tmpst.Add(MyDir + mys.Name);
          if opts.ssf then MyScanDir(MyDir + mys.Name);
        end else Continue;
      end else begin
        if not ((mys.Attr and faDirectory) <> 0)
        then tmpst.Add(MyDir + mys.Name) else
        if opts.ssf then MyScanDir(MyDir + mys.Name);
      end;
    until FindNext(mys) <> 0;
    FindClose(mys);
  end;

begin
  sini :=
    TIniFile.Create(ExtractFilePath(ParamStr(0))
                      + '\plugins\listfolderplugin.ini');
  try
    opts.nfb := sini.ReadBool('options', 'newfolderbutton', False);
    opts.odr := sini.ReadBool('options', 'onlydirslist', False);
    opts.ssf := sini.ReadBool('options', 'scansubfolders', False);
  finally
    FreeAndNil(sini);
  end;
  try
    FillChar(BrowseInfo, SizeOf(BrowseInfo), 0);
    BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS or BIF_NEWDIALOGSTYLE
      or BIF_UAHINT or BIF_NONEWFOLDERBUTTON;
    if opts.nfb
    then BrowseInfo.ulFlags := BrowseInfo.ulFlags - BIF_NONEWFOLDERBUTTON;
    ItemIDList := SHBrowseForFolder(BrowseInfo);
    if ItemIDList <> nil then begin
      ShGetPathFromIDList(ItemIDList, Buffer);
      temp := Buffer;
      GlobalFreePtr(ItemIDList);
      {$IFDEF UNICODE}
      tmpst := TStringList.Create;
      {$ELSE}
      tmpst := TWideStringList.Create;
      {$ENDIF}
      try
        MyScanDir(temp);
        if tmpst.Count > 0 then bestr.Text := tmpst.Text;
      finally
        FreeAndNil(tmpst);
      end;
    end;
  finally
    BirEditPlugExec := True;
  end;
end;

exports
  BirEditPlugType, BirEditPlugName, BirEditPlugExec;

begin
end.
