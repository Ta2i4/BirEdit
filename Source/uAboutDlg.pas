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


The Original Code is uAboutDlg.pas by Alexey Tatuyko, released 2010-10-26.
All Rights Reserved.

$Id: uAboutDlg.pas, v 2.0.1.42 2010/10/26 04:32:00 tatuich Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}
 
unit uAboutDlg;

interface

uses
  Windows, Forms, uMainFrm, Classes, Controls, ExtCtrls, StdCtrls,
  ComCtrls;

type
  TAbout = class(TForm)
    Image1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    PageCtrl1: TPageControl;
    Tab1: TTabSheet;
    Tab3: TTabSheet;
    Memo1: TMemo;
    Memo2: TMemo;
    Tab2: TTabSheet;
    Memo3: TMemo;
    procedure FormDestroy(Sender: TObject);
  end;

var
  About: TAbout;

implementation

{$R *.DFM}

procedure TAbout.FormDestroy(Sender: TObject);
begin
  About := nil;
end;

end.
