unit untMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.TabControl, System.Actions, FMX.ActnList, FMX.Controls.Presentation,
  FMX.StdCtrls, System.IOUtils, FMX.Helpers.Android,

  //Meus
  FMX.Platform,
  Androidapi.JNI.App,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.Helpers,
  // **************************


   FMX.Objects, FMX.Effects, FMX.Edit, FMX.DateTimeCtrls,
  FMX.Colors, FMX.ListBox, FMX.TMSCustomPicker, FMX.TMSColorPicker,
  FMX.TMSBaseControl, FMX.TMSCustomSelector, FMX.TMSColorSelector,
  FMX.TMSDateTimeEdit, FMX.EditBox, FMX.NumberBox, FMX.Media;

type
  TfrmMain = class(TForm)
    Layout2: TLayout;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    ActionList1: TActionList;
    Layout1: TLayout;
    SpeedButton1: TSpeedButton;
    actMudarAba: TChangeTabAction;
    Layout3: TLayout;
    SpeedButton4: TSpeedButton;
    lytCron: TLayout;
    lblTime: TLabel;
    ShadowEffect1: TShadowEffect;
    Rectangle1: TRectangle;
    VertScrollBox1: TVertScrollBox;
    Layout9: TLayout;
    Layout13: TLayout;
    Rectangle2: TRectangle;
    Layout6: TLayout;
    Layout5: TLayout;
    Layout7: TLayout;
    Label2: TLabel;
    ShadowEffect2: TShadowEffect;
    Layout14: TLayout;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Layout8: TLayout;
    Rectangle3: TRectangle;
    Layout15: TLayout;
    Layout16: TLayout;
    Image2: TImage;
    Layout18: TLayout;
    Label9: TLabel;
    Layout19: TLayout;
    ComboBox3: TComboBox;
    Label10: TLabel;
    ComboBox4: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    ShadowEffect3: TShadowEffect;
    Layout20: TLayout;
    Rectangle4: TRectangle;
    Layout21: TLayout;
    Layout22: TLayout;
    Image3: TImage;
    Layout23: TLayout;
    Label13: TLabel;
    Layout24: TLayout;
    ComboBox5: TComboBox;
    Label14: TLabel;
    ComboBox6: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    ShadowEffect4: TShadowEffect;
    Image1: TImage;
    time: TTimer;
    Layout10: TLayout;
    Rectangle5: TRectangle;
    Layout11: TLayout;
    Layout12: TLayout;
    Image4: TImage;
    Layout17: TLayout;
    Label3: TLabel;
    Layout25: TLayout;
    ComboBox7: TComboBox;
    Label6: TLabel;
    ComboBox8: TComboBox;
    Label7: TLabel;
    Label17: TLabel;
    ShadowEffect5: TShadowEffect;
    MediaPlayer1: TMediaPlayer;
    recBottom: TRectangle;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Layout4: TLayout;
    Label1: TLabel;
    Label4: TLabel;
    Image8: TImage;
    Label8: TLabel;
    ShadowEffect6: TShadowEffect;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure MudarAba(ATabItem: TTabItem; Sender: TObject);
    procedure SetSleep(aEnable:Boolean);

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  ScreenSize: TSize;

implementation

{$R *.fmx}
{$R *.Moto360.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

{ TfrmMain }

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 SetSleep(False);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  SetSleep(True);
end;

procedure TfrmMain.FormResize(Sender: TObject);
var
  ScreenService: IFMXScreenService;

begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXScreenService, IInterface(ScreenService)) then
  begin
    if ScreenService.GetScreenOrientation in [TScreenOrientation.soPortrait, TScreenOrientation.soInvertedPortrait] then
    begin
      ScreenSize := Screen.Size;
      lblTime.Text := IntToStr(ScreenSize.Width) + '*' + IntToStr(ScreenSize.Height);
      lblTime.Text := '05:00';



      if lblTime.Width > lytCron.Width then
      begin
        repeat
          lblTime.TextSettings.Font.Size := lblTime.TextSettings.Font.Size - 1;
        until (lblTime.Width < (lytCron.Width - 10));
      end;


      if lblTime.Width < (lytCron.Width - 10) then
      begin
        repeat
          lblTime.TextSettings.Font.Size := lblTime.TextSettings.Font.Size + 1;
        until (lblTime.Width > (lytCron.Width - 10));
      end;


      lblTime.Position.X := (lytCron.Width / 2) - (lblTime.Width / 2);
      lblTime.Position.y := (lytCron.Height / 2) - (lblTime.Height / 2);

    end
    else
     Begin
      ScreenSize := Screen.Size;
      lblTime.Text := IntToStr(ScreenSize.Width) + '*' + IntToStr(ScreenSize.Height);
      lblTime.Text := '05:00';


      if lblTime.Width > lytCron.Width then
      begin
        repeat
          lblTime.TextSettings.Font.Size := lblTime.TextSettings.Font.Size - 1;
        until (lblTime.Width < (lytCron.Width - 10));
      end;


      if lblTime.Width < (lytCron.Width - 10) then
      begin
        repeat
          lblTime.TextSettings.Font.Size := lblTime.TextSettings.Font.Size + 1;
        until (lblTime.Width > (lytCron.Width - 10));
      end;


      lblTime.Position.X := (lytCron.Width / 2) - (lblTime.Width / 2);
      lblTime.Position.y := (lytCron.Height / 2) - (lblTime.Height / 2);

      //lblTime.Position.X := (lytCron.Width / 2) - (lblTime.Width / 2);
      //lblTime.Position.y := lytCron.Height / 2;
       // lblTime.TextSettings.Font.Size := lblTime.TextSettings.Font.Size - 1;



     End;
  end;

  //Label2.Text := lytCron.Width.ToString+ ' / ' +lytCron.Height.ToString;
  Application.ProcessMessages;
end;

procedure TfrmMain.MudarAba(ATabItem: TTabItem; Sender: TObject);
begin
  actMudarAba.Tab := ATabItem;
  actMudarAba.ExecuteTarget(Sender);
end;



procedure TfrmMain.SetSleep(aEnable: Boolean);
var
    vFlags: integer;
begin
    vFlags := TJWindowManager_LayoutParams.JavaClass.FLAG_TURN_SCREEN_ON or
        TJWindowManager_LayoutParams.JavaClass.FLAG_DISMISS_KEYGUARD or
        TJWindowManager_LayoutParams.JavaClass.FLAG_SHOW_WHEN_LOCKED or
        TJWindowManager_LayoutParams.JavaClass.FLAG_KEEP_SCREEN_ON;

    if aEnable then
    begin
      CallInUIThread (   // uses FMX.Helpers.Android
      procedure
      begin
        TAndroidHelper.Activity.getWindow.setFlags (vFlags, vFlags);
      end );
    end
    else
      CallInUIThread (
      procedure
      begin
        TAndroidHelper.Activity.getWindow.clearFlags (vFlags);
      end );
end;



procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  MudarAba(TabItem1, Sender);
end;

procedure TfrmMain.SpeedButton4Click(Sender: TObject);
begin
  MudarAba(TabItem2,Sender);
end;




end.
