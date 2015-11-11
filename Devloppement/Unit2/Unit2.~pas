unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, Buttons, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Agence1: TMenuItem;
    Rechercher1: TMenuItem;
    Lister1: TMenuItem;
    Profil1: TMenuItem;
    Afficher1: TMenuItem;
    Modifier1: TMenuItem;
    Produit1: TMenuItem;
    Ajouter1: TMenuItem;
    Consulter1: TMenuItem;
    Aide1: TMenuItem;
    Aide2: TMenuItem;
    Apropos1: TMenuItem;
    Profilutilisateur1: TMenuItem;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    SpeedButton4: TSpeedButton;
    Compte1: TMenuItem;
    Ajouter2: TMenuItem;
    Supprimer2: TMenuItem;
    GroupBox2: TGroupBox;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    GroupBox3: TGroupBox;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    GroupBox7: TGroupBox;
    SpeedButton12: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Panel6: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    GroupBox8: TGroupBox;
    Edit10: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Panel7: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    GroupBox9: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit15: TEdit;
    Panel4: TPanel;
    SpeedButton8: TSpeedButton;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label5: TLabel;
    Panel5: TPanel;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Panel8: TPanel;
    GroupBox10: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Edit16: TEdit;
    Label34: TLabel;
    Edit17: TEdit;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    ButtonGroupBox: TGroupBox;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    ComboBox2: TComboBox;
    DBGrid4: TDBGrid;
    GroupBox11: TGroupBox;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid5: TDBGrid;
    GroupBox12: TGroupBox;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DBGrid6: TDBGrid;
    SpeedButton15: TSpeedButton;
    Edit7: TEdit;
    Label10: TLabel;
    Label7: TLabel;
    SpeedButton20: TSpeedButton;
    Panel9: TPanel;
    GroupBox13: TGroupBox;
    DBGrid7: TDBGrid;
    Edit8: TEdit;
    Label19: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Edit9: TEdit;
    Label35: TLabel;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    GroupBox14: TGroupBox;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    SpeedButton23: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Deconnexion1: TMenuItem;
    DBGrid1: TDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Ouvrir1Click(Sender: TObject);
    procedure Sauvegarder1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Ajouter1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure Consulter1Click(Sender: TObject);
    procedure Rechercher1Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Afficher1Click(Sender: TObject);
    procedure Modifier1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Profilutilisateur1Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure Apropos1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Ajouter2Click(Sender: TObject);
    procedure Supprimer2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton18Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton13Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid7DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Lister1Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure DBGrid7CellClick(Column: TColumn);
    procedure Quitter1Click(Sender: TObject);
    procedure Deconnexion1Click(Sender: TObject);
    procedure Aide2Click(Sender: TObject);

  private
    x:integer;
    y:string;
    val:String;
    verif:integer;
    { Private declarations }
  public
     percent:integer;

    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit5, Unit6, Unit7, Unit10,unit1, Unit9, Unit12, Unit13;

{$R *.dfm}

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
buttongroupbox.Visible:=false;
panel4.Visible:=false;
groupbox11.Visible:=false;
panel5.Visible:=false;
panel7.Visible:=false;
panel6.Visible:=false;
panel3.Visible:=false;
panel2.Visible:=false;
panel7.Visible:=true;
buttongroupbox.Visible:=true;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
panel9.Visible:=false;
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel5.Visible:=false;
panel4.Visible:=false;
groupbox1.Visible:=false;
panel3.Visible:=false;
panel7.Visible:=false;
combobox2.Visible:=false;
buttongroupbox.Visible:=false;
panel6.Visible:=false;
//panel2.Visible:=false;
//panel5.visible:=true;
panel7.Visible:=true;
panel4.Visible:=true;
groupbox1.Visible:=true;
panel5.Visible:=true;
panel8.Visible:=true;
GroupBox11.Visible:=false;
panel9.Visible:=true;
end;

procedure TForm2.SpeedButton12Click(Sender: TObject);
begin
panel3.Visible:=false;
panel2.Visible:=true;

end;

procedure TForm2.Ouvrir1Click(Sender: TObject);
var fichier: String;
    OpenDialog1:TOpenDialog;
begin
 OpenDialog1 := TOpenDialog.Create(self);
 OpenDialog1.InitialDir := GetCurrentDir;

 if OpenDialog1.Execute
  then ShowMessage('File : '+OpenDialog1.FileName)
  else ShowMessage('Open file was cancelled');

  // Free up the dialog
  OpenDialog1.Free;

end;

procedure TForm2.Sauvegarder1Click(Sender: TObject);
var fichier: String;
    SaveDialog1:TSaveDialog;
begin
 SaveDialog1 := TSaveDialog.Create(self);
 SaveDialog1.InitialDir := GetCurrentDir;

 if SaveDialog1.Execute
  then ShowMessage('File : '+SaveDialog1.FileName)
  else ShowMessage('Open file was cancelled');

  // Free up the dialog
  SaveDialog1.Free;

end;


procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
panel3.Visible:=false;
panel7.Visible:=false;
buttongroupbox.Visible:=false;
panel4.Visible:=false;
groupbox11.Visible:=false;
panel5.Visible:=false;
panel6.Visible:=false;
panel2.Visible:=true;
edit7.Visible:=true;
panel3.Visible:=true;

panel6.Visible:=false;
end;

procedure TForm2.SpeedButton11Click(Sender: TObject);
var
    Ajouter: TForm;
    type_prod: TEdit;
begin
if (dbgrid6.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
type_prod:=tedit.Create(nil);

// Créer le message ajouter nouveau enregistrement (#13= Sauter la ligne entrer)

 Ajouter := CreateMessageDialog('Ajouter un nouveau type de produit                       '+#13+#13+#13+
                                'Type                                                              '+#13+#13+#13
                                ,mtInformation,[mbYes, mbCancel]);

with Ajouter do
 try
 // Modifier le titre de le fenetre
 Caption := 'ajouter un nouveau type de produit';
 width :=400;
 height :=1000;
 autoscroll:=false;
 autosize:=true;

 // Modifier la position de la zone type
 type_prod.parent:=ajouter;
 type_prod.Left:=55;
 type_prod.Top:=60;
 type_prod.Width:=100;
 type_prod.Height:=30;


 if (ShowModal = ID_YES) then
Begin
with datamodule10.ADOTable_type_produit do
begin

// Mettre la table sur nouveau enregistrement
   Append;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)

datamodule10.ADOTable_type_produit.FieldByName('type').AsString:=type_prod.Text;

// Valider l'enregistrement
   Post;
end;
end;
 finally
 // Libérer les compos crées ainsi que la fiche ajouter
    type_prod.Free;
    ajouter.Free;


end;
end;
end;



procedure TForm2.Ajouter1Click(Sender: TObject);
begin
panel3.Visible:=false;
panel7.Visible:=false;
buttongroupbox.Visible:=false;
panel4.Visible:=false;
groupbox11.Visible:=false;
panel5.Visible:=false;
panel6.Visible:=false;
panel2.Visible:=true;
edit7.Visible:=true;
panel3.Visible:=true;

