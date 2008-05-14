program RackDemo;

uses
  Forms,
  RackMain in 'RackMain.pas' {MainForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'RackControls - Demo';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
