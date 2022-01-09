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


The Original Code is uSettingsDlg.pas by Alexey Tatuyko, released 2010-10-28.
All Rights Reserved.

$Id: uSettingsDlg.pas, v 2.0.1.43 2010/10/28 05:04:00 tatuich Exp $

You may retrieve the latest version of this file at the BirEdit project page,
located at http://biredit.googlecode.com/

}

unit uSettingsDlg;

interface

uses
  Windows, Forms, Classes, Controls, StdCtrls, Mask, JvExMask, JvSpin, ComCtrls,
  CheckLst, ExtCtrls;

type
  TSettingsDlg = class(TForm)
    Btn1: TButton;
    Btn2: TButton;
    Check1: TCheckBox;
    Check2: TCheckBox;
    Check3: TCheckBox;
    Check4: TCheckBox;
    Check5: TCheckBox;
    Check6: TCheckBox;
    Check7: TCheckBox;
    Check8: TCheckBox;
    Check9: TCheckBox;
    Check10: TCheckBox;
    Check11: TCheckBox;
    Check12: TCheckBox;
    Check13: TCheckBox;
    Check14: TCheckBox;
    Check15: TCheckBox;
    Check16: TCheckBox;
    Check17: TCheckBox;
    Check18: TCheckBox;
    Check19: TCheckBox;
    OptsList: TCheckListBox;
    Combo1: TComboBox;
    Combo2: TComboBox;
    Combo3: TComboBox;
    Combo4: TComboBox;
    Spin1: TJvSpinEdit;
    Spin2: TJvSpinEdit;
    Spin3: TJvSpinEdit;
    Spin4: TJvSpinEdit;
    Spin5: TJvSpinEdit;
    Spin6: TJvSpinEdit;
    Spin7: TJvSpinEdit;
    Spin8: TJvSpinEdit;
    Spin9: TJvSpinEdit;
    Lbl1: TLabel;
    Lbl2: TLabel;
    Lbl3: TLabel;
    Lbl4: TLabel;
    Lbl5: TLabel;
    Lbl6: TLabel;
    Lbl7: TLabel;
    Lbl8: TLabel;
    Lbl9: TLabel;
    Lbl10: TLabel;
    Lbl11: TLabel;
    Lbl12: TLabel;
    Lbl13: TLabel;
    PageCtrl1: TPageControl;
    Tab6: TPageControl;
    Tab5: TTabSheet;
    Tab1: TTabSheet;
    Tab4: TTabSheet;
    Tab2: TTabSheet;
    Tab3: TTabSheet;
    grp1: TGroupBox;
    grp2: TGroupBox;
    lbl14: TLabel;
    Tab7: TTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    function GetChk1: Boolean;
    function GetChk2: Boolean;
    function GetChk3: Boolean;
    function GetChk4: Boolean;
    function GetChk5: Boolean;
    function GetChk6: Boolean;
    function GetChk7: Boolean;
    function GetChk8: Boolean;
    function GetChk9: Boolean;
    function GetChk10: Boolean;
    function GetChk11: Boolean;
    function GetChk12: Boolean;
    function GetChk13: Boolean;
    function GetChk14: Boolean;
    function GetChk15: Boolean;
    function GetChk16: Boolean;
    function GetChk17: Boolean;
    function GetChk18: Boolean;
    function GetChk19: Boolean;
    function GetSpn1: Integer;
    function GetSpn2: Integer;
    function GetSpn3: Integer;
    function GetSpn4: Integer;
    function GetSpn5: Integer;
    function GetSpn6: Integer;
    function GetSpn7: Integer;
    function GetSpn8: Integer;
    function GetSpn9: Integer;
    function GetCom1: Integer;
    function GetCom2: Integer;
    function GetCom3: Integer;
    function GetCom4: Integer;
    procedure SetChk1(Value: Boolean);
    procedure SetChk2(Value: Boolean);
    procedure SetChk3(Value: Boolean);
    procedure SetChk4(Value: Boolean);
    procedure SetChk5(Value: Boolean);
    procedure SetChk6(Value: Boolean);
    procedure SetChk7(Value: Boolean);
    procedure SetChk8(Value: Boolean);
    procedure SetChk9(Value: Boolean);
    procedure SetChk10(Value: Boolean);
    procedure SetChk11(Value: Boolean);
    procedure SetChk12(Value: Boolean);
    procedure SetChk13(Value: Boolean);
    procedure SetChk14(Value: Boolean);
    procedure SetChk15(Value: Boolean);
    procedure SetChk16(Value: Boolean);
    procedure SetChk17(Value: Boolean);
    procedure SetChk18(Value: Boolean);
    procedure SetChk19(Value: Boolean);
    procedure SetSpn1(Value: Integer);
    procedure SetSpn2(Value: Integer);
    procedure SetSpn3(Value: Integer);
    procedure SetSpn4(Value: Integer);
    procedure SetSpn5(Value: Integer);
    procedure SetSpn6(Value: Integer);
    procedure SetSpn7(Value: Integer);
    procedure SetSpn8(Value: Integer);
    procedure SetSpn9(Value: Integer);
    procedure SetCom1(Value: Integer);
    procedure SetCom2(Value: Integer);
    procedure SetCom3(Value: Integer);
    procedure SetCom4(Value: Integer);
  public
    property Chk1: Boolean read GetChk1 write SetChk1;
    property Chk2: Boolean read GetChk2 write SetChk2;
    property Chk3: Boolean read GetChk3 write SetChk3;
    property Chk4: Boolean read GetChk4 write SetChk4;
    property Chk5: Boolean read GetChk5 write SetChk5;
    property Chk6: Boolean read GetChk6 write SetChk6;
    property Chk7: Boolean read GetChk7 write SetChk7;
    property Chk8: Boolean read GetChk8 write SetChk8;
    property Chk9: Boolean read GetChk9 write SetChk9;
    property Chk10: Boolean read GetChk10 write SetChk10;
    property Chk11: Boolean read GetChk11 write SetChk11;
    property Chk12: Boolean read GetChk12 write SetChk12;
    property Chk13: Boolean read GetChk13 write SetChk13;
    property Chk14: Boolean read GetChk14 write SetChk14;
    property Chk15: Boolean read GetChk15 write SetChk15;
    property Chk16: Boolean read GetChk16 write SetChk16;
    property Chk17: Boolean read GetChk17 write SetChk17;
    property Chk18: Boolean read GetChk18 write SetChk18;
    property Chk19: Boolean read GetChk19 write SetChk19;
    property Spn1: Integer read GetSpn1 write SetSpn1;
    property Spn2: Integer read GetSpn2 write SetSpn2;
    property Spn3: Integer read GetSpn3 write SetSpn3;
    property Spn4: Integer read GetSpn4 write SetSpn4;
    property Spn5: Integer read GetSpn5 write SetSpn5;
    property Spn6: Integer read GetSpn6 write SetSpn6;
    property Spn7: Integer read GetSpn7 write SetSpn7;
    property Spn8: Integer read GetSpn8 write SetSpn8;
    property Spn9: Integer read GetSpn9 write SetSpn9;
    property Cmb1: Integer read GetCom1 write SetCom1;
    property Cmb2: Integer read GetCom2 write SetCom2;
    property Cmb3: Integer read GetCom3 write SetCom3;
    property Cmb4: Integer read GetCom4 write SetCom4;
  end;