panel6.Visible:=false;

Form2.Caption:='Produit';
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
panel9.Visible:=false;
panel7.Visible:=false;
buttongroupbox.Visible:=false;
panel4.Visible:=false;
groupbox11.Visible:=false;
panel5.Visible:=false;
panel6.Visible:=false;
panel2.Visible:=true;
panel3.Visible:=true;
//edit7.Visible:=false;
//panel2.Visible:=false;
edit7.Visible:=false;
panel6.Visible:=true;
Form2.Caption:='Produit';
end;

procedure TForm2.SpeedButton14Click(Sender: TObject);
begin
panel6.Visible:=false;
panel3.Visible:=false;
panel2.Visible:=true;

end;

procedure TForm2.Consulter1Click(Sender: TObject);
begin
panel9.Visible:=false;
panel7.Visible:=false;
buttongroupbox.Visible:=false;
panel4.Visible:=false;
groupbox11.Visible:=false;
panel5.Visible:=false;
panel6.Visible:=false;
panel2.Visible:=true;
panel3.Visible:=true;
edit7.Visible:=false;
//panel2.Visible:=false;
panel6.Visible:=true;
Form2.Caption:='Produit';
end;

procedure TForm2.Rechercher1Click(Sender: TObject);
begin
buttongroupbox.Visible:=false;
panel4.Visible:=false;
groupbox11.Visible:=false;
panel5.Visible:=false;
panel7.Visible:=false;
panel6.Visible:=false;
panel3.Visible:=false;
panel2.Visible:=false;
panel7.Visible:=true;
buttongroupbox.Visible:=true;
end;

procedure TForm2.SpeedButton17Click(Sender: TObject);
begin
panel7.Visible:=false;
panel6.Visible:=false;
panel3.Visible:=false;
panel2.Visible:=true;
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
panel7.Visible:=false;
panel4.Visible:=false;
panel2.visible:=true;
end;

procedure TForm2.Afficher1Click(Sender: TObject);
begin


panel5.Visible:=false;
panel4.Visible:=false;
groupbox11.Visible:=false;
panel7.Visible:=false;
combobox2.Visible:=false;
buttongroupbox.Visible:=false;
panel6.Visible:=false;
//panel2.Visible:=false;
panel3.Visible:=false;
panel7.Visible:=true;
label12.Caption:=Form1.adresse_admin;
label2.Caption:=Form1.nom_admin;
label4.Caption:=Form1.prenom_admin;
label14.Caption:=Form1.num_tel_admin;
label5.Caption:=Form1.motdp_admin;
label16.Caption:=Form1.identifiant_admin;

panel4.Visible:=true;

form2.Caption:='Profil';
end;

procedure TForm2.Modifier1Click(Sender: TObject);
begin
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel5.Visible:=false;
panel4.Visible:=false;
groupbox11.Visible:=false;
panel7.Visible:=false;
combobox2.Visible:=false;
buttongroupbox.Visible:=false;
panel6.Visible:=false;
//panel2.Visible:=false;
panel3.Visible:=false;

Edit1.Text:=form1.nom_admin;
Edit2.Text:=form1.prenom_admin;
Edit4.Text:=form1.adresse_admin;
Edit3.Text:=form1.num_tel_admin;
Edit5.Text:=form1.identifiant_admin;
Edit6.Text:=form1.motdp_admin;




panel7.Visible:=true;
panel4.Visible:=true;
panel5.Visible:=true;
form2.Caption:='Profil';
end;

procedure TForm2.SpeedButton9Click(Sender: TObject);
begin
panel7.Visible:=false;
panel6.Visible:=false;
panel5.Visible:=false;
panel4.Visible:=false;

datamodule10.ADOTable_compte_admin.close;
datamodule10.ADOQuery_authentification.close;
datamodule10.ADOQuery_authentification.Parameters.ParamByName('login').Value:=form1.identifiant_admin;
datamodule10.ADOQuery_authentification.Parameters.ParamByName('pass').Value:=form1.motdp_admin;
datamodule10.DataSource_compte_admin.DataSet:=datamodule10.ADOQuery_authentification;
datamodule10.ADOQuery_authentification.Open;
if (datamodule10.ADOQuery_authentification.RecordCount=1) then
begin
//datamodule10.ADOQuery_authentification_user.close;
//datamodule10.DataSource_profil_user.DataSet:=datamodule10.ADOTable_profil_user;
//datamodule10.ADOTable_profil_user.Open;

With datamodule10.ADOQuery_authentification Do
begin
// Mettre la table mode d'edition = modification
   Edit;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)
   Fields[1].Value:=Edit1.Text;
   Fields[2].Value:=Edit2.Text;
   Fields[3].Value:=Edit4.Text;
   Fields[4].Value:=strtoint(Edit3.Text);
   Fields[5].Value:=Edit5.Text;
   Fields[6].Value:=Edit6.Text;

// Valider l'enregistrement
   Post;
end;
end;
datamodule10.ADOQuery_authentification.close;

panel2.Visible:=true;
Form2.Caption:='profil';
ShowMessage('Modification enregistrée');
end;

procedure TForm2.SpeedButton10Click(Sender: TObject);
begin
panel7.Visible:=false;
panel6.Visible:=false;
panel5.Visible:=false;
panel4.Visible:=false;
panel2.Visible:=true;
Form2.Caption:='profil';
end;

procedure TForm2.Profilutilisateur1Click(Sender: TObject);
begin
panel9.Visible:=false;
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel5.Visible:=false;
panel4.Visible:=false;
groupbox1.Visible:=false;
panel3.Visible:=false;
panel7.Visible:=false;
combobox2.Visible:=false;
buttongroupbox.Visible:=false;
panel6.Visible:=false;
//panel2.Visible:=false;
//panel5.visible:=true;
panel7.Visible:=true;
panel4.Visible:=true;
groupbox1.Visible:=true;
panel5.Visible:=true;
panel8.Visible:=true;
GroupBox11.Visible:=true;
end;

procedure TForm2.SpeedButton19Click(Sender: TObject);
begin
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel7.Visible:=false;
panel4.Visible:=false;
panel3.Visible:=false;
panel2.Visible:=true;

end;

procedure TForm2.Apropos1Click(Sender: TObject);
begin
panel4.Visible:=false;
panel5.Visible:=false;
panel6.Visible:=false;
panel7.Visible:=false;
combobox2.Visible:=false;
buttongroupbox.Visible:=false;
panel3.Visible:=false;
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel2.Visible:=true;
with Form5 do
begin
ShowModal;
end;

end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
panel4.Visible:=false;
panel5.Visible:=false;
panel6.Visible:=false;
panel7.Visible:=false;
combobox2.Visible:=false;
buttongroupbox.Visible:=false;
panel3.Visible:=false;
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel2.Visible:=true;
with Form6 do
begin
Showmodal;
end;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
panel4.Visible:=false;
panel5.Visible:=false;
panel6.Visible:=false;
panel7.Visible:=false;
combobox2.Visible:=false;
buttongroupbox.Visible:=false;
panel3.Visible:=false;
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel2.Visible:=true;
with Form7 do
begin
Showmodal;
end;

