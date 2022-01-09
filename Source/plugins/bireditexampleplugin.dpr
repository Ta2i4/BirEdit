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


The Original Code is bireditexampleplugin.dpr by Alexey Tatuyko,
released 2010-04-03.
All Rights Reserved.

$Id: bireditexampleplugin.dpr, v 0.0.3.23 2010/04/03 04:55:00 ta2i4 Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.fireforge.net/

}

library bireditexampleplugin;

uses
  FastMM4,
  {$IFNDEF VER210}
  VCLFixPack,
  {$ENDIF}
  SysUtils,
  Classes
  {$IFNDEF UNICODE}
  , WideStrings
  {$ENDIF}
  ;

{$R *.res}

{functions to be exported}

// plugin type
//
// available types:
// BE_EDIT_SELTEXT - TObject as TStrings/TWideStrings
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
  BirEditPlugName := 'Example';
end;

// function BirEditPlugExec(a: TObject): Boolean;
// only TStrings/TWideStrings supported for now (BirEdit v2.0.0.16 or later)
{$IFDEF UNICODE}
function BirEditPlugExec(bestr: TStrings): Boolean;
{$ELSE}
function BirEditPlugExec(bestr: TWideStrings): Boolean;
{$ENDIF}
var
  {$IFDEF UNICODE}
  st: TStrings;
  {$ELSE}
  st: TWideStrings;
  {$ENDIF}
begin
  {$IFDEF UNICODE}
  st := TStringList.Create;
  {$ELSE}
  st := TWideStringList.Create;
  {$ENDIF}
  try
    st.Text := 'This is text from Example plugin';
    bestr.Text := st.Text;
  finally
    FreeAndNil(st);
    BirEditPlugExec := True;
  end;
end;

exports
  BirEditPlugType, BirEditPlugName, BirEditPlugExec;

begin
end.
