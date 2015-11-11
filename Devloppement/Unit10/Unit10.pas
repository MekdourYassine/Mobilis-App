unit Unit10;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule10 = class(TDataModule)
    datasource_agence: TDataSource;
    ADOConnection_agence: TADOConnection;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable_agence: TADOTable;
    DataSource_pointventre: TDataSource;
    ADOConnection_pointvente: TADOConnection;
    ADOTable_pointvente: TADOTable;
    DataSource_profil_user: TDataSource;
    ADOConnection_profil_user: TADOConnection;
    ADOTable_profil_user: TADOTable;
    DataSource_produit: TDataSource;
    ADOConnection_produit: TADOConnection;
    ADOTable_produit: TADOTable;
    DataSource_type_produit: TDataSource;
    ADOConnection_type_produit: TADOConnection;
    ADOTable_type_produit: TADOTable;
    DataSource_compte_admin: TDataSource;
    ADOConnection_compte_admin: TADOConnection;
    ADOTable_compte_admin: TADOTable;
    ADOQuery_authentification: TADOQuery;
    ADOQuery_authentification_user: TADOQuery;
    ADOQuery_rech_type: TADOQuery;
    DataSource_vente: TDataSource;
    ADOTable_vente: TADOTable;
    ADOConnection_vente: TADOConnection;
    ADOQuery_vente_stock: TADOQuery;
    DataSource_stock: TDataSource;
    ADOConnection_stock: TADOConnection;
    ADOTable_stock: TADOTable;
    DataSource_date: TDataSource;
    ADOConnection_date: TADOConnection;
    ADOTable_date: TADOTable;
    DataSource_TVA: TDataSource;
    ADOConnection_TVA: TADOConnection;
    ADOTable_TVA: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule10: TDataModule10;

implementation

{$R *.dfm}

end.