var
  SettingsDlg: TSettingsDlg;

implementation

{$R *.DFM}

procedure TSettingsDlg.FormCreate(Sender: TObject);
begin
  Spin1.MinValue := 1;
  Spin1.MaxValue := MaxInt;
  Spin2.MinValue := 1;
  Spin2.MaxValue := MaxInt;
  Spin3.MinValue := 0;
  Spin3.MaxValue := MaxInt;
  Spin4.MinValue := - MaxInt - 1;
  Spin4.MaxValue := MaxInt;
  Spin5.MinValue := 1;
  Spin5.MaxValue := MAXBYTE + 1;
  Spin6.MinValue := 2;
  Spin6.MaxValue := MaxInt;
  Spin7.MinValue := 0;
  Spin7.MaxValue := MaxInt;
  Spin8.MinValue := 2;
  Spin8.MaxValue := MaxInt;
  Spin9.MinValue := 0;
  Spin9.MaxValue := MaxInt;
end;

procedure TSettingsDlg.FormDestroy(Sender: TObject);
begin
  SettingsDlg := nil;
end;

function TSettingsDlg.GetChk1;
begin
  Result := Check1.Checked;
end;

function TSettingsDlg.GetChk2;
begin
  Result := Check2.Checked;
end;

function TSettingsDlg.GetChk3;
begin
  Result := Check3.Checked;
