unit uTeste02;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    edtNOME: TEdit;
    edtSOBRENOME: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  nome: string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  nome := edtNOME.text + ' ' + edtSOBRENOME.text;
  if (edtNOME.text ='') or (edtSOBRENOME.text = '') Then
  begin
      ShowMessage('Digite os dados');
  end
  else
   ShowMessage(nome);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edtNOME.text := '';
  edtSOBRENOME.text := '';
end;

end.