end;

procedure TForm2.Ajouter2Click(Sender: TObject);
begin
panel4.Visible:=false;
panel5.Visible:=false;
panel6.Visible:=false;
panel7.Visible:=false;
combobox2.Visible:=false;
buttongroupbox.Visible:=false;
panel3.Visible:=false;
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel2.Visible:=true;
with Form6 do
begin
Showmodal;
end;
end;
procedure TForm2.Supprimer2Click(Sender: TObject);
begin
panel4.Visible:=false;
panel5.Visible:=false;
panel6.Visible:=false;
panel7.Visible:=false;
combobox2.Visible:=false;
buttongroupbox.Visible:=false;
panel3.Visible:=false;
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel2.Visible:=true;
with Form7 do
begin
Showmodal;
end;

end;

procedure TForm2.RadioButton1Click(Sender: TObject);
begin
x:=1;  // la recherche des agences

end;

procedure TForm2.RadioButton2Click(Sender: TObject);
begin
x:=2;  // la recherche des points de présence

end;

procedure TForm2.Edit15Change(Sender: TObject);
begin
y:=edit15.Text;
end;

procedure TForm2.SpeedButton16Click(Sender: TObject);
begin
dbgrid3.Visible:=false;
dbgrid1.Visible:=false;
dbgrid2.Visible:=false;
if x=1 then
begin
dbgrid1.visible:=true;
end
else
if x=2 then
begin
dbgrid2.Visible:=true;
end
else
  dbgrid3.Visible:=true;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
if (dbgrid1.Visible=false) and (dbgrid2.Visible=false) and (dbgrid3.Visible=false)then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
if MessageDlg('Etes-vous sûr de vouloir supprimer cette agence/point de présence ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  datamodule10.ADOTable1.Delete;
end;
end;


procedure TForm2.BitBtn1Click(Sender: TObject);
var Ajouter: TForm;
    namos,code_post,Adr,N_tel,wilaya,agence_pointvente:TEdit;
    s,age_ptv,id_ag,town,ch:string;


begin
if (dbgrid1.Visible=false) and (dbgrid2.Visible=false) and (dbgrid3.Visible=false)then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
 namos:=TEdit.Create(Nil);
 code_post:=TEdit.Create(Nil);
 wilaya:=TEdit.Create(Nil);
 Adr:=TEdit.Create(Nil);
 N_tel:=TEdit.Create(Nil);
 agence_pointvente:=TEdit.Create(Nil);



 // Créer le message ajouter nouveau enregistrement (#13= Sauter la ligne entrer)

 Ajouter := CreateMessageDialog('Ajouter une nouvelle agence/ point de présence                       '+#13+#13+#13+
                                'Nom                                                              '+#13+#13+#13+
                                'Code postal                                                      '+#13+#13+#13+#13+
                                'Wilaya                                                          '+#13+#13+#13+#13+
                                'Adresse                                                          '+#13+#13+#13+#13+
                                'Numéro de telephone                                                            '+#13+#13+#13+#13+
                                'Agence/point de présence                                                           '+#13+#13+#13+#13
                                ,mtInformation,[mbYes, mbCancel]);

 with Ajouter do
 try
 // Modifier le titre de le fenetre
 Caption := 'ajouter une nouvelle Agence/point de présence';
 width :=400;
 height :=900;
 autoscroll:=false;
 autosize:=true;

 // Modifier la position de la zone Nom
 namos.parent:=ajouter;
 namos.Left:=55;
 namos.Top:=60;
 namos.Width:=100;
 namos.Height:=30;

 // Modifier la position de la zone code postal
 code_post.Parent:=Ajouter;
 code_post.Left:=55;
 code_post.Top:=120;
 code_post.Width:=150;
 code_post.Height:=40;

 // Modifier la position de la zone wilaya
 wilaya.Parent:=Ajouter;
 wilaya.Left:=55;
 wilaya.Top:=180;
 wilaya.Width:=150;
 wilaya.Height:=30;


 // Modifier la position de la zone adresse
 adr.Parent:=Ajouter;
 adr.Left:=55;
 adr.Top:=240;
 adr.Width:=150;
 adr.Height:=30;

 // Modifier la position de la zone de numero de telephone
 n_tel.Parent:=Ajouter;
 n_tel.Left:=55;
 n_tel.Top:=300;
 n_tel.Width:=150;
 n_tel.Height:=30;

 // Modifier la position de la zone agence / point de vente
 agence_pointvente.Parent:=Ajouter;
 agence_pointvente.Left:=55;
 agence_pointvente.Top:=360;
 agence_pointvente.Width:=150;
 agence_pointvente.Height:=30;


//for ind:=1 to 2 do
//begin
//id_ag:=town[ind]+id_ag;
//end;
 if (ShowModal = ID_YES) then
Begin
  With datamodule10.ADOTable1 Do
begin
  town:=wilaya.Text;
  id_ag:=copy(town,1,2);
  age_ptv:=agence_pointvente.Text;
  s:=copy(age_ptv,1,1);
  ch:=concat(s,id_ag);


// Mettre la table sur nouveau enregistrement
   Append;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)

   datamodule10.ADOTable1.FieldByName('ID_agence').AsString:=ch;
   datamodule10.ADOTable1.FieldByName('nom').AsString:=namos.Text;
   datamodule10.ADOTable1.FieldByName('code_postal').AsString:=code_post.Text;
   datamodule10.ADOTable1.FieldByName('adresse').AsString:=adr.Text;
   datamodule10.ADOTable1.FieldByName('num_tel').AsString:=n_tel.Text;
   //Fields[2].Value:=namos.Text;
   //Fields[3].Value:=Code_post.Text;
   //Fields[4].Value:=adr.Text;
   //Fields[5].Value:=n_tel.Text;

// Valider l'enregistrement
   Post;

end;
end;
 finally
 // Libérer les compos crées ainsi que la fiche ajouter
    namos.Free;
    wilaya.Free;
    code_post.free;
    adr.Free;
    n_tel.Free;
    agence_pointvente.Free;
    Ajouter.Free;


end;
end;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
var Modifier: TForm;
    Adresse,Num_tel,agence_pointvente:TEdit;
    id,verif,verif2,verif3,verif4 :string;

