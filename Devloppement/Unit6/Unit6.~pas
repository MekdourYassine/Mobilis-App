unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TForm6 = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit10;

{$R *.dfm}

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
close();
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
datamodule10.ADOQuery_authentification.Close;
DataModule10.DataSource_compte_admin.DataSet:=DataModule10.ADOTable_compte_admin;
datamodule10.ADOTable_compte_admin.Open;
  With datamodule10.ADOTable_compte_admin Do
begin

// Mettre la table sur nouveau enregistrement
   Append;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)

   datamodule10.ADOTable_compte_admin.FieldByName('Nom_admin').AsString:=edit1.Text;
   datamodule10.ADOTable_compte_admin.FieldByName('prenom_admin').AsString:=edit2.Text;
   datamodule10.ADOTable_compte_admin.FieldByName('Adresse_admin').AsString:=edit3.Text;
   datamodule10.ADOTable_compte_admin.FieldByName('Num_tel_admin').AsString:=edit4.Text;
   datamodule10.ADOTable_compte_admin.FieldByName('login_admin').AsString:=edit5.Text;
   datamodule10.ADOTable_compte_admin.FieldByName('MDP_admin').AsString:=edit6.Text;



// Valider l'enregistrement
   Post;

end;
ShowMessage('Compte administrateur crée');
end;

end.