end;

function TSettingsDlg.GetChk4;
begin
  Result := Check4.Checked;
end;

function TSettingsDlg.GetChk5;
begin
  Result := Check5.Checked;
end;

function TSettingsDlg.GetChk6;
begin
  Result := Check6.Checked;
end;

function TSettingsDlg.GetChk7;
begin
  Result := Check7.Checked;
end;

function TSettingsDlg.GetChk8;
begin
  Result := Check8.Checked;
end;

function TSettingsDlg.GetChk9;
begin
  Result := Check9.Checked;
end;

function TSettingsDlg.GetChk10;
begin
  Result := Check10.Checked;
end;

function TSettingsDlg.GetChk11;
begin
  Result := Check11.Checked;
end;

function TSettingsDlg.GetChk12;
begin
  Result := Check12.Checked;
end;

function TSettingsDlg.GetChk13;
begin
  Result := Check13.Checked;
end;

function TSettingsDlg.GetChk14;
begin
  Result := Check14.Checked;
end;

function TSettingsDlg.GetChk15;
begin
  Result := Check15.Checked;
end;

function TSettingsDlg.GetChk16;
begin
  Result := Check16.Checked;
end;

function TSettingsDlg.GetChk17;
begin
  Result := Check17.Checked;
end;

function TSettingsDlg.GetChk18;
begin
  Result := Check18.Checked;
end;

function TSettingsDlg.GetChk19;
begin
  Result := Check19.Checked;
end;

function TSettingsDlg.GetCom1: Integer;
begin
  Result := Combo1.ItemIndex;
end;

function TSettingsDlg.GetCom2: Integer;
begin
  Result := Combo2.ItemIndex;
end;

function TSettingsDlg.GetCom3: Integer;
begin
  Result := Combo3.ItemIndex;
end;

function TSettingsDlg.GetCom4: Integer;
begin
  Result := Combo4.ItemIndex;
end;

function TSettingsDlg.GetSpn1: Integer;
begin
  Result := Spin1.AsInteger;
end;

function TSettingsDlg.GetSpn2: Integer;
begin
  Result := Spin2.AsInteger;
end;

function TSettingsDlg.GetSpn3: Integer;
begin
  Result := Spin3.AsInteger;
end;

function TSettingsDlg.GetSpn4: Integer;
begin
  Result := Spin4.AsInteger;
end;

function TSettingsDlg.GetSpn5: Integer;
begin
  Result := Spin5.AsInteger;
end;

function TSettingsDlg.GetSpn6: Integer;
begin
  Result := Spin6.AsInteger;
end;

function TSettingsDlg.GetSpn7: Integer;
begin
  Result := Spin7.AsInteger;
end;

function TSettingsDlg.GetSpn8: Integer;
begin
  Result := Spin8.AsInteger;
end;

