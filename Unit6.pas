unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TStat = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TMyObject = class
    Kilkist: Integer;
    Summa: Integer;
    Popular: string;

    constructor Create(NewSumma, NewKilkist:integer; NewPopular:string);

  end;

  TUzn = class(TMyObject)
    procedure Uznat; virtual;
  end;

var
  Stat: TStat;
  sum, kil: Integer;
  pop: String;

implementation

uses Unit1, Unit8;

{$R *.dfm}


{ TMyObject }

constructor TMyObject.Create(NewSumma, NewKilkist:integer; NewPopular:string);
begin
  Kilkist:= NewKilkist;
  Summa:= NewSumma;
  Popular:= NewPopular;
end;

{ TUzn }

procedure TUzn.Uznat;
begin
  inherited;
  with FDM.ADOQuery1 do begin
    SQL.Text:= 'SELECT SUM ([Цена билета]) FROM [Пассажиры]';
    Open;
    sum:= StrToInt(Fields[0].AsString);
    Close;
  end;

  kil:= FDM.ADOTable2.recordcount;

  with FDM.ADOQuery1 do begin
    SQL.Text:= 'SELECT TOP 1 * FROM(SELECT TOP 1 [Пассажиры.Пункт назначения], Count([Пассажиры.Пункт назначения]) AS Количество FROM [Пассажиры]  GROUP BY [Пассажиры.Пункт назначения] ORDER BY Count([Пассажиры.Пункт назначения]) DESC)';
    Open;
    pop:= (Fields[0].AsString);
    Close;
  end;
end;

procedure TStat.FormCreate(Sender: TObject);
var
  object1: TMyObject;
begin
  object1:= TMyObject.Create(0, 0, 'Город');

  Edit1.Text:= IntToStr(object1.Summa);
  Edit2.Text:= IntToStr(object1.Kilkist);
  Edit3.Text:= object1.Popular;
end;

procedure TStat.BitBtn1Click(Sender: TObject);
var
  object2: TUzn;
begin
  object2:= TUzn.Create(sum, kil, pop);
  object2.Uznat;
  Edit1.Text:=IntToStr(object2.Summa);
  Edit2.Text:=IntToStr(object2.Kilkist);
  Edit3.Text:=(object2.Popular);
end;

procedure TStat.BitBtn2Click(Sender: TObject);
begin
Stat.Close;
end;

end.

