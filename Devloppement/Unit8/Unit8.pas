unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel3: TPanel;
    ComboBox2: TComboBox;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Panel4: TPanel;
    ComboBox3: TComboBox;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Panel5: TPanel;
    ComboBox4: TComboBox;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Panel6: TPanel;
    ComboBox5: TComboBox;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Panel7: TPanel;
    ComboBox6: TComboBox;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Panel8: TPanel;
    ComboBox7: TComboBox;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Panel9: TPanel;
    ComboBox8: TComboBox;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Panel10: TPanel;
    ComboBox9: TComboBox;
    Edit57: TEdit;
    Edit58: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure creerPanel();
  private
    xtop:integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure Tform8.creerpanel();
var
    Panel3: TPanel;
    ComboBox1: TComboBox;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    xtaborder:integer;

begin
xtaborder:=1;
panel3 :=Tpanel.Create(Form8);
ComboBox1 :=TComboBox.Create(panel3);
Edit10 :=TEdit.Create(panel3);
Edit11 :=TEdit.Create(panel3);
Edit12 :=TEdit.Create(panel3);
Edit13 :=TEdit.Create(panel3);
Edit14 :=TEdit.Create(panel3);
Edit15 :=TEdit.Create(panel3);
Edit16 :=TEdit.Create(panel3);
with panel3 do
begin
panel3.Visible:=true;
panel3.TabOrder:=xtaborder+1;
panel3.Height:=33;
panel3.Width:=801;
panel3.Top:=441;

ComboBox1.Height:=21;
ComboBox1.Width:=169;
ComboBox1.ItemHeight:=169;

Edit10.Height:=21;
Edit10.Left:=176;
Edit10.Width:=49;

Edit11.Height:=21;
Edit11.Left:=248;
Edit11.Width:=57;


Edit12.Height:=21;
Edit12.Left:=352;
Edit12.Width:=57;

Edit13.Height:=21;
Edit13.Left:=456;
Edit13.Width:=57;

Edit14.Height:=21;
Edit14.Left:=544;
Edit14.Width:=57;

Edit15.Height:=21;
Edit15.Left:=624;
Edit15.Width:=113;

Edit16.Height:=21;
Edit16.Left:=744;
Edit16.Width:=57;

ComboBox1.Parent:=panel3;
Edit10.Parent:=panel3;
Edit11.Parent:=panel3;
Edit12.Parent:=panel3;
Edit13.Parent:=panel3;
Edit14.Parent:=panel3;
Edit15.Parent:=panel3;
Edit16.Parent:=panel3;

panel3.Parent:=form8;
end;
end;
procedure TForm8.SpeedButton1Click(Sender: TObject);
var i:integer;
begin
creerpanel();
end;

end.
