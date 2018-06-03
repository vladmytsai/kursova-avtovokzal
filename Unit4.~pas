unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShellApi, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls;

type
  TBilet = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit6: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    BitBtn3: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Bilet: TBilet;

implementation

uses Unit8, Unit1;

{$R *.dfm}

procedure TBilet.BitBtn1Click(Sender: TObject);
begin
FDM.ADOTable2.Insert;
FDM.ADOTable2.FieldByName('Код рейса').Value := DBLookupComboBox1.Text;
FDM.ADOTable2.FieldByName('ФИО пассажира').Value := Edit2.Text;
FDM.ADOTable2.FieldByName('Дата отправления').Value := DateToStr(DateTimePicker1.Date);
FDM.ADOTable2.FieldByName('Пункт назначения').Value := DBEdit1.Field.AsString;
FDM.ADOTable2.FieldByName('Время отправления').Value := DBEdit3.Field.AsString;
FDM.ADOTable2.FieldByName('Цена билета').Value := DBEdit2.Field.AsInteger;
FDM.ADOTable2.FieldByName('Место').Value := Edit6.Text;
FDM.ADOTable2.Post;

MessageDlg(
'Билет продан' +#13+#10+
'Пассажир: ' + Edit2.Text +#13+#10+
'Направление: ' + DBEdit1.Field.AsString +#13+#10+
'Дата и время отправления: ' + DateToStr(DateTimePicker1.Date) + ' ' + DBEdit3.Field.AsString, mtInformation, [mbOk], 0);
end;

procedure TBilet.BitBtn2Click(Sender: TObject);
begin
ShellExecute(0, nil, 'bilet.xls', nil, nil, SW_SHOWNORMAL);
end;

procedure TBilet.BitBtn3Click(Sender: TObject);
begin
Bilet.Close;
end;

end.
 