unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    Button1: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure polzti(sender:tobject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure draw;
    procedure rest;
    procedure generate(var a,b:integer);
    function prover(a,b:integer):boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 const xc=20;yc=20;
var
  Form1: TForm1;
  nap:integer;
  zmeyx:array[1..xc*yc] of integer;
  zmeyy:array[1..XC*yc] of integer;
  lzm:integer;
  gam:boolean;
  map:array[1..xc,1..yc] of char;
  celx,cely:integer;
implementation

{$R *.dfm}
function tform1.prover(a,b:integer):boolean;
var i:integer;flag:boolean;
begin
 flag:=false;
 for i:=1 to lzm do
 begin
  if (zmeyx[i]=a)and(zmeyy[i]=b) then flag:=true;
 end;
 result:=flag;
end;
procedure tform1.generate(var a,b:integer);
begin
  randomize;
  a:=random(xc-1)+1;
  b:=random(yc-1)+1;
 while prover(a,b) do
 begin
  a:=random(xc-1)+1;
  b:=random(yc-1)+1;
 end;
end;
procedure tform1.draw;
var i,j:integer;
begin
 repaint;
 for i:=1 to xc do
 begin
  for j:=1 to yc do
  if map[i,j]='1' then
  begin
   paintbox1.canvas.brush.color:=clblack;
   paintbox1.Canvas.Rectangle(round(paintbox1.Width/xc*(i-1)),round(paintbox1.Height/yc*(j-1)),round(paintbox1.Width/xc*(i)),round(paintbox1.Height/yc*(j)));
  end;
 end;
 paintbox1.canvas.brush.color:=clgreen;
 for i:=1 to lzm do
 paintbox1.Canvas.Rectangle(round(paintbox1.Width/xc*(zmeyx[i]-1)),round(paintbox1.Height/yc*(zmeyy[i]-1)),round(paintbox1.Width/xc*(zmeyx[i])),round(paintbox1.Height/yc*(zmeyy[i])));
 paintbox1.canvas.brush.color:=clred;
    paintbox1.Canvas.Rectangle(round(paintbox1.Width/xc*(celx-1)),round(paintbox1.Height/yc*(cely-1)),round(paintbox1.Width/xc*(celx)),round(paintbox1.Height/yc*(cely)));
end;
procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
 vk_left:  if nap<>3 then nap:=1;
 vk_right: if nap<>1 then nap:=3;
 vk_up:    if nap<>4 then nap:=2;
 vk_down:  if nap<>2 then nap:=4;
end;
end;
procedure tform1.rest;
var i,j:integer;e:textfile;
begin
  paintbox1.Repaint;
  randomize;
  assignfile(e,'map.map');
  reset(e);
  zmeyx[1]:=3;
  zmeyy[1]:=3;
  zmeyx[2]:=4;
  zmeyy[2]:=3;
  zmeyx[3]:=5;
  zmeyy[3]:=3;
  lzm:=3;
  nap:=3;
  gam:=true;
  button1.Visible:=true;
  for j:=1 to yc do
  begin
   for i:=1 to xc do
   begin
    read(e,map[i,j]);
   end;
  end;
  generate(celx,cely);
  timer1.Enabled:=false;
  draw;
  closefile(e);
end;
procedure tform1.polzti(sender:tobject);
var i,x,y:integer;
begin
 x:=zmeyx[lzm];
 y:=zmeyy[lzm];
/////////////////////////////////////////////////
 case nap of
 1:begin
    dec(x);if x=0 then x:=xc-1;
   end;
 3:begin
    inc(x);if x=xc then x:=1;
 end;
 2:begin
  dec(y);if y=0 then y:=yc-1;
 end;
 4:begin
  inc(y);if y=yc then y:=1;
 end;
 end;
 if prover(x,y) then    begin gam:=false;rest;end;
 if (x=celx) and (y=cely) then
 begin
  inc(lzm);
  zmeyx[lzm]:=x;
  zmeyy[lzm]:=y;

  generate(celx,cely);

  end;
///////////////////////////////////
 if gam then
 begin;

 for i:=1 to lzm-1 do
 begin
  zmeyx[i]:=zmeyx[i+1];
  zmeyy[i]:=zmeyy[i+1];
 end;
 case nap of
 1:begin
    dec(zmeyx[lzm]);if zmeyx[lzm]=0 then zmeyx[lzm]:=xc-1;
   end;
 3:begin
    inc(zmeyx[lzm]);if zmeyx[lzm]=xc then zmeyx[lzm]:=1;
 end;
 2:begin
  dec(zmeyy[lzm]);if zmeyy[lzm]=0 then zmeyy[lzm]:=yc-1;
 end;
 4:begin
  inc(zmeyy[lzm]);if zmeyy[lzm]=yc then zmeyy[lzm]:=1;
 end;
 end;
 draw;
 end;
end;
procedure TForm1.Button1Click(Sender: TObject);
var i,j:integer;e:textfile;
begin
  randomize;
  assignfile(e,'map.map');
  reset(e);
  zmeyx[1]:=3;
  zmeyy[1]:=3;
  zmeyx[2]:=4;
  zmeyy[2]:=3;
  zmeyx[3]:=5;
  zmeyy[3]:=3;
  lzm:=3;
  nap:=3;
  gam:=true;
  button1.Visible:=false;
  for j:=1 to yc do
  begin
   for i:=1 to xc do
   begin
    read(e,map[i,j]);
   end;
  end;
  generate(celx,cely);
  timer1.Enabled:=true;
  draw;
  closefile(e);
end;

end.
