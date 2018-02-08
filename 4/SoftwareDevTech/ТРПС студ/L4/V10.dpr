{Сортировка четных строк массива}
program V10;
{$APPTYPE CONSOLE}
uses
  SysUtils;


const N=5;
var m:array  [1..N,1..N] of integer;
i,j,b,d,x,y:integer;
Begin
randomize;
x:=5;
for i:=1 to N do begin
writeln;
for j:=1 to N do begin
 m[i,j]:=random(10);
 write(m[i,j]:x) end;
end;
writeln; writeln;
for i:=1 to N do
for j:=1 to N do
for d:=1 to N-1 do
 if odd(i) then
   if m[i,d]>m[i,d+1] then begin
      b:=m[i,d]; m[i,d]:=m[i,d+1]; m[i,d+1]:=b;
      end;

x:=5;
for i:=1 to N do begin
for j:=1 to N do write(m[i,j]:x);
writeln;
end;
 readln;
       end.













