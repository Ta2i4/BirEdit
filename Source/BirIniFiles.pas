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


The Original Code is BirIniFiles.pas by Aleksey Tatuyko, released 2008-08-11.
All Rights Reserved.

$Id: BirIniFiles.pas,v 1.1.3.135 2008/09/02 11:29:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 


-------------------------------------------------------------------------------
History:

2008/09/02 - v 1.1.3.135
- New function ReadColor(const Section, Ident: String; Default: TColor): TColor;

------------------------------------------------------------------------------- 
}


unit BirIniFiles;

interface

uses SysUtils, Graphics, IniFiles, Windows;

type
  TBirIniFile=class(TIniFile)
  public
    function ReadColor(const Section,Ident:String;Default:TColor):TColor;
    function ReadInt64(const Section,Ident:String;Default:Int64):Int64;
  end;


implementation

{ TBirIniFile }

function TBirIniFile.ReadColor(const Section,Ident:String;Default:TColor):TColor;
var Color:String;
begin
	Color:=ReadString(Section,Ident,'');
  if Color<>'' then Result:=TColor(StrToInt(Color)) else Result:=Default;
end;

function TBirIniFile.ReadInt64(const Section,Ident:String;Default:Int64):Int64;
var IntStr:string;
begin
  IntStr := ReadString(Section, Ident, '');
  if (Length(IntStr) > 2) and (IntStr[1] = '0') and
     ((IntStr[2] = 'X') or (IntStr[2] = 'x')) then
    IntStr := '$' + Copy(IntStr, 3, MaxInt);
  Result := StrToInt64Def(IntStr, Default);
end;

end.
