unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, DBCtrls;

type
  TPass = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Image1: TImage;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pass: TPass;

implementation

uses Unit8;

{$R *.dfm}

procedure TPass.BitBtn1Click(Sender: TObject);
begin
Pass.Close;
end;

end.
 