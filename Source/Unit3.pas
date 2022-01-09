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


The Original Code is Unit3.pas by Aleksey Tatuyko, released 2008-10-17.
All Rights Reserved.

$Id: Unit3.pas,v 1.1.6.180 2008/10/17 08:46:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
 }
 
unit Unit3;

interface

uses
  Windows, TntWindows, TntForms, Graphics, Classes, Controls, ExtCtrls,
  TntExtCtrls, StdCtrls, TntStdCtrls;

type
  TAbout = class(TTntForm)
    TntImage1: TTntImage;
    TntLabel1: TTntLabel;
    TntLabel2: TTntLabel;
    btn1: TTntButton;
    TntLabel4: TTntLabel;
    TntMemo1: TTntMemo;
    TntLabel3: TTntLabel;
    procedure TntLabel3Click(Sender: TObject);
  end;

var
  About: TAbout;

implementation

{$R *.DFM}

procedure TAbout.TntLabel3Click(Sender: TObject);
begin
  Tnt_ShellExecuteW(Self.Handle,'open','http://biredit.fireforge.net/',nil,nil,SW_SHOWNORMAL);
end;

end.
