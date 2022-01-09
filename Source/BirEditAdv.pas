{-------------------------------------------------------------------------------
BirEdit text editor.
Copyright (C) 2008 Aleksey Tatuyko

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


The Original Code is BirEditAdv.pas by Aleksey Tatuyko, released 2008-11-05.
All Rights Reserved.

$Id: BirEditAdv.pas,v 1.1.7.199 2008/11/05 12:31:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
 }

unit BirEditAdv;

interface

uses
  Windows, TntWindows, SysUtils, TntSysUtils, ShellAPI, uMainFrm;

  function MyBytesToStr(const i64Size: Int64):WideString;
  procedure MyShowFilePropertiesW(filename:TWideFileName);

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

procedure MyShowFilePropertiesW(filename:TWideFileName);
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
