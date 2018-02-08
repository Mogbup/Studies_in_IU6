unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IWControl, IWExtCtrls, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Ftime:boolean;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var i:integer;
x,h,y:real;
Present1,Present2: TDateTime;
Hour1,Min1,Sec1,MSec1,Hour2,Min2,Sec2,MSec2,t1,t2:word;
SHour,SMin,SSec,SMSec:string;
Procedure StrDecodeTime(Hour,Min,Sec,MSec:word;
                         var SHour,SMin,SSec,SMSec:string);
 Function F(k:byte;S:string):string;
 var L:byte;
 begin while k>Length(S) do S:='0'+S; F:=S; end;
begin
SHour:=F(2,IntToStr(Hour));SMin:=F(2,IntToStr(Min));
SSec:=F(2,IntToStr(Sec));  SMSec:=F(3,IntToStr(MSec));
end;
begin
Present1:= Now; //Фиксируем начало
DecodeTime(Present1, Hour1, Min1, Sec1, MSec1);

x:=0; h:=0.000001;
for i:=1 to 20000000 do begin  x:=x+h; y:=y+(sin(x)/(cos(y)+h))/x; end;

Present2:= Now; //Фиксируем окончание
DecodeTime(Present2, Hour2, Min2, Sec2, MSec2);
         {Вывод результатов}
StrDecodeTime(Hour1,Min1,Sec1,MSec1,SHour,SMin,SSec,SMSec);
t1:=strtoint(SHour+SMin+SSec+SMSec);
StrDecodeTime(Hour2,Min2,Sec2,MSec2,SHour,SMin,SSec,SMSec);
t2:=strtoint(SHour+SMin+SSec+SMSec);
Edit1.Text:=IntToStr(t2-t1);

end;

end.
