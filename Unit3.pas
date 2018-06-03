unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TDobReys = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DobReys: TDobReys;

implementation

uses Unit8, Unit1, Unit2;

{$R *.dfm}

procedure TDobReys.Button1Click(Sender: TObject);
begin
FDM.ADOTable1.Insert;
FDM.ADOTable1.FieldByName('��� �����').Value := Edit1.Text;
FDM.ADOTable1.FieldByName('����� �����������').Value := Edit2.Text;
FDM.ADOTable1.FieldByName('����� � ����').Value := Edit3.Text;
FDM.ADOTable1.FieldByName('����� ����������').Value := Edit4.Text;
FDM.ADOTable1.FieldByName('���������� ����').Value := Edit5.Text;
FDM.ADOTable1.FieldByName('��������� ������').Value := Edit6.Text;
FDM.ADOTable1.Post;
 
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';

MessageDlg('���� ��������!', mtInformation, [mbOk], 0);

end;

procedure TDobReys.Button2Click(Sender: TObject);
begin
DobReys.Close;
end;

procedure TDobReys.BitBtn1Click(Sender: TObject);
begin
DobReys.Close;
end;

end.
 