begin
if (dbgrid1.Visible=false) and (dbgrid2.Visible=false) and (dbgrid3.Visible=false)then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
 Adresse:=TEdit.Create(Nil);
 Num_tel:=TEdit.Create(Nil);
 agence_pointvente:=TEdit.Create(Nil);



 // Créer le message modifier l'enregistrement (#13= Sauter la ligne entrer)

 modifier := CreateMessageDialog('Modifier agence/point de vente                                   '+#13+#13+
                                 'Adresse                                                          '+#13+#13+#13+
                                'num_tel                                                          '+#13+#13+#13+#13+
                                'type: ( Agence / Point de vente )                                                           '+#13+#13+#13+#13
                                ,mtInformation,[mbYes, mbCancel]);

 with Modifier do
 try
 // Modifier le titre de le fenetre
 Caption := 'Modifier agence/point de vente';
 width :=400;
 height :=900;
 autoscroll:=false;
 autosize:=true;



 // Modifier la position de la zone de l'adresse
 Adresse.Parent:=modifier;
 Adresse.Left:=55;
 Adresse.Top:=50;
 Adresse.Width:=150;
 Adresse.Height:=30;

 // Modifier la position de la zone de numero de telephone
 num_tel.Parent:=modifier;
 num_tel.Left:=55;
 num_tel.Top:=100;
 num_tel.Width:=150;
 num_tel.Height:=30;

 // Modifier la position de la zone de numero de telephone
 agence_pointvente.Parent:=modifier;
 agence_pointvente.Left:=55;
 agence_pointvente.Top:=160;
 agence_pointvente.Width:=150;
 agence_pointvente.Height:=30;

// Remplir les valeurs de chaque zone de texte
Adresse.Text:= datamodule10.ADOTable1.Fields[3].AsString;
num_tel.Text:= datamodule10.ADOTable1.Fields[4].AsString;
//agence_pointvente.Text := datamodule10.ADOTable1.Fields[0].AsString;
id :=datamodule10.ADOTable1.fields[0].AsString;


  verif:=copy(id,1,1);
 if ( verif='A') then  agence_pointvente.Text:='Agence';
 if ( verif='P') then  agence_pointvente.Text:='Point de vente';


 if (ShowModal = ID_YES) then
Begin
With datamodule10.ADOTable1 Do
begin
// Mettre la table mode d'edition = modification
   Edit;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)
   Fields[3].Value:=Adresse.Text;
   Fields[4].Value:=num_tel.Text;
   verif2:=Fields[0].Value;
   verif3:=copy(verif2,2,length(verif2));
   //verif3:=copy(verif2,1,1);
   verif4:=copy(agence_pointvente.Text,1,1);
   Fields[0].Value:=concat(verif4,verif3);

// Valider l'enregistrement
   Post;

end;
end;
 finally
 // Libérer les compos crées ainsi que la fiche modifier
nom.Free;
    num_tel.Free;
    adresse.free;
    if_client.Free;
    art_client.Free;
    rc_client.Free;
    c_bancaire.Free;
    entreprise.Free;
    modifier.Free;


end;
end;
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
var
   ndx: Integer;
   anne : integer;
   bool :boolean;
begin
//bool :=false;
ndx:= ComboBox2.ItemIndex;
if ndx = -1 then
begin
edit15.Clear;
edit15.text:= 'Pas de wilaya selectioné';
bool:=true;
end;

if ndx = 0 then
edit15.Text:= 'AD';
if ndx = 1  then
begin
edit15.Text:= 'CH';
end;
if ndx = 2 then
begin
edit15.Text:= 'LA';
end;
if ndx = 3 then
begin
edit15.Text:= 'OU';
end;
if ndx = 4  then
begin
edit15.Text:= 'BA';
end;
if ndx = 5 then
begin
edit15.Text:= 'BE';
end;
if ndx = 6 then
begin
edit15.Text:= 'BI';
end;
if ndx = 7 then
begin
edit15.Text:= 'BC';
end;
if ndx = 8 then
begin
edit15.Text:= 'BL';
end;
if ndx = 9 then
begin
edit15.Text:= 'BO';
end;
if ndx = 10then
begin
edit15.Text:= 'TM';
end;
if ndx = 11 then
begin
edit15.Text:= 'TB';
end;
if ndx = 12 then
begin
edit15.Text:= 'TL';
end;
if ndx = 13 then
begin
edit15.Text:= 'TI';
end;
if ndx = 14 then
begin
edit15.Text:= 'TZ';
end;
if ndx = 15  then
begin
edit15.Text:= 'AL';
end;
if ndx = 16 then
begin
edit15.Text:= 'DJ';
end;
if ndx = 17  then
begin
edit15.Text:= 'JI';
end;
if ndx = 18 then
begin
edit15.Text:= 'SE';
end;
if ndx = 19 then
begin
edit15.Text:= 'SA';
end;
if ndx = 20 then
begin
edit15.Text:= 'SK';
end;
if ndx = 21 then
begin
edit15.Text:= 'SI';
end;
if ndx = 22 then
begin
edit15.Text:= 'AN';
end;
if ndx = 23 then
begin
edit15.Text:= 'GU';
end;
if ndx = 24 then
begin
edit15.Text:= 'CO';
end;
if ndx = 25 then
begin
edit15.Text:= 'ME';
end;
if ndx = 26 then
begin
edit15.Text:= 'MO';
end;
if ndx = 27 then
begin
edit15.Text:= 'MS';
end;
if ndx = 28 then
begin
edit15.Text:= 'MA';
end;
if ndx = 29 then
begin
edit15.Text:= 'WA';
end;
if ndx = 30 then
begin
edit15.Text:= 'OR';
end;
if ndx = 31  then
begin
edit15.Text:= 'EL';
end;
if ndx = 32  then
begin
edit15.Text:= 'IL';
end;
if ndx = 33 then
begin
edit15.Text:= 'BO';
end;
if ndx = 34 then
begin
edit15.Text:= 'BM';
end;
if ndx = 35 then
begin
edit15.Text:= 'TA';
end;
if ndx = 36 then
begin
edit15.Text:= 'TN';
end;
if ndx = 37 then
begin
edit15.Text:= 'TIS';
end;
if ndx = 38 then
begin
edit15.Text:= 'WE';
end;
if ndx = 39  then
begin
edit15.Text:= 'KH';
end;
if ndx = 40 then
begin
edit15.Text:= 'SH';
end;
if ndx = 41  then
begin
edit15.Text:= 'TP';
end;
if ndx = 42 then
begin
edit15.Text:= 'MI';
end;
if ndx = 43 then
begin
edit15.Text:= 'AD';
end;
if ndx = 44 then
begin
edit15.Text:= 'NA';
end;
if ndx = 45 then
begin
edit15.Text:= 'AT';
end;
if ndx = 46  then
begin

edit15.Text:= 'GH';
end;
if ndx = 47 then
begin
edit15.Text:= 'RE';
end;
if ndx = 48  then
begin
edit15.Text:= '48';
end;
//edit15.text:= IntToStr(Integer(ComboBox2.Items.Objects[ndx]));
//label7.caption :=IntToStr(Integer(ComboBox1.Items.Objects[ndx]));
//anne:=StrToInt(label1.caption);
//label1.caption:=IntToStr(2003 - anne);
end;

