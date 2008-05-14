unit RackMain;

{$MODE Delphi}

interface

uses
  LCLIntf, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RackCtls, StdCtrls, Spin, ExtCtrls, ComCtrls, LResources, ColorBox;

type

  { TMainForm }

  TMainForm = class(TForm)
    ColorListBox1: TColorListBox;
    Label14: TLabel;
    Label7: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ScrewPanel1: TScrewPanel;
    LEDDisplay1: TLEDDisplay;
    LEDDisplay2: TLEDDisplay;
    Label1: TLabel;
    EditValue: TEdit;
    Label2: TLabel;
    SpinEditNumDigits: TSpinEdit;
    Label3: TLabel;
    SpinEditFractionDigits: TSpinEdit;
    CBLeadingZeros: TCheckBox;
    Label4: TLabel;
    ComboBoxSS: TComboBox;
    Label5: TLabel;
    ComboBoxBevel: TComboBox;
    Label6: TLabel;
    ComboBoxDecSeparator: TComboBox;
    TabSheet2: TTabSheet;
    LEDButton1: TLEDButton;
    ButtonPanel2: TLedButtonPanel;
    ButtonPanel3: TLedButtonPanel;
    LEDButton2: TLEDButton;
    ButtonPanel4: TLedButtonPanel;
    ButtonPanel1: TLedButtonPanel;
    TestButton: TLEDButton;
    ComboBoxBD: TComboBox;
    Label8: TLabel;
    CBSwitching: TCheckBox;
    Label9: TLabel;
    ComboBoxTP: TComboBox;
    CBBeveled: TCheckBox;
    CBShowLED: TCheckBox;
    LabelClick: TLabel;
    Bevel1: TBevel;
    TabSheet3: TTabSheet;
    LabelPosition: TLabel;
    Label11: TLabel;
    TBPosition: TTrackBar;
    LEDMeter1: TLEDMeter;
    RGDirection: TRadioGroup;
    LEDMeter2: TLEDMeter;
    SpinEditStartColor2: TSpinEdit;
    Label10: TLabel;
    Label12: TLabel;
    SpinEditStartColor3: TSpinEdit;
    CBDrawDigitShapes: TCheckBox;
    Label13: TLabel;
    SpinEditLEDContrast: TSpinEdit;
    procedure ColorListBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditValueChange(Sender: TObject);
    procedure SpinEditNumDigitsChange(Sender: TObject);
    procedure SpinEditFractionDigitsChange(Sender: TObject);
    procedure ComboBoxSSChange(Sender: TObject);
    procedure ComboBoxBevelChange(Sender: TObject);
    procedure CBLeadingZerosClick(Sender: TObject);
    procedure ComboBoxDecSeparatorChange(Sender: TObject);
    procedure TestButtonClick(Sender: TObject);
    procedure ColorGridChange(Sender: TObject);
    procedure ComboBoxBDChange(Sender: TObject);
    procedure ComboBoxTPChange(Sender: TObject);
    procedure CBShowLEDClick(Sender: TObject);
    procedure CBBeveledClick(Sender: TObject);
    procedure CBSwitchingClick(Sender: TObject);
    procedure LEDMeter1Change(Sender: TObject);
    procedure TBPositionChange(Sender: TObject);
    procedure RGDirectionClick(Sender: TObject);
    procedure SpinEditStartColor2Change(Sender: TObject);
    procedure SpinEditStartColor3Change(Sender: TObject);
    procedure CBDrawDigitShapesClick(Sender: TObject);
    procedure SpinEditLEDContrastChange(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm : TMainForm;

implementation


procedure TMainForm.TestButtonClick(Sender: TObject);
begin
  LabelClick.Visible:=not LabelClick.Visible;
end;

procedure TMainForm.ColorGridChange(Sender: TObject);
begin
  //TestButton.Color:=ColorGrid.ForegroundColor;
end;

procedure TMainForm.ComboBoxBDChange(Sender: TObject);
begin
  case ComboBoxBD.ItemIndex of
    0 : TestButton.ButtonDirection:=bdBottomUp;
    1 : TestButton.ButtonDirection:=bdLeftUp;
    2 : TestButton.ButtonDirection:=bdNone;
    3 : TestButton.ButtonDirection:=bdRightUp;
    4 : TestButton.ButtonDirection:=bdTopUp;
  end;
end;

procedure TMainForm.ComboBoxTPChange(Sender: TObject);
begin
  case ComboBoxTP.ItemIndex of
    0 : TestButton.TextPosition:=tpAbove;
    1 : TestButton.TextPosition:=tpBelow;
    2 : TestButton.TextPosition:=tpNone;
    3 : TestButton.TextPosition:=tpOnButton;
  end;
end;

procedure TMainForm.CBShowLEDClick(Sender: TObject);
begin
  TestButton.ShowLED:=CBShowLED.Checked;
end;

procedure TMainForm.CBBeveledClick(Sender: TObject);
begin
  TestButton.Beveled:=CBBeveled.Checked;
end;

procedure TMainForm.CBSwitchingClick(Sender: TObject);
begin
  TestButton.Switching:=CBSwitching.Checked;
end;

procedure TMainForm.EditValueChange(Sender: TObject);
begin
  try
    LEDDisplay1.Value:=StrToFloat(EditValue.Text);
    LEDDisplay2.Value:=StrToFloat(EditValue.Text);
  except
  end;
end;

procedure TMainForm.SpinEditLEDContrastChange(Sender: TObject);
begin
  LEDDisplay1.LEDContrast:=SpinEditLEDContrast.Value;
  LEDDisplay2.LEDContrast:=SpinEditLEDContrast.Value;
end;

procedure TMainForm.SpinEditNumDigitsChange(Sender: TObject);
begin
  LEDDisplay1.NumDigits:=SpinEditNumDigits.Value;
  LEDDisplay2.NumDigits:=SpinEditNumDigits.Value;
end;

procedure TMainForm.SpinEditFractionDigitsChange(Sender: TObject);
begin
  LEDDisplay1.FractionDigits:=SpinEditFractionDigits.Value;
  LEDDisplay2.FractionDigits:=SpinEditFractionDigits.Value;
end;

procedure TMainForm.CBLeadingZerosClick(Sender: TObject);
begin
  LEDDisplay1.LeadingZeros:=CBLeadingZeros.Checked;
  LEDDisplay2.LeadingZeros:=CBLeadingZeros.Checked;
end;

procedure TMainForm.CBDrawDigitShapesClick(Sender: TObject);
begin
  LEDDisplay1.DrawDigitShapes:=CBDrawDigitShapes.Checked;
  LEDDisplay2.DrawDigitShapes:=CBDrawDigitShapes.Checked;
end;

procedure TMainForm.ComboBoxSSChange(Sender: TObject);
begin
  if ComboBoxSS.ItemIndex>=0 then begin
    LEDDisplay1.SegmentStyle:=TSegmentStyle(ComboBoxSS.ItemIndex);
    LEDDisplay2.SegmentStyle:=TSegmentStyle(ComboBoxSS.ItemIndex);
  end
end;

procedure TMainForm.ComboBoxBevelChange(Sender: TObject);
begin
  if ComboBoxBevel.ItemIndex>=0 then begin
    LEDDisplay1.BevelStyle:=TPanelBevel(ComboBoxBevel.ItemIndex);
    LEDDisplay2.BevelStyle:=TPanelBevel(ComboBoxBevel.ItemIndex);
  end;
end;

procedure TMainForm.ComboBoxDecSeparatorChange(Sender: TObject);
begin
  if ComboBoxDecSeparator.ItemIndex>=0 then begin
    LEDDisplay1.DecSeparator:=TDecSeparator(ComboBoxDecSeparator.ItemIndex);
    LEDDisplay2.DecSeparator:=TDecSeparator(ComboBoxDecSeparator.ItemIndex);
  end;
end;

procedure TMainForm.LEDMeter1Change(Sender: TObject);
begin
  LabelPosition.Caption:=IntToStr(LEDMeter1.Position);
end;

procedure TMainForm.TBPositionChange(Sender: TObject);
begin
  LEDMeter1.Position:=TBPosition.Position;
  LEDMeter2.Position:=TBPosition.Position;
end;

procedure TMainForm.RGDirectionClick(Sender: TObject);
begin
  if RGDirection.ItemIndex=0 then begin
    LEDMeter1.Direction:=mdRight;
    LEDMeter2.Direction:=mdUp;
  end
  else begin
    LEDMeter1.Direction:=mdLeft;
    LEDMeter2.Direction:=mdDown;
  end;
end;

procedure TMainForm.SpinEditStartColor2Change(Sender: TObject);
begin
  LEDMeter1.Section2Value:=SpinEditStartColor2.Value;
  LEDMeter2.Section2Value:=SpinEditStartColor2.Value;
  SpinEditStartColor2.Value:=LEDMeter1.Section2Value;
end;

procedure TMainForm.SpinEditStartColor3Change(Sender: TObject);
begin
  LEDMeter1.Section3Value:=SpinEditStartColor3.Value;
  LEDMeter2.Section3Value:=SpinEditStartColor3.Value;
  SpinEditStartColor3.Value:=LEDMeter1.Section3Value;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  ComboBoxBD.ItemIndex:=0;
  ComboBoxTP.ItemIndex:=1;
  ComboBoxSS.ItemIndex:=0;
  ComboBoxBevel.ItemIndex:=0;
  ComboBoxDecSeparator.ItemIndex:=0;
end;

procedure TMainForm.ColorListBox1Click(Sender: TObject);
begin
  TestButton.Color:=ColorListBox1.Colors[ColorListBox1.ItemIndex];
end;

initialization
  {$i RackMain.lrs}

end.