function TSettingsDlg.GetSpn9: Integer;
begin
  Result := Spin9.AsInteger;
end;

procedure TSettingsDlg.SetChk1(Value: Boolean);
begin
  Check1.Checked := Value;
end;

procedure TSettingsDlg.SetChk2(Value: Boolean);
begin
  Check2.Checked := Value;
end;

procedure TSettingsDlg.SetChk3(Value: Boolean);
begin
  Check3.Checked := Value;
end;

procedure TSettingsDlg.SetChk4(Value: Boolean);
begin
  Check4.Checked := Value;
end;

procedure TSettingsDlg.SetChk5(Value: Boolean);
begin
  Check5.Checked := Value;
end;

procedure TSettingsDlg.SetChk6(Value: Boolean);
begin
  Check6.Checked := Value;
end;

procedure TSettingsDlg.SetChk7(Value: Boolean);
begin
  Check7.Checked := Value;
end;

procedure TSettingsDlg.SetChk8(Value: Boolean);
begin
  Check8.Checked := Value;
end;

procedure TSettingsDlg.SetChk9(Value: Boolean);
begin
  Check9.Checked := Value;
end;

procedure TSettingsDlg.SetChk10(Value: Boolean);
begin
  Check10.Checked := Value;
end;

procedure TSettingsDlg.SetChk11(Value: Boolean);
begin
  Check11.Checked := Value;
end;

procedure TSettingsDlg.SetChk12(Value: Boolean);
begin
  Check12.Checked := Value;
end;

procedure TSettingsDlg.SetChk13(Value: Boolean);
begin
  Check13.Checked := Value;
end;

procedure TSettingsDlg.SetChk14(Value: Boolean);
begin
  Check14.Checked := Value;
end;

procedure TSettingsDlg.SetChk15(Value: Boolean);
begin
  Check15.Checked := Value;
end;

procedure TSettingsDlg.SetChk16(Value: Boolean);
begin
  Check16.Checked := Value;
end;

procedure TSettingsDlg.SetChk17(Value: Boolean);
begin
  Check17.Checked := Value;
end;

procedure TSettingsDlg.SetChk18(Value: Boolean);
begin
  Check18.Checked := Value;
end;

procedure TSettingsDlg.SetChk19(Value: Boolean);
begin
  Check19.Checked := Value;
end;

procedure TSettingsDlg.SetCom1(Value: Integer);
begin
  Combo1.ItemIndex := Value;
end;

procedure TSettingsDlg.SetCom2(Value: Integer);
begin
  Combo2.ItemIndex := Value;
end;

procedure TSettingsDlg.SetCom3(Value: Integer);
begin
  Combo3.ItemIndex := Value;
end;

procedure TSettingsDlg.SetCom4(Value: Integer);
begin
  Combo4.ItemIndex := Value;
end;

procedure TSettingsDlg.SetSpn1(Value: Integer);
begin
  Spin1.AsInteger := Value;
end;

procedure TSettingsDlg.SetSpn2(Value: Integer);
begin
  Spin2.AsInteger := Value;
end;

procedure TSettingsDlg.SetSpn3(Value: Integer);
begin
  Spin3.AsInteger := Value;
end;

procedure TSettingsDlg.SetSpn4(Value: Integer);
begin
  Spin4.AsInteger := Value;
end;

procedure TSettingsDlg.SetSpn5(Value: Integer);
begin
  Spin5.AsInteger := Value;
end;

procedure TSettingsDlg.SetSpn6(Value: Integer);
begin
  Spin6.AsInteger := Value;
end;

procedure TSettingsDlg.SetSpn7(Value: Integer);
begin
  Spin7.AsInteger := Value;
end;

procedure TSettingsDlg.SetSpn8(Value: Integer);
begin
  Spin8.AsInteger := Value;
end;

procedure TSettingsDlg.SetSpn9(Value: Integer);
begin
  Spin9.AsInteger := Value;
end;

end.
