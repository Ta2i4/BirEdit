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


The Original Code is Unit1.pas by Aleksey Tatuyko, released 2008-06-02.
All Rights Reserved.

$Id: Unit1.pas,v 1.1.3.135 2008/09/02 11:21:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
 }

unit BirEditAdv;

interface

uses
  SynUnicode, Windows, TntWindows, SysUtils, TntSysUtils, ShellAPI,
  Unit1;

  function MyBytesToStr(const i64Size: Int64):WideString;
  function MyGetVar(varname:WideString):WideString;
  function MyIsWordBreakChar(AChar: WideChar): Boolean;
  function MyToggleCase(const aStr: WideString): WideString;
  procedure MyShowFilePropertiesW(filename:WideString);

implementation

function MyBytesToStr(const i64Size: Int64):WideString;
const
  i64GB = 1073741824;
  i64MB = 1048576;
  i64KB = 1024;
begin
  if i64Size div i64GB > 0 then Result:= WideFormat('%.2f ' + mysn1, [i64Size / i64GB])
  else if i64Size div i64MB > 0 then Result := WideFormat('%.2f ' + mysn2, [i64Size / i64MB])
  else if i64Size div i64KB > 0 then Result := WideFormat('%.2f ' + mysn3, [i64Size / i64KB])
  else Result := IntToStr(i64Size) + ' ' + mysn4;
end;

function MyIsWordBreakChar(AChar: WideChar): Boolean;
begin
  case AChar of
      #0..#32, '.', ',', ';', ':', '"', '''', '´', '`', '°', '^', '!', '?', '&',
      '$', '@', '§', '%', '#', '~', '[', ']', '(', ')', '{', '}', '<', '>',
      '-', '=', '+', '*', '/', '\', '|':
    Result := True;
  else
    Result := False;
  end;
end;

function MyToggleCase(const aStr: WideString): WideString;
var
  i: Integer;
  sLower: WideString;
begin
  Result := SynWideUpperCase(aStr);
  sLower := SynWideLowerCase(aStr);
  for i := 1 to Length(aStr) do if Result[i] = aStr[i] then Result[i] := sLower[i];
end;

function MyGetVar(varname:WideString):WideString;
var
  buffer: array[0..1024]of WideChar;
  size:Integer;
begin
  size:=GetEnvironmentVariableW(PWideChar(varname),buffer,SizeOf(buffer));
  if size=0 then Result:='' else Result:=widestring(buffer);
end;

procedure MyShowFilePropertiesW(filename:WideString);
var sei: TShellExecuteInfoW;
begin
  FillChar(sei,SizeOf(sei),0);
  sei.cbSize:=SizeOf(sei);
  sei.lpFile:=PWideChar(filename);
  sei.lpVerb:='properties';
  sei.fMask:=SEE_MASK_INVOKEIDLIST;
  ShellExecuteExW(@sei);
end;

end.