procedure TForm2.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var  i : integer;
    s:string;
    ch1,ch2:string;
    begin
    s:='A';
    ch1:='P1';
    ch2:='P2';

        if datamodule10.ADOTable_agence.FieldByName('id_agence').Asstring ='' then
        begin
        DBGrid1.Canvas.Brush.Color:= cllime;
        DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable_agence.FieldByName('ID_agence').Asstring=s+edit15.Text) or  (datamodule10.ADOTable_agence.FieldByName('ID_agence').Asstring=ch1+edit15.Text) or  (datamodule10.ADOTable_agence.FieldByName('ID_agence').Asstring=ch2+edit15.Text) then
        begin
        DBGrid1.Canvas.Brush.Color:= Clred;
        DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

end;

procedure TForm2.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var  i : integer;
    s:string;
    ch1,ch2:string;
    begin
    s:='A';
    ch1:='P1';
    ch2:='P2';

        if datamodule10.ADOTable_pointvente.FieldByName('id_agence').Asstring ='' then
        begin
        DBGrid2.Canvas.Brush.Color:= cllime;
        DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable_pointvente.FieldByName('ID_agence').Asstring=s+edit15.Text) or  (datamodule10.ADOTable_pointvente.FieldByName('ID_agence').Asstring=ch1+edit15.Text) or  (datamodule10.ADOTable_pointvente.FieldByName('ID_agence').Asstring=ch2+edit15.Text) then
        begin
        DBGrid2.Canvas.Brush.Color:= Clred;
        DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;


    end;

procedure TForm2.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var  i : integer;
    s:string;
    ch1,ch2:string;
    begin
    s:='A';
    ch1:='P1';
    ch2:='P2';

        if datamodule10.ADOTable1.FieldByName('id_agence').Asstring ='' then
        begin
        DBGrid3.Canvas.Brush.Color:= cllime;
        DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable1.FieldByName('ID_agence').Asstring=s+edit15.Text) or  (datamodule10.ADOTable1.FieldByName('ID_agence').Asstring=ch1+edit15.Text) or  (datamodule10.ADOTable1.FieldByName('ID_agence').Asstring=ch2+edit15.Text) then
        begin
        DBGrid3.Canvas.Brush.Color:= Clred;
        DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;


end;

procedure TForm2.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var  i : integer;
    begin
       // datamodule10.ADOQuery_authentification_user.close;
       // datamodule10.ADOTable_profil_user.close;
       // datamodule10.DataSource_profil_user.DataSet:=datamodule10.ADOTable_profil_user;
       // datamodule10.ADOTable_profil_user.Open;
        if datamodule10.ADOTable_profil_user.FieldByName('Nom_user').Asstring ='' then
        begin
        DBGrid4.Canvas.Brush.Color:= cllime;
        DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable_profil_user.FieldByName('Nom_user').Asstring=edit16.Text) and (edit17.text='Edit16')  then
        begin
        DBGrid4.Canvas.Brush.Color:= Clred;
        DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

        if (edit16.text='Edit16') and (datamodule10.ADOTable_profil_user.FieldByName('login').Asstring=edit16.Text)  then
        begin
        DBGrid4.Canvas.Brush.Color:= Clred;
        DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;


        if (datamodule10.ADOTable_profil_user.FieldByName('Nom_user').Asstring=edit16.Text) and (datamodule10.ADOTable_profil_user.FieldByName('login').Asstring=edit17.Text)  then
        begin
        DBGrid4.Canvas.Brush.Color:= Clred;
        DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

    end;

procedure TForm2.SpeedButton18Click(Sender: TObject);
begin
dbgrid4.Visible:=false;
dbgrid4.Visible:=true;
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
var Ajouter: TForm;
    namos,prenom,Adr,N_tel,log,motdp:TEdit;
    s,age_ptv,id_ag,town,ch:string;


begin
if (dbgrid4.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
 namos:=TEdit.Create(Nil);
 prenom:=TEdit.Create(Nil);
 Adr:=TEdit.Create(Nil);
 N_tel:=TEdit.Create(Nil);
 log:=TEdit.Create(Nil);
 motdp:=TEdit.Create(Nil);


 // Créer le message ajouter nouveau enregistrement (#13= Sauter la ligne entrer)

 Ajouter := CreateMessageDialog('Ajouter un nouveau utilisateur                       '+#13+#13+#13+
                                'Nom                                                              '+#13+#13+#13+
                                'Prenom                                                      '+#13+#13+#13+#13+
                                'Adresse                                                          '+#13+#13+#13+#13+
                                'Numéro de telephone                                                            '+#13+#13+#13+#13+
                                'Identifiant                                                            '+#13+#13+#13+#13+
                                'Mot de passe                                                            '+#13+#13+#13+#13
                                ,mtInformation,[mbYes, mbCancel]);

 with Ajouter do
 try
 // Modifier le titre de le fenetre
 Caption := 'ajouter un nouveau utilisateur';
 width :=400;
 height :=1000;
 autoscroll:=false;
 autosize:=true;

 // Modifier la position de la zone Nom
 namos.parent:=ajouter;
 namos.Left:=55;
 namos.Top:=60;
 namos.Width:=100;
 namos.Height:=30;

 // Modifier la position de la zone code postal
 prenom.Parent:=Ajouter;
 prenom.Left:=55;
 prenom.Top:=120;
 prenom.Width:=150;
 prenom.Height:=40;


 // Modifier la position de la zone adresse
 adr.Parent:=Ajouter;
 adr.Left:=55;
 adr.Top:=180;
 adr.Width:=150;
 adr.Height:=30;

 // Modifier la position de la zone de numero de telephone
 n_tel.Parent:=Ajouter;
 n_tel.Left:=55;
 n_tel.Top:=240;
 n_tel.Width:=150;
 n_tel.Height:=30;

 // Modifier la position de la zone de l'identifiant
 log.Parent:=Ajouter;
 log.Left:=55;
 log.Top:=300;
 log.Width:=150;
 log.Height:=30;


// Modifier la position de la zone de mot de passe
 motdp.Parent:=Ajouter;
 motdp.Left:=55;
 motdp.Top:=360;
 motdp.Width:=150;
 motdp.Height:=30;

 if (ShowModal = ID_YES) then
Begin
  With datamodule10.ADOTable_profil_user Do
begin

// Mettre la table sur nouveau enregistrement
   Append;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)

//   datamodule10.ADOTable_profil_user.FieldByName('ID_user').AsString:=ch;
   datamodule10.ADOTable_profil_user.FieldByName('Nom_user').AsString:=namos.Text;
   datamodule10.ADOTable_profil_user.FieldByName('prenom_user').AsString:=prenom.Text;
   datamodule10.ADOTable_profil_user.FieldByName('Adresse').AsString:=adr.Text;
   datamodule10.ADOTable_profil_user.FieldByName('num_tel').AsString:=n_tel.Text;
   datamodule10.ADOTable_profil_user.FieldByName('login').AsString:=log.Text;
   datamodule10.ADOTable_profil_user.FieldByName('mdp').AsString:=motdp.Text;


   //Fields[2].Value:=namos.Text;
   //Fields[3].Value:=Code_post.Text;
   //Fields[4].Value:=adr.Text;
   //Fields[5].Value:=n_tel.Text;

