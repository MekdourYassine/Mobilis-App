unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, Buttons,DBCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Agence1: TMenuItem;
    Rechercher1: TMenuItem;
    Profil1: TMenuItem;
    Afficher1: TMenuItem;
    Modifier1: TMenuItem;
    Produit1: TMenuItem;
    Ajouter1: TMenuItem;
    Consulter1: TMenuItem;
    Aide1: TMenuItem;
    Aide2: TMenuItem;
    Apropos1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
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
    SpeedButton8: TSpeedButton;
    Panel3: TPanel;
    Image1: TImage;
    Label5: TLabel;
    Panel4: TPanel;
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
    Panel5: TPanel;
    GroupBox7: TGroupBox;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Panel6: TPanel;
    GroupBox8: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Edit10: TEdit;
    Label26: TLabel;
    Edit12: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Edit13: TEdit;
    Label29: TLabel;
    Edit14: TEdit;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Panel7: TPanel;
    GroupBox9: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label30: TLabel;
    Label31: TLabel;
    Edit15: TEdit;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    DBGrid1: TDBGrid;
    ComboBox2: TComboBox;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    GroupBox12: TGroupBox;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DBGrid5: TDBGrid;
    Label7: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    SpeedButton15: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton1: TSpeedButton;
    GroupBox10: TGroupBox;
    Deconnexion1: TMenuItem;
    SpeedButton2: TSpeedButton;


    procedure FormCreate(Sender: TObject);
    procedure Apropos1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Ouvrir1Click(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Sauvegarder1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Modifier1Click(Sender: TObject);
    procedure Afficher1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Ajouter1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure Consulter1Click(Sender: TObject);
    procedure Supprimer1Click(Sender: TObject);
    procedure Rechercher1Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);


    procedure Edit15Change(Sender: TObject);
    procedure BBAddClick(Sender: TObject);
    procedure BBEditClick(Sender: TObject);
    procedure BBDeleteClick(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton13Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton18Click(Sender: TObject);
    procedure Deconnexion1Click(Sender: TObject);
  private
    x:integer;
    y:string;
    val:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit5,ShellAPI,Unit9,Unit10;

{$R *.dfm}


procedure TForm3.Apropos1Click(Sender: TObject);
begin
with Form5 do
begin
ShowModal;
end;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
dbgrid1.Visible:=false;
dbgrid2.Visible:=false;
dbgrid3.Visible:=false;


panel7.Visible:=false;
panel6.Visible:=false;
Panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=true;

Panel4.Visible:=true;
Panel5.Visible:=true;
Panel6.Visible:=true;
panel7.Visible:=true;

//Panel3.Visible:=false;
Form3.Caption:='Agence';
end;

procedure TForm3.Ouvrir1Click(Sender: TObject);
var OpenDialog1:TOpenDialog;
begin
 OpenDialog1 := TOpenDialog.Create(self);
 OpenDialog1.InitialDir := GetCurrentDir;

 if OpenDialog1.Execute
  then ShowMessage('File : '+OpenDialog1.FileName)
  else ShowMessage('Open file was cancelled');

  // Free up the dialog
  OpenDialog1.Free;

end;

procedure TForm3.Quitter1Click(Sender: TObject);
begin
if MessageDlg('Etes-vous sûr de vouloir Deconnecter ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  close();
  showmessage('Utilisateur deconnecté');
  end;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
if MessageDlg('Etes-vous sûr de vouloir Deconnecter ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  close();
  showmessage('Utilisateur deconnecté');
  end;

end;

procedure TForm3.Sauvegarder1Click(Sender: TObject);
var
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


procedure TForm3.SpeedButton6Click(Sender: TObject);
begin
Panel2.Visible:=true;
Panel3.Visible:=false;
Panel4.Visible:=false;

label14.Caption:=Form1.num_tel_user;
label4.Caption:=Form1.prenom_user;
label12.Caption:=Form1.adresse_user;
label16.Caption:=Form1.identifiant_user;
label5.Caption:=Form1.mdp_user;
label2.Caption:=Form1.nom_user;

Form3.Caption:='Profil';
end;



procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
panel5.Visible:= false;
Panel4.Visible:=false;

Edit1.Text:=form1.nom_user;
Edit2.Text:=form1.prenom_user;
Edit4.Text:=form1.adresse_user;
Edit3.Text:=form1.num_tel_user;
Edit5.Text:=form1.identifiant_user;
Edit6.Text:=form1.mdp_user;



Panel3.Visible:=true;

Panel4.Visible:=true;
panel5.Visible:=false;
panel7.Visible:=false;
//Panel3.Visible:=false;
Form3.Caption:='Profil';

end;

procedure TForm3.SpeedButton9Click(Sender: TObject);
begin
datamodule10.ADOTable_profil_user.close;
datamodule10.ADOQuery_authentification_user.close;
datamodule10.ADOQuery_authentification_user.Parameters.ParamByName('log').Value:=form1.identifiant_user;
datamodule10.ADOQuery_authentification_user.Parameters.ParamByName('motdp').Value:=form1.mdp_user;
datamodule10.DataSource_profil_user.DataSet:=datamodule10.ADOQuery_authentification_user;
datamodule10.ADOQuery_authentification_user.Open;
if (datamodule10.ADOQuery_authentification_user.RecordCount=1) then
begin
//datamodule10.ADOQuery_authentification_user.close;
//datamodule10.DataSource_profil_user.DataSet:=datamodule10.ADOTable_profil_user;
//datamodule10.ADOTable_profil_user.Open;

With datamodule10.ADOQuery_authentification_user Do
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
datamodule10.ADOQuery_authentification_user.close;
Panel4.Visible:=false;
Panel3.Visible:=true;
Form3.Caption:='profil';
ShowMessage('Modification enregistrée');

end;
procedure TForm3.SpeedButton8Click(Sender: TObject);
begin
Panel4.Visible:=false;
Panel3.Visible:=true;
Form3.Caption:='profil';

end;



procedure TForm3.SpeedButton10Click(Sender: TObject);
begin
begin
Panel4.Visible:=false;
Panel3.Visible:=true;
Form3.Caption:='profil';
end;

end;

procedure TForm3.Modifier1Click(Sender: TObject);
begin
panel5.Visible:= false;
Panel4.Visible:=false;

Edit1.Text:=form1.nom_user;
Edit2.Text:=form1.prenom_user;
Edit4.Text:=form1.adresse_user;
Edit3.Text:=form1.num_tel_user;
Edit5.Text:=form1.identifiant_user;
Edit6.Text:=form1.mdp_user;

Panel3.Visible:=true;

Panel4.Visible:=true;
//Panel3.Visible:=false;
Form3.Caption:='Profil';
panel5.Visible:=false;
panel7.Visible:=false;

end;

procedure TForm3.Afficher1Click(Sender: TObject);
begin
Panel2.Visible:=false;
label12.Caption:=Form1.adresse_user;
label2.Caption:=Form1.nom_user;
label4.Caption:=Form1.prenom_user;
label14.Caption:=Form1.num_tel_user;
label5.Caption:=Form1.mdp_user;
label16.Caption:=Form1.identifiant_user;
Panel2.Visible:=true;

Panel3.Visible:=false;
Panel4.Visible:=false;


Form3.Caption:='Profil';

end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
panel7.Visible:=false;
panel6.Visible:=false;
Panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=true;

Panel4.Visible:=true;
edit7.Visible:=true;
Panel5.Visible:=true;

//Panel3.Visible:=false;
Form3.Caption:='Produit';

end;

procedure TForm3.SpeedButton11Click(Sender: TObject);
var
    Ajouter: TForm;
    type_prod: TEdit;
begin
if (dbgrid5.Visible=false) then
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
procedure TForm3.SpeedButton12Click(Sender: TObject);
begin
panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=true;
end;

procedure TForm3.Ajouter1Click(Sender: TObject);
begin
panel6.Visible:=false;
Panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=true;

Panel4.Visible:=true;
edit7.Visible:=true;
Panel5.Visible:=true;

//Panel3.Visible:=false;
Form3.Caption:='Produit';
end;

procedure TForm3.SpeedButton7Click(Sender: TObject);
begin
panel7.Visible:=false;
panel6.Visible:=false;
Panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=true;

Panel4.Visible:=true;

Panel5.Visible:=true;
edit7.Visible:=false;
Panel6.Visible:=true;

//Panel3.Visible:=false;
Form3.Caption:='Produit';

end;

procedure TForm3.SpeedButton14Click(Sender: TObject);
begin
panel6.Visible:=false;
panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=true;

end;

procedure TForm3.SpeedButton15Click(Sender: TObject);
begin
dbgrid5.Visible:=false;
dbgrid5.Visible:=true;


end;

procedure TForm3.Consulter1Click(Sender: TObject);
begin
panel6.Visible:=false;
Panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=true;

Panel4.Visible:=true;
Panel5.Visible:=true;
edit7.Visible:=false;
Panel6.Visible:=true;

//Panel3.Visible:=false;
Form3.Caption:='Produit';
end;

procedure TForm3.Supprimer1Click(Sender: TObject);
begin
panel6.Visible:=false;
Panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=true;

Panel4.Visible:=true;
Panel5.Visible:=true;
Panel6.Visible:=true;

//Panel3.Visible:=false;
Form3.Caption:='Produit';
end;

procedure TForm3.Rechercher1Click(Sender: TObject);
begin
panel7.Visible:=false;
panel6.Visible:=false;
Panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=true;

Panel4.Visible:=true;
Panel5.Visible:=true;
Panel6.Visible:=true;
panel7.Visible:=true;

//Panel3.Visible:=false;
Form3.Caption:='Agence';

end;

procedure TForm3.SpeedButton17Click(Sender: TObject);
begin

DBGrid1.Visible:=false;
DBGrid2.Visible:=false;
DBGrid3.Visible:=false;

panel7.Visible:=false;
panel6.Visible:=false;
panel5.Visible:=false;
Panel4.Visible:=false;
Panel3.Visible:=true;

end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
with form9 do
begin
showmodal;
end;

end;

procedure TForm3.SpeedButton16Click(Sender: TObject);
begin
dbgrid3.Visible:=false;
dbgrid2.Visible:=false;
dbgrid1.Visible:=false;
if x=1 then
begin
dbgrid2.visible:=true;
end
else
if x=2 then
begin
dbgrid3.Visible:=true;
end
else
dbgrid1.Visible:=true;
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
x:=1;  // la recherche des agences
end;
procedure TForm3.RadioButton2Click(Sender: TObject);
begin
x:=2;  //la recherche des points de vente
end;

procedure TForm3.RadioButton3Click(Sender: TObject);
begin
val:='A';  //l'ajout dune agence
end;

procedure TForm3.RadioButton4Click(Sender: TObject);
begin
val:='P';  //l'ajout d'un point de vente
end;

procedure TForm3.Edit15Change(Sender: TObject);
Var
Jocker: Char;

begin
y:=edit15.Text;

//Jocker := Chr(42); // caractère * si tu retire sa tu va comprendre lol
//with datamodule10.ADOTable1 do // ADoTable c'est ta table
//begin
//Filtered := false;
//if edit15.text = '' then exit
//else
//Begin
//filter := 'Libelle LIKE '+QuotedStr(edit15.text+Jocker);
//Filtered :=true;
//first;
//end;
//end;
end;
procedure TForm3.BBAddClick(Sender: TObject);
var Ajouter: TForm;
    Nom,Code_postal,Adresse,Num_tel,wilaya,agence_pointvente:TEdit;
begin
 nom:=TEdit.Create(Nil);
 Code_postal:=TEdit.Create(Nil);
 Adresse:=TEdit.Create(Nil);
 Num_tel:=TEdit.Create(Nil);
 wilaya:=TEdit.Create(Nil);
 agence_pointvente:=TEdit.Create(Nil);



 // Créer le message ajouter nouveau enregistrement (#13= Sauter la ligne entrer)

 Ajouter := CreateMessageDialog('Ajouter une nouvelle agence/point de vente                       '+#13+#13+#13+
                                'Nom                                                              '+#13+#13+#13+
                                'Code_postal                                                      '+#13+#13+#13+#13+
                                'Wilaya                                                           '+#13+#13+#13+#13+
                                'Adresse                                                          '+#13+#13+#13+#13+
                                'num_tel                                                          '+#13+#13+#13+#13+
                                'type :                                                           '+#13+#13+#13+#13
                                ,mtInformation,[mbYes, mbCancel]);

 with Ajouter do
 try
 // Modifier le titre de le fenetre
 Caption := 'Ajouter une nouvelle agence/point de vente';
 width :=400;
 height :=900;
 autoscroll:=false;
 autosize:=true;

 // Modifier la position de la zone Nom
 Nom.Parent:=Ajouter;
 Nom.Left:=55;
 Nom.Top:=60;
 Nom.Width:=100;
 Nom.Height:=30;

 // Modifier la position de la zone Code_postal
 Code_postal.Parent:=Ajouter;
 Code_postal.Left:=55;
 Code_postal.Top:=120;
 Code_postal.Width:=150;
 Code_postal.Height:=40;

 // Modifier la position de la zone de numero de telephone
 wilaya.Parent:=Ajouter;
 wilaya.Left:=55;
 wilaya.Top:=180;
 wilaya.Width:=150;
 wilaya.Height:=30;


 // Modifier la position de la zone de l'adresse
 Adresse.Parent:=Ajouter;
 Adresse.Left:=55;
 Adresse.Top:=240;
 Adresse.Width:=150;
 Adresse.Height:=30;

 // Modifier la position de la zone de numero de telephone
 num_tel.Parent:=Ajouter;
 num_tel.Left:=55;
 num_tel.Top:=300;
 num_tel.Width:=150;
 num_tel.Height:=30;

 // Modifier la position de la zone de numero de telephone
 agence_pointvente.Parent:=Ajouter;
 agence_pointvente.Left:=55;
 agence_pointvente.Top:=360;
 agence_pointvente.Width:=150;
 agence_pointvente.Height:=30;


 if (ShowModal = ID_YES) then
Begin
With datamodule10.ADOTable1 Do
begin
// Mettre la table sur nouveau enregistrement
   Append;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)
   Fields[1].Value:=wilaya.Text;
   Fields[2].Value:=Nom.Text;
    Fields[3].Value:=Code_postal.Text;
   Fields[4].Value:=adresse.Text;
   Fields[5].Value:=num_tel.Text;

// Valider l'enregistrement
   Post;

end;
end;
 finally
 // Libérer les compos crées ainsi que la fiche ajouter
    nom.Free;
    Code_postal.Free;
    num_tel.Free;
    wilaya.Free;
    agence_pointvente.Free;
    Ajouter.Free;


end;
end;
procedure TForm3.BBEditClick(Sender: TObject);
var Modifier: TForm;
    Adresse,Num_tel,agence_pointvente:TEdit;

begin
 Adresse:=TEdit.Create(Nil);
 Num_tel:=TEdit.Create(Nil);
 agence_pointvente:=TEdit.Create(Nil);



 // Créer le message modifier l'enregistrement (#13= Sauter la ligne entrer)

 modifier := CreateMessageDialog('Modifier agence/point de vente                                   '+#13+#13+
                                 'Adresse                                                          '+#13+#13+#13+
                                'num_tel                                                          '+#13+#13+#13+#13+
                                'type :                                                           '+#13+#13+#13+#13
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
//agence_pointvente.Text:=ADotable1.Fields[1].AsString;


 if (ShowModal = ID_YES) then
Begin
With datamodule10.ADOTable1 Do
begin
// Mettre la table mode d'edition = modification
   Edit;
// Donner la valeur de chaque champs ici on peux utiliser soit Fields[...] soit FieldsByName(...)
   Fields[3].Value:=Adresse.Text;
    Fields[4].Value:=num_tel.Text;
   //Fields[4].Value:=agence_pointvente.Text;

// Valider l'enregistrement
   Post;

end;
end;
 finally
 // Libérer les compos crées ainsi que la fiche modifier
    num_tel.Free;
    agence_pointvente.Free;
    modifier.Free;


end;
end;

procedure TForm3.BBDeleteClick(Sender: TObject);
begin
if MessageDlg('Etes-vous sûr de vouloir suporimer cette agence/point de vente ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  datamodule10.ADOTable1.Delete;
end;


procedure TForm3.FormCreate(Sender: TObject);
var
i : Integer;
texte: string;
begin
ComboBox2.Items.Clear;
for i:= 1 to 48 do  {là je remplit ma combobox}
  begin
//texte:= Format('%d', [i]);
  ComboBox2.items.Add(IntToStr(i));
  end;
end;


procedure TForm3.ComboBox2Change(Sender: TObject);
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

procedure TForm3.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
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
        DBGrid1.Canvas.Brush.Color:= cllime;
        DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable1.FieldByName('ID_agence').Asstring=s+edit15.Text) or  (datamodule10.ADOTable1.FieldByName('ID_agence').Asstring=ch1+edit15.Text) or  (datamodule10.ADOTable1.FieldByName('ID_agence').Asstring=ch2+edit15.Text) then
        begin
        DBGrid1.Canvas.Brush.Color:= Clred;
        DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;


    end;
procedure TForm3.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
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
        DBGrid2.Canvas.Brush.Color:= cllime;
        DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable_agence.FieldByName('ID_agence').Asstring=s+edit15.Text) or  (datamodule10.ADOTable_agence.FieldByName('ID_agence').Asstring=ch1+edit15.Text) or  (datamodule10.ADOTable_agence.FieldByName('ID_agence').Asstring=ch2+edit15.Text) then
        begin
        DBGrid2.Canvas.Brush.Color:= Clred;
        DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;


    end;

procedure TForm3.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
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
        DBGrid3.Canvas.Brush.Color:= cllime;
        DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable_pointvente.FieldByName('ID_agence').Asstring=s+edit15.Text) or  (datamodule10.ADOTable_pointvente.FieldByName('ID_agence').Asstring=ch1+edit15.Text) or  (datamodule10.ADOTable_pointvente.FieldByName('ID_agence').Asstring=ch2+edit15.Text) then
        begin
        DBGrid3.Canvas.Brush.Color:= Clred;
        DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;


    end;


procedure TForm3.SpeedButton13Click(Sender: TObject);
begin
dbgrid4.Visible:=false;
dbgrid4.Visible:=true;

end;

procedure TForm3.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if datamodule10.ADOTable_produit.FieldByName('id_produit').Asstring ='' then
        begin
        DBGrid4.Canvas.Brush.Color:= cllime;
        DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable_produit.FieldByName('Nom_produit').Asstring=edit10.Text) and (edit12.Text='Prix') and (edit13.Text='0') and (edit14.Text='0') then
        begin
        DBGrid4.Canvas.Brush.Color:= Clred;
        DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

        if (datamodule10.ADOTable_produit.FieldByName('Prix').Asstring=edit12.Text) and (edit10.Text='Nom') and (edit13.Text='0') and (edit14.Text='0') then
        begin
        DBGrid4.Canvas.Brush.Color:= Clred;
        DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

        if (datamodule10.ADOTable_produit.FieldByName('Prix').Asstring=edit12.Text) and (datamodule10.ADOTable_produit.FieldByName('Nom_produit').Asstring=edit10.Text) and (edit13.Text='0') and (edit14.Text='0') then
        begin
        DBGrid4.Canvas.Brush.Color:= Clred;
        DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

        if (datamodule10.ADOTable_produit.FieldByName('Prix').Asinteger >= strtoint(edit13.Text)) and (datamodule10.ADOTable_produit.FieldByName('Prix').Asinteger<=strtoint(edit14.Text)) and (edit10.Text='Nom') and (edit12.Text='Prix') then
        begin
        DBGrid4.Canvas.Brush.Color:= Clred;
        DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

        if (datamodule10.ADOTable_produit.FieldByName('Prix').Asinteger >= strtoint(edit13.Text)) and (datamodule10.ADOTable_produit.FieldByName('Prix').Asinteger<=strtoint(edit14.Text)) and (datamodule10.ADOTable_produit.FieldByName('Nom_produit').Asstring=edit10.Text) and (edit12.Text='Prix') then
        begin
        DBGrid4.Canvas.Brush.Color:= Clred;
        DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;


    end;

