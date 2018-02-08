{Определение всех максимальных элементов в столбце}

program V12;
{$APPTYPE CONSOLE}
uses
  SysUtils;


Const Nm=100;
Type Tm=array [1..Nm,1..Nm] of word;
var i,j:integer; M: Tm;
Var S:real;     max:array[1..Nm] of integer;
    C,n:integer; b:boolean;
    x,y:integer;
begin
N:=5; randomize;

for i:=1 to N do for j:=1 to N do  M[i,j]:=random(20);

for i:=1 to N do begin   max[i]:=M[1,i];
for j:=2 to N do  if M[j,i]>max[i] then max[i]:= M[j,i];
end;

x:=8;
for i:=1 to N do begin
for j:=1 to N do
begin  if M[j,i]=max[i]  then
                      begin write(M[j,i]:x,'-max');
                      if not b then begin x:=x-4; b:=true;end;
                      end
                      else
                      begin
                      write(M[j,i]:x);
                      if b then begin x:=x+4; b:=not b end;
                      end;
                  end;
                  b:=false; writeln; x:=8;
end;
writeln;
for i:=1 to N do write('Max',i,'=',max[i],' ');

readln;
end.
