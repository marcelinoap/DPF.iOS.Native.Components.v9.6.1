        ��  ��                  �  4   ��
 D P F P R O J E C T         0 )        ﻿// ------------------------------------------------------------------------------
// DPF.iOS.Components
//
// Web: http://www.dpfaragir.com
//
// This project created by DPF.App.Expt
//
// ------------------------------------------------------------------------------
program %0:s;
{$I DPF.iOS.Defs.inc}
{$R *.res}

uses
  System.StartUpCopy,
  FMX.Forms;
begin
  Application.Initialize;
  Application.Run;
end.�  ,   ��
 D P F U N I T       0 )        ﻿unit %0:s;

interface

{$I DPF.iOS.Defs.inc}

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs;

type
  T%1:s = class(T%2:s)
    procedure FormOnShow( Sender: TObject );
  private
    { Private declarations }
  protected
    { Protected declarations }
    procedure PaintRects( const UpdateRects: array of TRectF ); override;
  public
    { Public declarations }
  end;

var
  %1:s: T%1:s;

implementation

{$R *.fmx}

// Important for performance
procedure T%1:s.PaintRects( const UpdateRects: array of TRectF );
begin
  { }
end;

// Important for performance
procedure T%1:s.FormOnShow( Sender: TObject );
begin
  {$IFNDEF DELPHIXE6}
  self.Active            := true; // very important for no crashing
  Application.Terminate; // Important For Application Speed up Performance !!!
  {$ENDIF}
end;

end.

 g  ,   ��
 D P F F O R M       0 )        ﻿object %0:s : T%0:s
  Left = 0
  Top = 0
  Caption = '%0:s'
  ClientHeight = 480
  ClientWidth = 320
  FormFactor.Width = 320
  FormFactor.Height = 480
  FormFactor.Devices = [dkDesktop]
  DesignerMobile = True
  DesignerWidth = 320
  DesignerHeight = 480
  DesignerDeviceName = 'iPhone'
  DesignerOrientation = 0
  OnShow = FormOnShow
end
 