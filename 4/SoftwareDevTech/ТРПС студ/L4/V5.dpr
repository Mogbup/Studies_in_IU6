{ ┬√ўшёышЄ№ чэрўхэшх шэЄхуЁрыра}
program V5;
{$APPTYPE CONSOLE}
uses
  SysUtils;
function ftest(x:real):real; begin  ftest:=x end;
function f1(x:real):real;    begin f1:=x+cos(x)  end;
function f2(x:real):real;
  var v:real;
   begin  v:= cos(x+1)*(x+1);
   If v<>0 then f2:=sin(x+1)/v
      else write('Деление на ноль ! ');
   end;
Type Tf=function(x:real):real;
Procedure Trap(a,b:real;F:Tf;n:word;var S:real);
var h,x:real; i:word;
begin
   h:=(b-a)/n;
   x:=a; S:=0;
   for i:=1 to n-1 do begin S:=S+f(x); x:=x+h; end;
   S:=h*((f(a)+f(b))/2+S);
end;

Var S:real;
begin
Writeln('     Значения интегралов: ');
Trap(0,1,ftest,100,S);
writeln('S1= ',S:6:3,' - Тест для прямой y=x на интервале [0,1]');
Trap(-1,1,f1,100,S);   writeln('S2= ',S:6:3);
Trap(1,100,f2,100,S);  writeln('S3= ',S:6:3);
writeln;
readLn;
end.
