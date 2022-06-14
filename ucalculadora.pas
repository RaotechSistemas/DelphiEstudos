unit uCalculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    sbtnLIMPAR: TSpeedButton;
    sbtnMAISouMENOS: TSpeedButton;
    sbtnPORCENTO: TSpeedButton;
    SpeedButton20: TSpeedButton;
    visor: TEdit;
    sbtnUM: TSpeedButton;
    sbtnOITO: TSpeedButton;
    sbtnNOVE: TSpeedButton;
    sbtnVEZES: TSpeedButton;
    sbtnPONTO: TSpeedButton;
    sbtnZERO: TSpeedButton;
    sbtnIGUAL: TSpeedButton;
    sbtnDIVIDIDO: TSpeedButton;
    sbtnDOIS: TSpeedButton;
    sbtnTRES: TSpeedButton;
    sbtnMAIS: TSpeedButton;
    sbtnQUATRO: TSpeedButton;
    sbtnCINCO: TSpeedButton;
    sbtnSEIS: TSpeedButton;
    sbtnMENOS: TSpeedButton;
    sbtnSETE: TSpeedButton;
    procedure FormCreate(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure sbtnCINCOClick(Sender: TObject);
    procedure sbtnDIVIDIDOClick(Sender: TObject);
    procedure sbtnIGUALClick(Sender: TObject);
    procedure sbtnLIMPARClick(Sender: TObject);
    procedure sbtnMAISClick(Sender: TObject);
    procedure sbtnMAISouMENOSClick(Sender: TObject);
    procedure sbtnMENOSClick(Sender: TObject);
    procedure sbtnNOVEClick(Sender: TObject);
    procedure sbtnOITOClick(Sender: TObject);
    procedure sbtnPONTOClick(Sender: TObject);
    procedure sbtnQUATROClick(Sender: TObject);
    procedure sbtnSEISClick(Sender: TObject);
    procedure sbtnSETEClick(Sender: TObject);
    procedure sbtnUMClick(Sender: TObject);
    procedure sbtnDOISClick(Sender: TObject);
    procedure sbtnTRESClick(Sender: TObject);
    procedure sbtnVEZESClick(Sender: TObject);
    procedure sbtnZEROClick(Sender: TObject);
 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  valor1 : real;
  valor2 : real;
  funcao : integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;
procedure TForm1.FormShow(Sender: TObject);
begin
  Valor1 := 0;
  valor2 := 0;
end;

procedure TForm1.sbtnCINCOClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.sbtnDIVIDIDOClick(Sender: TObject);
begin
   valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 3;
end;

procedure TForm1.sbtnIGUALClick(Sender: TObject);
  var
    soma: real;
begin
  valor2:=StrToFloat(visor.Text);
  case (funcao) of
  1:
  begin
    soma:=valor1+valor2;
    visor.text:=FloatToStr(soma);
  end;
  2:
  begin
    soma:=valor1-valor2;
    visor.text:=FloatToStr(soma);
  end;
  3:
  begin
    soma:=valor1*valor2;
    visor.text:=FloatToStr(soma);
  end;
  4:
  begin
    if(valor2<>0)then
      begin
        soma:=valor1/valor2;
        visor.text:=FloatToStr(soma);
      end
    else
      begin
        SHowMessage('Divisão por zero!!');
        visor.Text:='ERRO';
      end
    end
end;  //finaliza o  case
end;

procedure TForm1.sbtnLIMPARClick(Sender: TObject);
begin
  visor.Text:='';
end;

procedure TForm1.sbtnMAISClick(Sender: TObject);
begin
    valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 1;
end;

procedure TForm1.sbtnMAISouMENOSClick(Sender: TObject);
begin
  visor.Text:='-'+visor.Text;
end;

procedure TForm1.sbtnMENOSClick(Sender: TObject);
begin
    valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 2;
end;

procedure TForm1.sbtnNOVEClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.sbtnOITOClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.sbtnPONTOClick(Sender: TObject);
begin
    valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 2;
end;

procedure TForm1.sbtnQUATROClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.sbtnSEISClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.sbtnSETEClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.sbtnUMClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.sbtnDOISClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.sbtnTRESClick(Sender: TObject);
begin
   visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.sbtnVEZESClick(Sender: TObject);
begin
    valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 4;
end;

procedure TForm1.sbtnZEROClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

end.

