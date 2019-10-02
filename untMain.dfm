object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 452
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Roboto Cn'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object MainMenu1: TMainMenu
    Left = 224
    Top = 112
    object este1: TMenuItem
      Caption = 'SISTEMA'
      object PARMETROS1: TMenuItem
        Caption = 'PAR'#194'METROS'
      end
      object CADASTROS2: TMenuItem
        Caption = 'CADASTROS'
        object CANECAS1: TMenuItem
          Caption = 'CANECAS'
        end
        object CORTESIAS1: TMenuItem
          Caption = 'CORTESIAS'
        end
      end
      object BACKUP1: TMenuItem
        Caption = 'BACKUP'
      end
    end
    object CADASTROS1: TMenuItem
      Caption = 'INSUMOS'
      object MALTES1: TMenuItem
        Caption = 'MALTES'
      end
      object LPULOS1: TMenuItem
        Caption = 'L'#218'PULOS'
      end
      object LEVEDURAS1: TMenuItem
        Caption = 'LEVEDURAS'
      end
      object LAMA1: TMenuItem
        Caption = 'LAMA'
      end
      object DME1: TMenuItem
        Caption = 'DME'
      end
    end
    object CONTROLEDESADA1: TMenuItem
      Caption = 'SA'#205'DAS'
    end
    object CUBO1: TMenuItem
      Caption = 'CUBO'
    end
  end
end
