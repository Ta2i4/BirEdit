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


The Original Code is doublestringplugin.dpr by Alexey Tatuyko,
released 2010-11-14.
All Rights Reserved.

$Id: doublestringplugin.dpr, v 0.0.2.61 2010/11/18 12:17:00 tatuich Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

library doublestringplugin;

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
  BirEditPlugType := 'BE_EDIT_ALLTEXT';
end;

// plugin name
{$IFDEF UNICODE}
function BirEditPlugName: PChar;
{$ELSE}
function BirEditPlugName: PWideChar;
{$ENDIF}
begin
  BirEditPlugName := 'Double String';
end;

// function BirEditPlugExec(a: TObject): Boolean;
// only TStrings/TWideStrings supported for now (BirEdit v2.0.0.16)
{$IFDEF UNICODE}
function BirEditPlugExec(bestr: TStrings): Boolean;
{$ELSE}
function BirEditPlugExec(bestr: TWideStrings): Boolean;
{$ENDIF}
var
  i, j: Integer;
  temp: string;
  {$IFDEF UNICODE}
  tmpst: TStrings;
  {$ELSE}
  tmpst: TWideStrings;
  {$ENDIF}

  opts: record
    nfb, odr, ssf: Boolean;
  end;

label lblext;

begin
  try
    if bestr.Count > 1 then begin
      {$IFDEF UNICODE}
      tmpst := TStringList.Create;
      {$ELSE}
      tmpst := TWideStringList.Create;
      {$ENDIF}
      try
        tmpst.Text := bestr.Text;
        i := 0;
        while i < tmpst.Count - 1 do begin
          for j := i + 1 to tmpst.Count - 1 do begin
            if CompareText(tmpst.Strings[i], tmpst.Strings[j]) = 0
            then tmpst.Delete(j);
            if j = tmpst.Count - 1 then goto lblext;
          end;
          lblext:
          Inc(i);
        end;
        bestr.Text := tmpst.Text;
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
