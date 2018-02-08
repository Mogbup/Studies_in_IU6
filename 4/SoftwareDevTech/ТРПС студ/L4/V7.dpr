{Определение минимального положительного элемента}
program V7;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Const Nm=100;
Type Tmas=array [1..Nm,1..Nm] of integer;

Procedure MinPol(var Mt; N:integer; var min:integer);
var i,j:integer; M: Tmas absolute  Mt;
begin
                 {Задаем начальное значение min}
for i:=1 to N do
for j:=1 to N do
 if M[i,j]>0 then begin min:= M[i,j]; end;

                  {Определяем минимальный положительный}
for i:=1 to N do for j:=1 to N do
    if (M[i,j]<min) and (M[i,j]>0) then  min:=M[i,j];

end;

Var S:real;     i,j,min,n:integer;
    M:Tmas;     x,y:integer; b:boolean;
begin
write('‚ўҐ¤ЁвҐ N: ');readln(N);
randomize;
for i:=1 to N do for j:=1 to N do  M[i,j]:=random(20)-10;
MinPol(M,N,min);

x:=8;
for i:=1 to N do begin
for j:=1 to N do
begin  if M[i,j]=min  then
                      begin write(M[i,j]:x,'-min');
                      if not b then begin x:=x-4; b:=true;end;
                      end
                      else
                      begin
                      write(M[i,j]:x);
                      if b then begin x:=x+4; b:=not b end;
                      end;
                  end;
                  b:=false;
                  writeln; x:=8;
end;
readln;
end.
