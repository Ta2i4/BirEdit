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

You can contact with me by e-mail: tatuich@gmail.com


The Original Code is BirEditAdv.pas by Aleksey Tatuyko, released 2009-08-01.
All Rights Reserved.

$Id: BirEditAdv.pas, v 1.3.1.468 2009/08/01 11:54:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

unit BirEditAdv;

interface

uses
  SysUtils, uMainFrm;

  function MyBytesToStr(const mfSize: UInt64): string;
  function MyExtByFilter(const fId: Integer; const fName: TFileName): TFileName;

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

function MyExtByFilter(const fId: Integer; const fName: TFileName): TFileName;
var
  fExt:  string;
begin
  Result := fName;
  fExt := WideLowerCase(ExtractFileExt(Result));
  case fId of
    2: if not ((fExt = '.c') or (fExt = '.cpp') or (fExt = '.cc')
                or (fExt = '.h') or (fExt = 'hpp') or (fExt = '.hh')
                or (fExt = '.cxx') or (fExt = '.hxx'))
       then Result := Result + '.c';
    3: if not ((fExt = '.e') or (fExt = '.ace')) then Result := Result + '.e';
    4: if not (fExt = '.for') then Result := Result + '.for';
    5: if not (fExt = '.java') then Result := Result + '.java';
    6: if not (fExt = '.m3') then Result := Result + '.m3';
    7: if not ((fExt = '.pas') or (fExt = '.pp') or (fExt = '.dpr')
                or (fExt = '.dpk') or (fExt = 'inc'))
       then Result := Result + '.pas';
    8: if not (fExt = '.bas') then Result := Result + '.bas';
    9: if not ((fExt = '.cbl') or (fExt = '.cob'))
       then Result := Result + '.cbl';
    10: if not (fExt = '.cs') then Result := Result + '.cs';
    11: if not (fExt = '.css') then Result := Result + '.css';
    12: if not ((fExt = '.htm') or (fExt = '.html'))
        then Result := Result + '.htm';
    13: if not (fExt = '.js') then Result := Result + '.js';
    14: if not ((fExt = '.php') or (fExt = '.php3') or (fExt = '.phtml')
                or (fExt = '.inc'))
        then Result := Result + '.php';
    15: if not (fExt = '.vbs') then Result := Result + '.vbs';
    16: if not ((fExt = '.xml') or (fExt = '.xsd') or (fExt = '.xsl')
                or (fExt = '.xslt') or (fExt = 'dtd'))
        then Result := Result + '.xml';
    17: if not ((fExt = '.wrl') or (fExt = '.wrml') or (fExt = '.vrl')
                or (fExt = '.vrml') or (fExt = 'x3d'))
        then Result := Result + '.wrl';
    18: if not (fExt = '.awk') then Result := Result + '.awk';
    19: if not ((fExt = '.bat') or (fExt = '.cmd'))
        then Result := Result + '.bat';
    20: if not (fExt = '.kix') then Result := Result + '.kix';
    21: if not ((fExt = '.pl') or (fExt = '.pm') or (fExt = '.cgi'))
        then Result := Result + '.pl';
    22: if not (fExt = '.py') then Result := Result + '.py';
    23: if not (fExt = '.tcl') then Result := Result + '.tcl';
    24: if not (fExt = '.gws') then Result := Result + '.gws';
    25: if not ((fExt = '.rb') or (fExt = '.rbw'))
        then Result := Result + '.rb';
    26: if not (fExt = '.sh') then Result := Result + '.sh';
    27: if not ((fExt = '.prg') or (fExt = '.ch') or (fExt = '.inc'))
        then Result := Result + '.prg';
    28: if not ((fExt = '.mac') or (fExt = '.inc') or (fExt = '.int'))
        then Result := Result + '.mac';
    29: if not (fExt = '.prg') then Result := Result + '.prg';
    30: if not (fExt = '.sql') then Result := Result + '.sql';
    31: if not (fExt = '.sdd') then Result := Result + '.sdd';
    32: if not ((fExt = '.dsp') or (fExt = '.inc'))
        then Result := Result + '.dsp';
    33: if not (fExt = '.asm') then Result := Result + '.asm';
    34: if not ((fExt = '.hc11') or (fExt = '.asm') or (fExt = '.asc'))
        then Result := Result + '.hc11';
    35: if not (fExt = '.st') then Result := Result + '.st';
    36: if not ((fExt = '.dml') or (fExt = '.gem'))
        then Result := Result + '.dml';
    37: if not (fExt = '.mo') then Result := Result + '.mo';
    38: if not (fExt = '.sml') then Result := Result + '.sml';
    39: if not ((fExt = '.dfm') or (fExt = '.xfm'))
        then Result := Result + '.dfm';
    40: if not (fExt = '.ini') then Result := Result + '.ini';
    41: if not (fExt = '.iss') then Result := Result + '.iss';
    42: if not (fExt = '.cln') then Result := Result + '.cln';
    43: if not ((fExt = '.gtv') or (fExt = '.galrep') or (fExt = '.txt'))
        then Result := Result + '.gtv';
    44: if not ((fExt = '.w') or (fExt = '.p') or (fExt = '.i'))
        then Result := Result + '.w';
    45: if not (fExt = '.msg') then Result := Result + '.msg';
    46: if not (fExt = '.idl') then Result := Result + '.idl';
    47: if not ((fExt = '.rdf') or (fExt = '.rif') or (fExt = '.rmf')
                or (fExt = '.rxf'))
        then Result := Result + '.rdf';
    48: if not (fExt = '.tex') then Result := Result + '.tex';
    49: if not ((fExt = '.hs') or (fExt = '.lhs'))
        then Result := Result + '.hs';
    50: if not (fExt = '.ldr') then Result := Result + '.ldr';
    51: if not (fExt = '.dot') then Result := Result + '.dot';
    52: if not (fExt = '.rc') then Result := Result + '.rc';
  end;
end;

end.