procedure TForm3.BitBtn7Click(Sender: TObject);
var Ajouter: TForm;
    namos,code_prod,Prix,type_prod:TEdit;
    edit_type_produit:string;
    id_type_prod: integer;


begin
if (dbgrid4.Visible=false) then
begin
showmessage('Erreur vous devez lancer la recherche');
end
else
begin
 namos:=TEdit.Create(Nil);
 code_prod:=TEdit.Create(Nil);
 prix:=TEdit.Create(Nil);
 type_prod:=TEdit.Create(Nil);



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


procedure TForm3.BitBtn8Click(Sender: TObject);
var Modifier: TForm;
    nom_prod,type_prod,prix_prod,code_prod:TEdit;
    id_type: string;
    m:Currency;

begin
if (dbgrid4.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
 Nom_prod:=TEdit.Create(Nil);
 code_prod:=TEdit.Create(Nil);
 prix_prod:=TEdit.Create(Nil);
 type_prod:=TEdit.Create(Nil);



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
id_type:=datamodule10.ADOTable_produit.Fields[1].Asstring;

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


procedure TForm3.BitBtn9Click(Sender: TObject);
begin
if (dbgrid4.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
if MessageDlg('Etes-vous sûr de vouloir supprimer ce produit ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  datamodule10.ADOTable_produit.Delete;

end;
end;
procedure TForm3.DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
        datamodule10.ADOQuery_rech_type.close;
 if datamodule10.ADOTable_type_produit.FieldByName('type').Asstring ='' then
        begin
        DBGrid5.Canvas.Brush.Color:= cllime;
        DBGrid5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;
        if (datamodule10.ADOTable_type_produit.FieldByName('type').Asstring=edit7.Text)   then
        begin
        DBGrid5.Canvas.Brush.Color:= Clred;
        DBGrid5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        end;

end;

procedure TForm3.SpeedButton18Click(Sender: TObject);
begin
if (dbgrid5.Visible=false) then
begin
ShowMessage('Erreur vous devez lancer la recherche');
end
else
begin
if MessageDlg('Etes-vous sûr de vouloir supprimer ce type de produit ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  datamodule10.ADOTable_type_produit.Delete;
end;
end;


procedure TForm3.Deconnexion1Click(Sender: TObject);
begin
if MessageDlg('Etes-vous sûr de vouloir Deconnecter ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  close();
  showmessage('Utilisateur deconnecté');
  end;
end;

end.