// Valider l'enregistrement
   Post;

end;
end;
 finally
 // Libérer les compos crées ainsi que la fiche ajouter
    namos.Free;
    prenom.Free;
    adr.Free;
    n_tel.Free;
    log.free;
    motdp.Free;
    Ajouter.Free;


end;
end;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
var Modifier: TForm;
    Adresse,Num_tel,log,motdp:TEdit;
    id,verif,verif2,verif3,verif4 :string;

begin
if (dbgrid4.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
 Adresse:=TEdit.Create(Nil);
 Num_tel:=TEdit.Create(Nil);
 log:=TEdit.Create(Nil);
 motdp:=TEdit.Create(Nil);



 // Créer le message modifier l'enregistrement (#13= Sauter la ligne entrer)

 modifier := CreateMessageDialog('Modifier  compte  utilisateur                                   '+#13+#13+
                                 'Adresse                                                         '+#13+#13+#13+
                                'numero de telephone                                              '+#13+#13+#13+#13+
                                'identifiant                                                      '+#13+#13+#13+#13+
                                'mot de passe                                                     '+#13+#13+#13+#13
                                ,mtInformation,[mbYes, mbCancel]);

 with Modifier do
 try
 // Modifier le titre de le fenetre
 Caption := 'Modifier Compte utilisateur';
 width :=400;
 height :=900;
 autoscroll:=false;
 autosize:=true;



 // Modifier la position de la zone de l'adresse
 Adresse.Parent:=modifier;
 Adresse.Left:=55;
 Adresse.Top:=50;
 Adresse.Width:=150;
 Adresse.Height:=30;

 // Modifier la position de la zone de numero de telephone
 num_tel.Parent:=modifier;
 num_tel.Left:=55;
 num_tel.Top:=100;
 num_tel.Width:=150;
 num_tel.Height:=30;

 // Modifier la position de la zone login
 log.Parent:=modifier;
 log.Left:=55;
 log.Top:=160;
 log.Width:=150;
 log.Height:=30;

 // Modifier la position de la zone mot de passe
 motdp.Parent:=modifier;
 motdp.Left:=55;
 motdp.Top:=240;
 motdp.Width:=150;
 motdp.Height:=30;


// Remplir les valeurs de chaque zone de texte
Adresse.Text:= datamodule10.ADOTable_profil_user.Fields[3].AsString;
num_tel.Text:= datamodule10.ADOTable_profil_user.Fields[4].AsString;
log.Text:= datamodule10.ADOTable_profil_user.Fields[5].AsString;
motdp.Text:= datamodule10.ADOTable_profil_user.Fields[6].AsString;




 if (ShowModal = ID_YES) then
Begin
With datamodule10.ADOTable_profil_user Do
begin
// Mettre la table mode d'edition = modification
   Edit;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)
   Fields[3].Value:=Adresse.Text;
   Fields[4].Value:=num_tel.Text;
   Fields[5].Value:=log.Text;
   Fields[6].Value:=motdp.Text;

// Valider l'enregistrement
   Post;

end;
end;
 finally
 // Libérer les compos crées ainsi que la fiche modifier
    adresse.Free;
     num_tel.Free;
     log.Free;
     motdp.Free;
    modifier.Free;


end;
end;
end;

