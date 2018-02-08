{ Метод хорд }
program V4;
{$APPTYPE CONSOLE}
uses
  SysUtils;

var x,p,b,ch,zn,eps:real;
    k:integer;
function f(x:real):real;
   begin f:=x*x-4 end;
  BegiN
   x:=-0.5; b:=1; eps:=0.001;{начальное,конечное и точность}
    k:=0;
    repeat
     p:=x;  ch:=f(x)*(b-x); zn:=(f(b)-f(x));
     x:=x-ch/zn;
     inc(k);
   Until abs(x-p)<=eps;
   writeln(' x = ',x:10:5,'  y = ',f(x):10:5, '  k = ',k);
    readln;
    End.


