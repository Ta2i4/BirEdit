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


The Original Code is BirEdit.dpr by Aleksey Tatuyko, released 2009-05-24.
All Rights Reserved.

$Id: BirEditAdv.pas, v 1.2.1.399 2009/05/24 09:15:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://fireforge.net/projects/biredit/

}

unit BirEditAdv;

interface

uses
  Windows, SysUtils, ShellAPI, uMainFrm, ShlObj;

  function MyBytesToStr(const mfSize: UInt64): string;
  function MyGetSpecialFolder(callerhndl: THandle; Ident: Integer): string;
  procedure MyShowFileProperties(filename: string);

implementation

function MyBytesToStr(const mfSize: UInt64): string;
const
  i64TB = 1099511627776;
  i64GB = 1073741824;
  i64MB = 1048576;
  i64KB = 1024;
begin
  if mfSize >= i64TB
  then Result := Format('%.2f ' + mysn0, [mfSize / i64TB]) else
  if mfSize >= i64GB
  then Result := Format('%.2f ' + mysn1, [mfSize / i64GB]) else
  if mfSize >= i64MB
  then Result := Format('%.2f ' + mysn2, [mfSize / i64MB]) else
  if mfSize >= i64KB
  then Result := Format('%.2f ' + mysn3, [mfSize / i64KB])
  else Result := IntToStr(mfSize) + ' ' + mysn4;
end;

function MyGetSpecialFolder(callerhndl: THandle; Ident: Integer): string;
var
  mBuf: PChar;
begin
  mBuf := StrAlloc(MAX_PATH);
  if SHGetSpecialFolderPath(callerhndl, mBuf, Ident, True) = False
    then
      Result := ''
    else
      Result := mBuf;
  StrDispose(mBuf);
end;

procedure MyShowFileProperties(filename: string);
var
  sei: TShellExecuteInfo;
begin
  FillChar(sei, SizeOf(sei), 0);
  sei.cbSize := SizeOf(sei);
  sei.lpFile := PChar(filename);
  sei.lpVerb := 'properties';
  sei.fMask := SEE_MASK_INVOKEIDLIST;
  ShellExecuteEx(@sei);
end;

end.
