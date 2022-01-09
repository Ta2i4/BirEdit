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


The Original Code is Unit9.pas by Aleksey Tatuyko, released 2008-10-17.
All Rights Reserved.

$Id: Unit1.pas,v 1.1.6.180 2008/10/17 08:48:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
}

unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntForms, ExtCtrls, TntExtCtrls, StdCtrls, TntStdCtrls;

type
  TMyMsgDlg = class(TTntForm)
    TntImage1: TTntImage;
    TntLabel1: TTntLabel;
    TntButton1: TTntButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MyMsgDlg: TMyMsgDlg;

implementation

{$R *.DFM}

end.
