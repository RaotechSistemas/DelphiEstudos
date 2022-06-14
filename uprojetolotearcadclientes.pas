unit uProjetoLotearCadClientes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnClienteSalvar: TButton;
    ComboBox1: TComboBox;
    edtClienteNome: TEdit;
    GroupDadosPessoais: TGroupBox;
    Label1: TLabel;
    procedure btnClienteSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.btnClienteSalvarClick(Sender: TObject);
begin
  ShowMessage(edtClienteNome);
end;

end.

