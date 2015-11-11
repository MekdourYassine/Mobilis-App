unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, jpeg, ComCtrls, Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Button2: TButton;
    Image1: TImage;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel3: TPanel;
    Image2: TImage;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
  identifiant_user,mdp_user,nom_user,prenom_user,adresse_user,num_tel_user: string;
  identifiant_admin,motdp_admin,nom_admin,prenom_admin,adresse_admin,num_tel_admin: string;

    { Public declarations }
  end;

var
  Form1: TForm1;
  admin_user: integer;

implementation

uses Unit3, Unit2, Unit4, Unit10, Unit11, Unit6;


{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
close();
end;

procedure TForm1.Button1Click(Sender: TObject);
begin


if (admin_user <>1) and (admin_user <>2) then // le cas d'oublie de selectionner l'admin ou user
begin
with Form4 do
begin
Showmodal;
end;
end;

if admin_user=2 then   // pour l'affichage de l'interface d'utilisateur
begin
datamodule10.ADOTable_profil_user.close;
datamodule10.ADOQuery_authentification_user.close;
datamodule10.ADOQuery_authentification_user.Parameters.ParamByName('log').Value:=edit1.Text;
datamodule10.ADOQuery_authentification_user.Parameters.ParamByName('motdp').Value:=edit2.Text;
datamodule10.DataSource_profil_user.DataSet:=datamodule10.ADOQuery_authentification_user;
datamodule10.ADOQuery_authentification_user.Open;
if (datamodule10.ADOQuery_authentification_user.RecordCount=1) then
begin
edit1.Text:='user';
edit2.Text:='user';

identifiant_user:=datamodule10.ADOQuery_authentification_user.Fields[5].Value;
mdp_user:=datamodule10.ADOQuery_authentification_user.Fields[6].Value;
nom_user:=datamodule10.ADOQuery_authentification_user.Fields[1].Value;
prenom_user:=datamodule10.ADOQuery_authentification_user.Fields[2].Value;
adresse_user:=datamodule10.ADOQuery_authentification_user.Fields[3].Value;
num_tel_user:=datamodule10.ADOQuery_authentification_user.Fields[4].Value;

with Form3 do
begin
Form3.Panel3.Visible:=true;
Form3.panel4.Visible:=false;
Form3.Panel6.visible:=false;
Form3.Panel7.visible:=false;
ShowModal;
end;
end
else
with Form11 do
showmodal;

end;

if admin_user=1 then   // pour l'affichage de l'interface administrateur
begin
datamodule10.ADOQuery_authentification.close;
datamodule10.ADOQuery_authentification.Parameters.ParamByName('login').Value:=edit1.Text;
datamodule10.ADOQuery_authentification.Parameters.ParamByName('pass').Value:=edit2.Text;
datamodule10.DataSource_compte_admin.DataSet:=datamodule10.ADOQuery_authentification;
datamodule10.ADOQuery_authentification.Open;
if (datamodule10.ADOQuery_authentification.RecordCount=1) then
begin
edit1.Text:='user';
edit2.Text:='user';


identifiant_admin:=datamodule10.ADOQuery_authentification.Fields[5].Value;
motdp_admin:=datamodule10.ADOQuery_authentification.Fields[6].Value;
nom_admin:=datamodule10.ADOQuery_authentification.Fields[1].Value;
prenom_admin:=datamodule10.ADOQuery_authentification.Fields[2].Value;
adresse_admin:=datamodule10.ADOQuery_authentification.Fields[3].Value;
num_tel_admin:=datamodule10.ADOQuery_authentification.Fields[4].Value;


with Form2 do
begin
Form2.Panel2.Visible:=true;
Form2.panel3.Visible:=false;
Form2.panel6.visible:=false;

Form2.panel7.visible:=false;

ShowModal;
end;
end
else
begin
with form11 do
showmodal;
end;

end;
end;
procedure TForm1.RadioButton1Click(Sender: TObject);
begin
admin_user:=1;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
admin_user:=2;

end;


procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
with Form6 do
begin
Showmodal;
end;
end;

end.
