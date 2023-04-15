unit cuci1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ActnList,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckGroup1: TCheckGroup;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Harga: TLabel;
    Label5: TLabel;
    Total: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
Var
  jum:integer;
  //tal:char;

begin
  try
  jum:= StrToInt(Edit1.text);

  if RadioButton1.Checked = true Then
  Total.Caption := IntToStr(jum * 6000)
  else if RadioButton2.Checked = true Then
  Total.Caption := IntToStr(jum * 8000)
  else if RadioButton3.Checked = true Then
  Total.Caption := IntToStr(jum * 10000)
  else
  ShowMessage('Pilih Menu Laundry');

  except
    ShowMessage('Jumlah yang di masukan harus angka');
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.text := '';
  Harga.Caption := '';
  Total.Caption := '';
  RadioButton1.Checked := false;
  RadioButton2.Checked := false;
  RadioButton3.Checked := false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
     Harga.Caption := '6.000';
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
    Harga.Caption := '8.000';
end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin
    Harga.Caption := '10.000';
end;

end.

