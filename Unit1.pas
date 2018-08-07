unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, LoggerPro,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    btnStartLogger: TButton;
    memoLog: TMemo;
    pTop: TPanel;
    btnSendLogMessages: TButton;
    btnStoploggers: TButton;
    seLoggerCount: TSpinEdit;
    procedure btnStartLoggerClick(Sender: TObject);
    procedure btnSendLogMessagesClick(Sender: TObject);
    procedure btnStoploggersClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Loggers: TArray<ILogWriter>
  end;

var
  Form1: TForm1;

implementation

uses  LoggerPro.VCLMemoAppender, LoggerPro.OutputDebugStringAppender;

{$R *.dfm}

procedure TForm1.btnStartLoggerClick(Sender: TObject);
var
  i: integer;
begin
  SetLength(Loggers, seLoggerCount.Value);
  for I := 0 to Length(loggers)-1 do
  begin
    Loggers[i] := BuildLogWriter([TVCLMemoLogAppender.Create(memoLog), TLoggerProOutputDebugStringAppender.Create], nil, TLogType.Debug);
  end;
  for I := 0 to Length(loggers)-1 do
  begin
    Loggers[i].InfoFmt('First log message to Loggers[%d]', [i], Format('Loggers[%s]', [i]));
  end;
end;

procedure TForm1.btnSendLogMessagesClick(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to Length(loggers)-1 do
  begin
    Loggers[i].InfoFmt('Manual log message to Loggers[%d]', [i], Format('Loggers[%s]', [i]));
  end;
end;

procedure TForm1.btnStoploggersClick(Sender: TObject);
begin
  SetLength(Loggers, 0);
end;

end.