procedure TForm2.BitBtn6Click(Sender: TObject);
begin
if (dbgrid4.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin

if MessageDlg('Etes-vous sûr de vouloir supprimer ce compte ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  datamodule10.ADOTable_profil_user.Delete;
end;
end;

procedure TForm2.DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

        if datamodule10.ADOTable_produit.FieldByName('id_produit').Asstring ='' then
        begin
        DBGrid5.Canvas.Brush.Color:= cllime;
        DBGrid5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable_produit.FieldByName('Nom_produit').Asstring=edit10.Text) and (edit12.Text='Prix') and (edit13.Text='0') and (edit14.Text='0') then
        begin
        DBGrid5.Canvas.Brush.Color:= Clred;
        DBGrid5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

        if (datamodule10.ADOTable_produit.FieldByName('Prix').Asstring=edit12.Text) and (edit10.Text='Nom') and (edit13.Text='0') and (edit14.Text='0') then
        begin
        DBGrid5.Canvas.Brush.Color:= Clred;
        DBGrid5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

        if (datamodule10.ADOTable_produit.FieldByName('Prix').Asstring=edit12.Text) and (datamodule10.ADOTable_produit.FieldByName('Nom_produit').Asstring=edit10.Text) and (edit13.Text='0') and (edit14.Text='0') then
        begin
        DBGrid5.Canvas.Brush.Color:= Clred;
        DBGrid5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

        if (datamodule10.ADOTable_produit.FieldByName('Prix').Asinteger >= strtoint(edit13.Text)) and (datamodule10.ADOTable_produit.FieldByName('Prix').Asinteger<=strtoint(edit14.Text)) and (edit10.Text='Nom') and (edit12.Text='Prix') then
        begin
        DBGrid5.Canvas.Brush.Color:= Clred;
        DBGrid5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

        if (datamodule10.ADOTable_produit.FieldByName('Prix').Asinteger >= strtoint(edit13.Text)) and (datamodule10.ADOTable_produit.FieldByName('Prix').Asinteger<=strtoint(edit14.Text)) and (datamodule10.ADOTable_produit.FieldByName('Nom_produit').Asstring=edit10.Text) and (edit12.Text='Prix') then
        begin
        DBGrid5.Canvas.Brush.Color:= Clred;
        DBGrid5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;


    end;

procedure TForm2.SpeedButton13Click(Sender: TObject);
begin
dbgrid5.Visible:=false;
dbgrid5.Visible:=true;
end;

procedure TForm2.BitBtn7Click(Sender: TObject);
var Ajouter: TForm;
    namos,code_prod,Prix,type_prod:TEdit;
    //type_prod: TComboBox;
    edit_type_produit:string;
    id_type_prod: integer;
begin
if (dbgrid5.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
 namos:=TEdit.Create(Nil);
 code_prod:=TEdit.Create(Nil);
 prix:=TEdit.Create(Nil);
type_prod:=TEdit.Create(Nil);
//type_prod:=TComboBox.Create(Nil);


 // Créer le message ajouter nouveau enregistrement (#13= Sauter la ligne entrer)

 Ajouter := CreateMessageDialog('Ajouter un nouveau produit                       '+#13+#13+#13+
                                'Nom                                                              '+#13+#13+#13+
                                'Code de produit                                                      '+#13+#13+#13+#13+
                                'Prix                                                          '+#13+#13+#13+#13+
                                'Type                                                           '+#13+#13+#13+#13
                                ,mtInformation,[mbYes, mbCancel]);

 with Ajouter do
 try
 // Modifier le titre de le fenetre
 Caption := 'ajouter un nouveau produit';
 width :=400;
 height :=900;
 autoscroll:=false;
 autosize:=true;

 // Modifier la position de la zone Nom
 namos.parent:=ajouter;
 namos.Left:=55;
 namos.Top:=60;
 namos.Width:=100;
 namos.Height:=30;

 // Modifier la position de la zone code produit
 code_prod.Parent:=Ajouter;
 code_prod.Left:=55;
 code_prod.Top:=120;
 code_prod.Width:=150;
 code_prod.Height:=40;

 // Modifier la position de la zone prix
 prix.Parent:=Ajouter;
 prix.Left:=55;
 prix.Top:=180;
 prix.Width:=150;
 prix.Height:=30;


 // Modifier la position de la zone type
 type_prod.Parent:=Ajouter;
 type_prod.Left:=55;
 type_prod.Top:=240;
 type_prod.Width:=150;
 type_prod.Height:=30;



 if (ShowModal = ID_YES) then
Begin
  With datamodule10.ADOTable_produit Do
begin

// Mettre la table sur nouveau enregistrement
   Append;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)


   edit_type_produit:=type_prod.text;

   datamodule10.ADOTable_type_produit.close;
   datamodule10.ADOQuery_rech_type.close;
    datamodule10.ADOQuery_rech_type.Parameters.ParamByName('nom_type').Value:=edit_type_produit;
    datamodule10.DataSource_type_produit.DataSet:=datamodule10.ADOQuery_rech_type;
    datamodule10.ADOQuery_rech_type.Open;

if (datamodule10.ADOQuery_rech_type.RecordCount=1) then
 begin
       id_type_prod:=datamodule10.ADOQuery_rech_type.Fields[0].Value;
       datamodule10.ADOTable_produit.FieldByName('ID_type').Asinteger:=id_type_prod;
       datamodule10.ADOTable_produit.FieldByName('Nom_produit').AsString:=namos.Text;
        datamodule10.ADOTable_produit.FieldByName('code_produit').AsString:=code_prod.Text;
        datamodule10.ADOTable_produit.FieldByName('Prix').AsString:=prix.Text;
        datamodule10.ADOQuery_rech_type.close;


// Valider l'enregistrement
   Post;

  end
else
begin
ShowMessage('Erreur le type de produit n existe pas !! pour ajouter un nouveau type aller dans le menu  produit -- ajouter type ');

end;
end;
end;
 finally
 // Libérer les compos crées ainsi que la fiche ajouter
    namos.Free;
    code_prod.Free;
    prix.free;
    type_prod.Free;
    Ajouter.Free;


end;
end;
end;


procedure TForm2.BitBtn8Click(Sender: TObject);
var Modifier: TForm;
    nom_prod,type_prod,prix_prod,code_prod:TEdit;
    id_type: string;
    m:Currency;

begin
if (dbgrid5.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
 Nom_prod:=TEdit.Create(Nil);
 code_prod:=TEdit.Create(Nil);
 prix_prod:=TEdit.Create(Nil);



 // Créer le message modifier l'enregistrement (#13= Sauter la ligne entrer)

 modifier := CreateMessageDialog('Modifier produit                                   '+#13+#13+
                                 'nom                                                          '+#13+#13+#13+
                                'Code                                                           '+#13+#13+#13+#13+
                                'Prix                                                            '+#13+#13+#13+#13
                                ,mtInformation,[mbYes, mbCancel]);

 with Modifier do
 try
 // Modifier le titre de le fenetre
 Caption := 'Modifier produit';
 width :=400;
 height :=900;
 autoscroll:=false;
 autosize:=true;



 // Modifier la position de la zone de nom de produit
 nom_prod.Parent:=modifier;
 nom_prod.Left:=55;
 nom_prod.Top:=50;
 nom_prod.Width:=150;
 nom_prod.Height:=30;

 // Modifier la position de la zone de code de produit
 code_prod.Parent:=modifier;
 code_prod.Left:=55;
 code_prod.Top:=100;
 code_prod.Width:=150;
 code_prod.Height:=30;

 // Modifier la position de la zone de prix de produit
 prix_prod.Parent:=modifier;
 prix_prod.Left:=55;
 prix_prod.Top:=160;
 prix_prod.Width:=150;
 prix_prod.Height:=30;


 // Remplir les valeurs de chaque zone de texte
nom_prod.Text:= datamodule10.ADOTable_produit.Fields[3].AsString;
code_prod.Text:= datamodule10.ADOTable_produit.Fields[2].AsString;


prix_prod.Text:=datamodule10.ADOTable_produit.Fields[4].Asstring;

 if (ShowModal = ID_YES) then
Begin
With datamodule10.ADOTable_produit Do
begin
// Mettre la table mode d'edition = modification
   Edit;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)
   Fields[3].Value:=nom_prod.Text;
   Fields[2].Value:=code_prod.Text;
   m:=StrToCurr(prix_prod.Text);
   Fields[4].Value:=m;

// Valider l'enregistrement
   Post;

end;
end;
 finally
 // Libérer les compos crées ainsi que la fiche modifier
    nom_prod.Free;
    code_prod.Free;
    prix_prod.Free;
    modifier.Free;


end;
end;
end;

procedure TForm2.BitBtn9Click(Sender: TObject);
begin
if (dbgrid5.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
if MessageDlg('Etes-vous sûr de vouloir supprimer ce produit ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  datamodule10.ADOTable_produit.Delete;
end;
end;

procedure TForm2.SpeedButton15Click(Sender: TObject);
begin
dbgrid6.Visible:=false;
dbgrid6.Visible:=true;

end;

procedure TForm2.DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  datamodule10.ADOQuery_rech_type.close;
 if datamodule10.ADOTable_type_produit.FieldByName('type').Asstring ='' then
        begin
        DBGrid6.Canvas.Brush.Color:= cllime;
        DBGrid6.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable_type_produit.FieldByName('type').Asstring=edit7.Text)   then
        begin
        DBGrid6.Canvas.Brush.Color:= Clred;
        DBGrid6.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

end;

procedure TForm2.SpeedButton20Click(Sender: TObject);
begin
if (dbgrid6.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
if MessageDlg('Etes-vous sûr de vouloir supprimer ce type de produit ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  datamodule10.ADOTable_type_produit.Delete;
end;
end;


procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
panel4.Visible:=false;
panel5.Visible:=false;
panel6.Visible:=false;
panel7.Visible:=false;
combobox2.Visible:=false;
buttongroupbox.Visible:=false;
panel3.Visible:=false;
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel2.Visible:=true;
with form12 do
begin
showmodal;
end;
end;

procedure TForm2.DBGrid7DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var  i : integer;
    begin
        if datamodule10.ADOTable_TVA.FieldByName('Nom_TVA').Asstring ='' then
        begin
        DBGrid7.Canvas.Brush.Color:= cllime;
        DBGrid7.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable_TVA.FieldByName('Nom_TVA').Asstring=edit8.Text) and (edit9.text='P')  then
        begin
        DBGrid7.Canvas.Brush.Color:= Clred;
        DBGrid7.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

        if (edit8.text='Nom') and (datamodule10.ADOTable_TVA.FieldByName('pourcentage_TVA').Asstring=edit9.Text)  then
        begin
        DBGrid7.Canvas.Brush.Color:= Clred;
        DBGrid7.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;


        if (datamodule10.ADOTable_TVA.FieldByName('Nom_TVA').Asstring=edit8.Text) and (datamodule10.ADOTable_TVA.FieldByName('pourcentage_TVA').Asstring=edit9.Text)  then
        begin
        DBGrid7.Canvas.Brush.Color:= Clred;
        DBGrid7.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

    end;

procedure TForm2.Lister1Click(Sender: TObject);
begin
panel9.Visible:=false;
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel5.Visible:=false;
panel4.Visible:=false;
groupbox1.Visible:=false;
panel3.Visible:=false;
panel7.Visible:=false;
combobox2.Visible:=false;
buttongroupbox.Visible:=false;
panel6.Visible:=false;
//panel2.Visible:=false;
//panel5.visible:=true;
panel7.Visible:=true;
panel4.Visible:=true;
groupbox1.Visible:=true;
panel5.Visible:=true;
panel8.Visible:=true;
GroupBox11.Visible:=false;
panel9.Visible:=true;
end;

procedure TForm2.SpeedButton21Click(Sender: TObject);
begin
dbgrid7.Visible:=false;
dbgrid7.Visible:=true;

end;

procedure TForm2.SpeedButton22Click(Sender: TObject);
begin
panel9.Visible:=false;
panel8.Visible:=false;
GroupBox11.Visible:=false;
panel7.Visible:=false;
panel4.Visible:=false;
panel3.Visible:=false;
panel2.Visible:=true;

end;

procedure TForm2.BitBtn10Click(Sender: TObject);
var Ajouter: TForm;
    namos,pourcentage:TEdit;
    s,age_ptv,id_ag,town,ch:string;


begin
if (dbgrid7.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
 namos:=TEdit.Create(Nil);
 pourcentage:=TEdit.Create(Nil);

 // Créer le message ajouter nouveau enregistrement (#13= Sauter la ligne entrer)

 Ajouter := CreateMessageDialog('Ajouter TVA                         '+#13+#13+#13+
                                'Nom de TVA                                                               '+#13+#13+#13+
                                'Pourcentage de TVA                                                       '+#13+#13+#13+#13
                                ,mtInformation,[mbYes, mbCancel]);

 with Ajouter do
 try
 // Modifier le titre de le fenetre
 Caption := 'ajouter TVA';
 width :=400;
 height :=1000;
 autoscroll:=false;
 autosize:=true;

 // Modifier la position de la zone Nom
 namos.parent:=ajouter;
 namos.Left:=55;
 namos.Top:=60;
 namos.Width:=100;
 namos.Height:=30;

 // Modifier la position de la zone pourcentage
 pourcentage.Parent:=Ajouter;
 pourcentage.Left:=55;
 pourcentage.Top:=120;
 pourcentage.Width:=150;
 pourcentage.Height:=40;



 if (ShowModal = ID_YES) then
Begin
  With datamodule10.ADOTable_TVA Do
begin

// Mettre la table sur nouveau enregistrement
   Append;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)

   datamodule10.ADOTable_TVA.FieldByName('Nom_TVA').AsString:=namos.Text;
   datamodule10.ADOTable_TVA.FieldByName('pourcentage_TVA').Asinteger:=strtoint(pourcentage.Text);



// Valider l'enregistrement
   Post;

end;
end;
 finally
 // Libérer les compos crées ainsi que la fiche ajouter
    namos.Free;
    pourcentage.Free;
    Ajouter.Free;


end;
end;
end;

procedure TForm2.BitBtn11Click(Sender: TObject);
var Modifier: TForm;
    nom_tva,pourcentage_tva:TEdit;
    pourcentage: integer;

begin
if (dbgrid7.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
 nom_tva:=TEdit.Create(Nil);
 pourcentage_tva:=TEdit.Create(Nil);



 // Créer le message modifier l'enregistrement (#13= Sauter la ligne entrer)

 modifier := CreateMessageDialog('Modifier  TVA                                   '+#13+#13+
                                 'Nom                                                          '+#13+#13+#13+
                                'Pourcentage                                               '+#13+#13+#13+#13
                                ,mtInformation,[mbYes, mbCancel]);

 with Modifier do
 try
 // Modifier le titre de le fenetre
 Caption := 'Modifier TVA';
 width :=400;
 height :=900;
 autoscroll:=false;
 autosize:=true;



 // Modifier la position de la zone nom de tva
 nom_tva.Parent:=modifier;
 nom_tva.Left:=55;
 nom_tva.Top:=50;
 nom_tva.Width:=150;
 nom_tva.Height:=30;

 // Modifier la position de la zone pourcentage tva
 pourcentage_tva.Parent:=modifier;
 pourcentage_tva.Left:=55;
 pourcentage_tva.Top:=100;
 pourcentage_tva.Width:=150;
 pourcentage_tva.Height:=30;

// Remplir les valeurs de chaque zone de texte

nom_tva.Text:= datamodule10.ADOTable_TVA.Fields[1].AsString;
pourcentage:= datamodule10.ADOTable_TVA.Fields[2].Asinteger;

pourcentage_tva.Text:= inttostr(pourcentage);



 if (ShowModal = ID_YES) then
Begin
With datamodule10.ADOTable_TVA Do
begin
// Mettre la table mode d'edition = modification
   Edit;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)
   Fields[1].Value:=nom_tva.Text;
   Fields[2].Value:=pourcentage_tva.Text;

// Valider l'enregistrement
   Post;

end;
end;
 finally
 // Libérer les compos crées ainsi que la fiche modifier
    nom_tva.Free;
    pourcentage_tva.Free;

end;
end;
end;


procedure TForm2.BitBtn12Click(Sender: TObject);
begin
if (dbgrid7.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin

if MessageDlg('Etes-vous sûr de voloir supprimer TVA ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  datamodule10.ADOTable_TVA.Delete;
end;
end;

procedure TForm2.SpeedButton23Click(Sender: TObject);
begin
if (dbgrid7.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
if (verif<>1) then
ShowMessage('Erreur vous devez Selectionner un TVA')
else
begin
    percent:= datamodule10.ADOTable_TVA.Fields[2].Asinteger;
    ShowMessage('TVA bien validé');
end;

end;

procedure TForm2.DBGrid7CellClick(Column: TColumn);
begin
verif:=1;
end;

procedure TForm2.Quitter1Click(Sender: TObject);
begin
if MessageDlg('Etes-vous sûr de vouloir Deconnecter ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  close();
  showmessage('Administrateur deconnecté');
  end;
end;

procedure TForm2.Deconnexion1Click(Sender: TObject);
begin
if MessageDlg('Etes-vous sûr de vouloir Deconnecter ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  close();
  showmessage('Administrateur deconnecté');
  end;

end;

procedure TForm2.Aide2Click(Sender: TObject);
begin
with form13 do
showmodal;
end;

end.
