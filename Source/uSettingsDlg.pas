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


The Original Code is BirEdit.dpr by Aleksey Tatuyko, released 2009-06-03.
All Rights Reserved.

$Id: uSettingsDlg.pas, v 1.2.7.409 2009/06/03 00:08:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://fireforge.net/projects/biredit/

}

unit uSettingsDlg;

interface

uses
  Forms, Classes, Controls, StdCtrls, Mask, JvExMask, JvSpin, ComCtrls, CheckLst;

type
  TSettingsDlg = class(TForm)
    ApplyBtn: TButton;
    CancelBtn: TButton;
    PageControl1: TPageControl;
    EditorTab: TTabSheet;
    UndoLimLbl: TLabel;
    Spin3: TJvSpinEdit;
    WrapChk: TCheckBox;
    TabSizeLbl: TLabel;
    Spin5: TJvSpinEdit;
    AppTab: TTabSheet;
    TrayChk: TCheckBox;
    StatusBarChk: TCheckBox;
    GVisChk: TCheckBox;
    PageCtrl3: TPageControl;
    EditOptsTab: TTabSheet;
    GutterTab: TTabSheet;
    ShowLZChk: TCheckBox;
    StartZeroChk: TCheckBox;
    GASizeChk: TCheckBox;
    ShowLnNumChk: TCheckBox;
    SMLbl: TLabel;
    SMCombo: TComboBox;
    Lbl1: TLabel;
    Spin1: TJvSpinEdit;
    Lbl2: TLabel;
    Combo1: TComboBox;
    Spin2: TJvSpinEdit;
    Lbl3: TLabel;
    Lbl4: TLabel;
    Combo2: TComboBox;
    Check1: TCheckBox;
    Lbl5: TLabel;
    Spin4: TJvSpinEdit;
    Lbl6: TLabel;
    Combo3: TComboBox;
    Lbl7: TLabel;
    Spin6: TJvSpinEdit;
    Check2: TCheckBox;
    Lbl8: TLabel;
    Spin7: TJvSpinEdit;
    Check3: TCheckBox;
    Lbl9: TLabel;
    Spin8: TJvSpinEdit;
    AdvTab: TTabSheet;
    OptsList: TCheckListBox;
    Check4: TCheckBox;
  end;

var
  SettingsDlg: TSettingsDlg;

implementation

{$R *.DFM}

end.
