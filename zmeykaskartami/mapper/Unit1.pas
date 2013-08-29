unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Edit4: TEdit;
    Label2: TLabel;
    Button3: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit5: TEdit;
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure draw;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:array[1..200,1..200] of integer;
  e:textfile;
  xc,yc,pol,polx:integer;
implementation

{$R *.dfm}
procedure tform1.draw;
var i,j:integer;
begin
 repaint;
 paintbox1.canvas.brush.color:=clblack;
 for i:=1 to xc do
 begin
  for j:=1 to yc do
  if a[i,j]=1 then
  begin
    paintbox1.Canvas.Rectangle(round(paintbox1.Width/xc*(i-1)),round(paintbox1.Height/yc*(j-1)),round(paintbox1.Width/xc*(i)),round(paintbox1.Height/yc*(j)));
  end;
 end;
end;
procedure TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var k:integer;
begin
  if checkbox1.Checked then k:=0 else k:=1;
  a[trunc(x/(paintbox1.Width/xc)+1),trunc(y/(paintbox1.Height/yc)+1)]:=k;
  draw;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 xc:=20;yc:=20;pol:=4;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  xc:=strtoint(edit1.text);
  yc:=strtoint(edit2.text);
  pol:=strtoint(edit4.text);
  polx:=strtoint(edit5.text);
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,j,k:integer;
begin
 if checkbox2.Checked then k:=1 else k:=0;
 for i:=1 to 200 do
 for j:=1 to 200 do
 a[i,j]:=k;
 repaint;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i,j:integer; s:string;
begin
 s:=edit3.text;
 assignfile(e,s);
 rewrite(e);
 write(e,xc,' ',yc,' ',polx,' ',pol);
 for j:=1 to yc do
 begin
 writeln(e);
 for i:=1 to xc do
 begin
 write(e,a[i,j]);
 end;
 end;
 closefile(E);
end;

end.
