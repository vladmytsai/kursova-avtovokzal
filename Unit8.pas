unit Unit8;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TFDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDM: TFDM;

implementation

uses Unit2, Unit4;

{$R *.dfm}

end.
