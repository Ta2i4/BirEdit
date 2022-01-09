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


The Original Code is BirEdit.dpr by Aleksey Tatuyko, released 2009-07-27.
All Rights Reserved.

$Id: uAboutDlg.pas, v 1.3.0.463 2009/07/27 05:27:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://fireforge.net/projects/biredit/

}
 
unit uAboutDlg;

interface

uses
  Windows, Forms, ShellAPI, uMainFrm, Classes, Controls, ExtCtrls, StdCtrls;

type
  TAbout = class(TForm)
    Image1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    btn1: TButton;
    procedure lbl5Click(Sender: TObject);
    procedure lbl7Click(Sender: TObject);
  end;

implementation

{$R *.DFM}

procedure TAbout.lbl5Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', 'http://fireforge.net/projects/biredit/',
                 nil, nil, SW_SHOWNORMAL);
end;

procedure TAbout.lbl7Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, 'open', 'http://biredit.freeforums.org/',
                 nil, nil, SW_SHOWNORMAL);
end;

end.
