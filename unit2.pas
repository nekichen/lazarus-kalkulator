unit unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Clear: TButton;
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    AllClear: TButton;
    Tambah: TButton;
    Kurang: TButton;
    Kali: TButton;
    Bagi: TButton;
    SamaDengan: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    procedure AllClearClick(Sender: TObject);
    procedure BagiClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure KaliClick(Sender: TObject);
    procedure KurangClick(Sender: TObject);
    procedure SamaDenganClick(Sender: TObject);
    procedure TambahClick(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
  private

  public
    Bilangan1, Bilangan2, Hasil: Extended;
    Perintah: String;

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.TambahClick(Sender: TObject);
begin
  Bilangan1:= StrToFloat(Edit1.Text);
  Edit1.Clear;
  Perintah:='Tambah';
end;

procedure TForm1.SamaDenganClick(Sender: TObject);
begin
  if Perintah = 'Tambah' then
  begin
    Bilangan2:= StrToFloat(Edit1.Text);
    Hasil := Bilangan1 + Bilangan2;
    Edit1.Text:= FloatToStr(Hasil);
  end;
  if Perintah = 'Kurang' then
  begin
    Bilangan2:= StrToFloat(Edit1.Text);
    Hasil:= Bilangan1 - Bilangan2;
    Edit1.Text:= FloatToStr(Hasil);
  end;
  if Perintah = 'Kali' then
  begin
    Bilangan2:= StrtoFloat(Edit1.Text);
    Hasil:= Bilangan1 * Bilangan2;
    Edit1.Text:= FloatToStr(Hasil);
  end;
  if Perintah = 'Bagi' then
  begin
    Bilangan2:= StrtoFloat(Edit1.Text);
    Hasil:= Bilangan1 / Bilangan2;
    Edit1.Text:= FloatToStr(Hasil);
  end;
end;

procedure TForm1.KurangClick(Sender: TObject);
begin
  Bilangan1:= StrtoFloat(Edit1.Text);
  Edit1.Clear;
  Perintah:='Kurang';
end;

procedure TForm1.KaliClick(Sender: TObject);
begin
  Bilangan1:=StrToFloat(Edit1.Text);
  Edit1.Clear;
  Perintah:='Kali';
end;

procedure TForm1.BagiClick(Sender: TObject);
begin
  Bilangan1:=StrToFloat(Edit1.Text);
  Edit1.Clear;
  Perintah:='Bagi';
end;

procedure TForm1.ClearClick(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm1.AllClearClick(Sender: TObject);
begin
  Edit1.Text:='0';
end;

procedure TForm1.ButtonClick(Sender: TObject);
begin
   if Edit1.Text = '0' then
  begin
   if TButton(Sender).Caption = ',' then
    Edit1.Text:= '0'
   else
     Edit1.Clear;
   end;

  Edit1.Text := Edit1.Text + TButton(Sender).Caption;
end;

end.

