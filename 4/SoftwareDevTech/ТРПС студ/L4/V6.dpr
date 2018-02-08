{Метод Симпсона}
program V6;
{$APPTYPE CONSOLE}
uses
  SysUtils;
var  z1,x,z2,h,xn,xk,sum:real; k,n:integer;
function f(x:real):real;
begin   f:=x*x end;
begin
xn:=0; xk:= 1; n:=21;
 h:=(xk-xn)/n; z1:=0; z2:=0; x:=xn+h; k:=0;
    repeat
        inc(k);
        if odd(k) then z1:=f(x)+z1;
        if not odd(k) then z2:=f(x)+z2;
        x:=x+h;
    until k>=n-1;
    sum:=h/3*(f(xn)+f(xk)+4*z1+2*z2);
      writeln(sum:10:10);
      readln;
      end.

