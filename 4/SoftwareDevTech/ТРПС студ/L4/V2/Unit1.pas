unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
Mas=array [1..2,1..100] of real;

var
  Form1: TForm1;
  m1,m2:Mas;
  i,Mx,My,Xs,Ys:integer;
   x,dx:real;
  implementation
{$R *.dfm}
Function y1(x:real):real; begin   y1:=abs(cos(x)*x) end;
Function y2(x:real):real; begin   y2:=abs(sin(x)) end;
procedure TForm1.Button1Click(Sender: TObject);
begin
With Image1.Canvas do
   begin    pen.width:=2; Pen.Color:=ClBlue;
            rectangle(1,1,Image1.Width,Image1.height);
   end;
dx:=(4*pi)/100;
x:=-2*pi;
For i:=1 to 100 do
begin m1[1,i]:=x; m1[2,i]:=y1(x); x:=x+dx; end;
x:=-2*pi;
For i:=1 to 100 do
begin m2[1,i]:=x; m2[2,i]:=y2(x); x:=x+dx; end;

Image1.Canvas.Pen.width:=5;
 {масштаб и смещение}
Mx:=105; My:=50; Xs:=0; Ys:=Image1.Height div 2;

  {рисуем 1-ю функцию}
Image1.Canvas.Pen.Color:=ClRed;
Image1.Canvas.MoveTo(round(m1[1,1]*Mx+Xs),
                     round(-m1[2,1]*My+Image1.Height-Ys) );
for i:=2 to 100 do begin
Image1.Canvas.LineTo(round(m1[1,i]*Mx+Xs),
                     round(-m1[2,i]*My+Image1.Height-Ys) );
  end;
  {рисуем 2-ю функцию}
Image1.Canvas.Pen.Color:=ClGreen;
Image1.Canvas.MoveTo(round(m2[1,1]*Mx+Xs),
                     round(-m2[2,1]*My+Image1.Height-Ys) );
for i:=2 to 100 do begin
Image1.Canvas.LineTo(round(m2[1,i]*Mx+Xs),
                     round(-m2[2,i]*My+Image1.Height-Ys) );
  end;

  {Оси X и У}
With Image1.Canvas do  begin
Pen.width:=2; Pen.Color:=ClBlue;
MoveTo(0,Image1.Height div 2);
LineTo(Image1.Width,Image1.Height div 2);
MoveTo(Image1.Width div 2,0);
LineTo(Image1.Width div 2,Image1.Height);
end;
end;


end.

