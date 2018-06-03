unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons;

type
  TReys = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reys: TReys;

implementation

uses Unit1, Unit8, Unit3, Unit4;

{$R *.dfm}

procedure TReys.Button1Click(Sender: TObject);
begin
DobReys.Show;
end;

procedure TReys.BitBtn1Click(Sender: TObject);
begin
Reys.Close;
end;

end.
