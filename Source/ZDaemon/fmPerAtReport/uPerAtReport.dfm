inherited fmPerAtReport: TfmPerAtReport
  Left = 248
  Top = 184
  Width = 1024
  Height = 649
  Caption = #44540#53468#48372#44256#49436
  Font.Charset = HANGEUL_CHARSET
  Font.Height = -12
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 33
    Width = 1016
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 168
      Top = 30
      Width = 24
      Height = 12
      Caption = #54924#49324
    end
    object Label2: TLabel
      Left = 320
      Top = 30
      Width = 24
      Height = 12
      Caption = #48512#49436
    end
    object Label3: TLabel
      Left = 464
      Top = 30
      Width = 24
      Height = 12
      Caption = #49324#48264
    end
    object Label4: TLabel
      Left = 464
      Top = 62
      Width = 24
      Height = 12
      Caption = #51060#47492
    end
    object Label5: TLabel
      Left = 16
      Top = 30
      Width = 24
      Height = 12
      Caption = 'From'
    end
    object Label7: TLabel
      Left = 16
      Top = 62
      Width = 12
      Height = 12
      Caption = 'To'
    end
    object Label6: TLabel
      Left = 168
      Top = 62
      Width = 24
      Height = 12
      Caption = #51648#51216
    end
    object Label8: TLabel
      Left = 320
      Top = 62
      Width = 24
      Height = 12
      Caption = #51649#50948
    end
    object cmb_Company: TComboBox
      Left = 200
      Top = 26
      Width = 97
      Height = 20
      Style = csDropDownList
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 12
      TabOrder = 0
      OnChange = cmb_CompanyChange
    end
    object cmb_Depart: TComboBox
      Left = 352
      Top = 26
      Width = 97
      Height = 20
      Style = csDropDownList
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 12
      TabOrder = 1
    end
    object ed_empNo: TEdit
      Left = 496
      Top = 26
      Width = 113
      Height = 20
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
    end
    object ed_name: TEdit
      Left = 496
      Top = 58
      Width = 113
      Height = 20
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
    end
    object dt_startDate: TDateTimePicker
      Left = 48
      Top = 26
      Width = 97
      Height = 20
      Date = 39330.456451273150000000
      Time = 39330.456451273150000000
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
    end
    object dt_endDate: TDateTimePicker
      Left = 48
      Top = 58
      Width = 97
      Height = 20
      Date = 39330.456451273150000000
      Time = 39330.456451273150000000
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
    end
    object cmb_Jijum: TComboBox
      Left = 200
      Top = 58
      Width = 97
      Height = 20
      Style = csDropDownList
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 12
      TabOrder = 6
      OnChange = cmb_JijumChange
    end
    object cmb_Posi: TComboBox
      Left = 352
      Top = 58
      Width = 97
      Height = 20
      Style = csDropDownList
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 12
      TabOrder = 7
    end
    object Panel1: TPanel
      Left = 621
      Top = 14
      Width = 393
      Height = 73
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 8
      object btn_Search: TSpeedButton
        Left = 112
        Top = 16
        Width = 81
        Height = 30
        Caption = #51312#54924
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000730E0000730E00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
          000000808000800000008000800080800000C0C0C00080808000191919004C4C
          4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
          6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8B4D8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E281E8E8E8E8E8E8E8E8E8E8E8E8E8
          B46C6CD8E8E8E8E8E8E8E8E8E8E8E8E8E2818181E8E8E8E8E8E8E8E8E8E8E8E8
          B46CD86CD8E8E8E8E8E8E8E8E8E8E8E8E281818181E8E8E8E8E8E8E8E8E8E8E8
          B46C6CD86CD8E8E8E8E8E8E8E8E8E8E8E28181818181E8E8E8E8E8E8E8E8E8D7
          5E6C6C6CB46CD8E8E8E8E8E8E8E8E8D781818181E28181E8E8E8E8E8E8E8E8D7
          89896CB4B4B46CD8E8E8E8E8E8E8E8D7ACAC81E2E2E28181E8E8E8E8E8E8D789
          89D7D7B4C7C7C76CE8E8E8E8E8E8D7ACACD7D7E2ACACAC81E8E8E8E8E8D78989
          D7D7D7D76C6C6CE8E8E8E8E8E8D7ACACD7D7D7D7818181E8E8E8E8E8D78989D7
          D7D75E5EE8E8E8E8E8E8E8E8D7ACACD7D7D78181E8E8E8E8E8E8E8D78989D7D7
          D75EE8E8E8E8E8E8E8E8E8D7ACACD7D7D781E8E8E8E8E8E8E8E8D78989D7D7D7
          5EB4E8E8E8E8E8E8E8E8D7ACACD7D7D781E2E8E8E8E8E8E8E8E85E89D7D7D75E
          B4E8E8E8E8E8E8E8E8E881ACD7D7D781E2E8E8E8E8E8E8E8E8E8E85ED7D75EE8
          E8E8E8E8E8E8E8E8E8E8E881D7D781E8E8E8E8E8E8E8E8E8E8E8E8E85E5EE8E8
          E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8}
        NumGlyphs = 2
        OnClick = btn_SearchClick
      end
      object btn_FileSave: TSpeedButton
        Left = 200
        Top = 16
        Width = 81
        Height = 30
        Caption = 'CSV'#51200#51109
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666000
          0000000000006666666604074770400000006666666604074770400000006666
          6666044777744000000066666666044444444000000066666666047777774000
          000066666666047FFFF74000000066666666047FFFF70000000060000066047F
          FFF7400000008777780600000000000000008FF7780666661166660000008F7F
          780666611116660000008FF7780666111111660000008F7F7806666611666600
          00008FF7780666661166660000008888880666611866660000008FF7F7011111
          866666000000688888666666666666000000}
        OnClick = btn_FileSaveClick
      end
      object btn_Print: TSpeedButton
        Left = 184
        Top = 48
        Width = 81
        Height = 30
        Caption = #52636#47141
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        Visible = False
        OnClick = btn_PrintClick
      end
      object btn_Close: TSpeedButton
        Left = 288
        Top = 16
        Width = 81
        Height = 30
        Caption = #45803#44592
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000730B0000730B00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
          000000808000800000008000800080800000C0C0C00080808000191919004C4C
          4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
          6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
          EEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EEE8E8E8E8E8E8E8E8E8E8E8E8EEE3AC
          E3EEE8E8E8E8E8E8E8E8E8E8E8EEE8ACE3EEE8E8E8E8E8E8E8E8E8EEE3E28257
          57E2ACE3EEE8E8E8E8E8E8EEE8E2818181E2ACE8EEE8E8E8E8E8E382578282D7
          578181E2E3E8E8E8E8E8E881818181D7818181E2E8E8E8E8E8E857828989ADD7
          57797979EEE8E8E8E8E88181DEDEACD781818181EEE8E8E8E8E857898989ADD7
          57AAAAA2D7ADE8E8E8E881DEDEDEACD781DEDE81D7ACE8E8E8E857898989ADD7
          57AACEA3AD10E8E8E8E881DEDEDEACD781DEAC81AC81E8E8E8E85789825EADD7
          57ABCFE21110E8E8E8E881DE8181ACD781ACACE28181E8E8E8E8578957D7ADD7
          57ABDE101010101010E881DE56D7ACD781ACDE818181818181E857898257ADD7
          57E810101010101010E881DE8156ACD781E381818181818181E857898989ADD7
          57E882101010101010E881DEDEDEACD781E381818181818181E857898989ADD7
          57ACEE821110E8E8E8E881DEDEDEACD781ACEE818181E8E8E8E857898989ADD7
          57ABE8AB8910E8E8E8E881DEDEDEACD781ACE3ACDE81E8E8E8E857828989ADD7
          57ACE8A3E889E8E8E8E88181DEDEACD781ACE381E8DEE8E8E8E8E8DE5E8288D7
          57A2A2A2E8E8E8E8E8E8E8DE8181DED781818181E8E8E8E8E8E8E8E8E8AC8257
          57E8E8E8E8E8E8E8E8E8E8E8E8AC818181E8E8E8E8E8E8E8E8E8}
        NumGlyphs = 2
        OnClick = btn_CloseClick
      end
    end
  end
  object GroupBox3: TGroupBox [1]
    Left = 0
    Top = 122
    Width = 1016
    Height = 493
    Align = alClient
    TabOrder = 1
    object sg_report: TAdvStringGrid
      Left = 2
      Top = 14
      Width = 1012
      Height = 477
      Cursor = crDefault
      Align = alClient
      ColCount = 12
      DefaultColWidth = 100
      DefaultRowHeight = 21
      FixedCols = 0
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        #45216#51676
        #54924#49324#47749
        #51648#51216#47749
        #48512#49436#47749
        #49324#48264
        #51060#47492
        #52636#44540#49884#44036
        #53748#44540#49884#44036
        #51648#44033#50668#48512
        #51312#53748#50668#48512
        #48708#44256
        #52852#46300#48264#54840)
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'MS Sans Serif'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FixedColWidth = 100
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'MS Sans Serif'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.FindNextCaption = 'Find next'
      SearchFooter.FindPrevCaption = 'Find previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      Version = '6.0.4.4'
    end
  end
  object Panel12: TPanel [2]
    Left = 0
    Top = 0
    Width = 1016
    Height = 33
    Align = alTop
    Caption = #44540#53468#48372#44256#49436
    Color = 15387318
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentBackground = True
    ParentFont = False
    TabOrder = 2
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'csv'
    Filter = 'CSV Files (*.csv)|*.csv|All Files (*.*)|*.*'
    InitialDir = #51200#51109#54624' '#54028#51068#51012' '#49440#53469' '#46608#45716' '#51077#47141' '#54616#49464#50836
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 72
    Top = 448
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    ShowProgress = False
    StoreInDFM = True
    RebuildPrinter = False
    OnGetValue = frReport1GetValue
    Left = 280
    Top = 272
    ReportForm = {
      190000005B110000190000000001000100FFFFFFFFFF090000009A0B00003408
      00000000000000000000000000000000000001FFFF00000000FFFF0000000000
      00000000000000030400466F726D000F0000FFDC000000780000007C0100002C
      010000040000000200CB0000000C005265706F72745469746C65310002010000
      00001C0000002F0400002A0000003100000001000000000000000000FFFFFF1F
      00000000000000000000000000FFFF0000000000020000000100000000000000
      01000000C800000014000000010000000000000200360100000B005061676548
      656164657231000201000000005C0000002F0400005000000030000200010000
      00000000000000FFFFFF1F00000000000000000000000000FFFF000000000002
      000000010000000000000001000000C800000014000000010000000000000200
      A10100000B0050616765466F6F7465723100020100000000000100002F040000
      1C0000003000030001000000000000000000FFFFFF1F00000000000000000000
      000000FFFF000000000002000000010000000000000001000000C80000001400
      00000100000000000002000C0200000B004D6173746572446174613200020100
      000000C00000002F0400001C0000003000050001000000000000000000FFFFFF
      1F00000000000000000000000000FFFF00000000000200000001000000000000
      0001000000C8000000140000000100000000000004005B02000005004C696E65
      3100020006000000A30000001C04000000000000010008000200000000000000
      0000FFFFFF002E020000000000000000000000FFFF0000000000020000000100
      0000000000DD02000006004D656D6F31300002003F0000008800000048000000
      140000000300000001000000000000000000FFFFFF1F2E020000000000010004
      00B3AFC2A500000000FFFF00000000000200000001000000000400B1BCB8B200
      09000000000000000000080000000000020000000000FFFFFF00000000020000
      000000000000005F03000006004D656D6F313600020014000000880000002600
      0000140000000300000001000000000000000000FFFFFF1F2E02000000000001
      000400BCF8B9F800000000FFFF00000000000200000001000000000400B1BCB8
      B20009000000000000000000080000000000020000000000FFFFFF0000000002
      000000000000000400AE03000005004C696E653200020008000000850000001A
      040000000000000100080002000000000000000000FFFFFF002E020000000000
      000000000000FFFF000000000002000000010000000000004004000006004D65
      6D6F31390002004501000024000000A401000014000000030002000200000000
      0000000000FFFFFF1F2E02000000000001001200B0B3C0CEBAB020B1D9C5C220
      BAB8B0EDBCAD00000000FFFF00000000000200000001000000030600B1BCB8B2
      C3BC00100000000200000000000A0000000100020000000000FFFFFF00000000
      02000000000000000000D804000006004D656D6F3230000200EB020000640000
      0044010000180000000300000001000000000000000000FFFFFF1F2E02000000
      000001001800C3E2B7C2C0CF3A5B444154455D205B54494D455DC7F6C0E70000
      0000FFFF00000000000200000001000000020600B1BCB8B2C3BC000A00000000
      0000000000080000000100020000000000FFFFFF000000000200000000000000
      00005D05000005004D656D6F3900020014000000640000007C01000018000000
      0300000001000000000000000000FFFFFF1F2E020000000000010006005B6144
      41595D00000000FFFF00000000000200000001000000000600B1BCB8B2C3BC00
      0A000000000000000000080000000100020000000000FFFFFF00000000020000
      00000000000000E005000005004D656D6F310002008C00000088000000680000
      00140000000300000001000000000000000000FFFFFF1F2E0200000000000100
      0600C8B8BBE7B8ED00000000FFFF00000000000200000001000000000400B1BC
      B8B20009000000000000000000080000000000020000000000FFFFFF00000000
      020000000000000000006306000005004D656D6F32000200F800000088000000
      5C000000140000000300000001000000000000000000FFFFFF1F2E0200000000
      0001000600BACEBCADB8ED00000000FFFF000000000002000000010000000004
      00B1BCB8B20009000000000000000000080000000000020000000000FFFFFF00
      00000002000000000000000000E406000005004D656D6F340002005801000088
      00000054000000140000000300000001000000000000000000FFFFFF1F2E0200
      0000000001000400BBE7B9F800000000FFFF0000000000020000000100000000
      0400B1BCB8B20009000000000000000000080000000000020000000000FFFFFF
      00000000020000000000000000006507000005004D656D6F35000200B0010000
      880000006C000000140000000300000001000000000000000000FFFFFF1F2E02
      000000000001000400C0CCB8A700000000FFFF00000000000200000001000000
      000400B1BCB8B20009000000000000000000080000000000020000000000FFFF
      FF0000000002000000000000000000EA07000005004D656D6F36000200200200
      008800000058000000140000000300000001000000000000000000FFFFFF1F2E
      02000000000001000800C3E2B1D9BDC3B0A300000000FFFF0000000000020000
      0001000000000400B1BCB8B20009000000000000000000080000000000020000
      000000FFFFFF00000000020000000000000000006F08000005004D656D6F3800
      02007C0200008800000054000000140000000300000001000000000000000000
      FFFFFF1F2E02000000000001000800C5F0B1D9BDC3B0A300000000FFFF000000
      00000200000001000000000400B1BCB8B2000900000000000000000008000000
      0000020000000000FFFFFF0000000002000000000000000000F508000006004D
      656D6F3132000200D4020000880000003E000000140000000300000001000000
      000000000000FFFFFF1F2E02000000000001000800C1F6B0A2BFA9BACE000000
      00FFFF00000000000200000001000000000400B1BCB8B2000900000000000000
      0000080000000000020000000000FFFFFF000000000200000000000000000081
      09000006004D656D6F3236000200C5030000040100006A000000140000000300
      000001000000000000000000FFFFFF1F2E02000000000001000E00C6E4C0CCC1
      F6205B50414745235D00000000FFFF00000000000200000001000000020400B1
      BCB8B20009000000000000000000080000000000020000000000FFFFFF000000
      0002000000000000000000130A000006004D656D6F31330002003F000000C000
      000048000000140000000300000001000000000000000000FFFFFF1F2E020000
      000000010014005B41646F51756572792E2241545F44415445225D00000000FF
      FF00000000000200000001000000000400B1BCB8B20009000000000000000000
      080000000000020000000000FFFFFF0000000002000000000000000000AA0A00
      0006004D656D6F31340002008C000000C0000000680000001400000003000000
      01000000000000000000FFFFFF1F2E020000000000010019005B41646F517565
      72792E22434F4D50414E595F4E414D45225D00000000FFFF0000000000020000
      0001000000000400B1BCB8B20009000000000000000000080000000000020000
      000000FFFFFF0000000002000000000000000000400B000006004D656D6F3135
      000200F8000000C00000005C0000001400000003000000010000000000000000
      00FFFFFF1F2E020000000000010018005B41646F51756572792E224445504152
      545F4E414D45225D00000000FFFF00000000000200000001000000000400B1BC
      B8B20009000000000000000000080000000000020000000000FFFFFF00000000
      02000000000000000000D20B000006004D656D6F313800020058010000C00000
      0054000000140000000300000001000000000000000000FFFFFF1F2E02000000
      0000010014005B41646F51756572792E22454D5F434F4445225D00000000FFFF
      00000000000200000001000000000400B1BCB8B2000900000000000000000008
      0000000000020000000000FFFFFF0000000002000000000000000000640C0000
      06004D656D6F3231000200B0010000C00000006C000000140000000300000001
      000000000000000000FFFFFF1F2E020000000000010014005B41646F51756572
      792E22454D5F4E414D45225D00000000FFFF0000000000020000000100000000
      0400B1BCB8B20009000000000000000000080000000000020000000000FFFFFF
      0000000002000000000000000000F80C000006004D656D6F3232000200200200
      00C00000005C000000140000000300000001000000000000000000FFFFFF1F2E
      020000000000010016005B41646F51756572792E2241545F494E54494D45225D
      00000000FFFF00000000000200000001000000000400B1BCB8B2000900000000
      0000000000080000000000020000000000FFFFFF000000000200000000000000
      00008D0D000006004D656D6F323300020080020000C000000054000000140000
      000300000001000000000000000000FFFFFF1F2E020000000000010017005B41
      646F51756572792E2241545F4F555454494D45225D00000000FFFF0000000000
      0200000001000000000400B1BCB8B20009000000000000000000080000000000
      020000000000FFFFFF0000000002000000000000000000230E000006004D656D
      6F3235000200D8020000C00000003A0000001400000003000000010000000000
      00000000FFFFFF1F2E020000000000010018005B41646F51756572792E224154
      5F494E524553554C54225D00000000FFFF000000000002000000010000000004
      00B1BCB8B20009000000000000000000080000000000020000000000FFFFFF00
      00000002000000000000000000A70E000005004D656D6F3700020014000000C0
      00000026000000120000000300000001000000000000000000FFFFFF1F2E0200
      00000000010007005B4C494E45235D00000000FFFF0000000000020000000100
      0000000400B1BCB8B20009000000000000000000000000000000020000000000
      FFFFFF0000000002000000000000000400F60E000005004C696E653300020008
      000000000100001A040000000000000100080002000000000000000000FFFFFF
      002E020000000000000000000000FFFF00000000000200000001000000000000
      8C0F000005004D656D6F3300020018030000C000000046000000140000000300
      000001000000000000000000FFFFFF1F2E020000000000010019005B41646F51
      756572792E2241545F4F5554524553554C54225D00000000FFFF000000000002
      00000001000000000400B1BCB8B2000900000000000000000008000000000002
      0000000000FFFFFF00000000020000000000000000001210000006004D656D6F
      3131000200180300008800000042000000140000000300000001000000000000
      000000FFFFFF1F2E02000000000001000800C1B6C5F0BFA9BACE00000000FFFF
      00000000000200000001000000000400B1BCB8B2000900000000000000000008
      0000000000020000000000FFFFFF000000000200000000000000000094100000
      06004D656D6F31370002006003000088000000A2000000140000000300000001
      000000000000000000FFFFFF1F2E02000000000001000400BAF1B0ED00000000
      FFFF00000000000200000001000000000400B1BCB8B200090000000000000000
      00080000000000020000000000FFFFFF00000000020000000000000000002911
      000006004D656D6F323400020064030000C0000000BE00000014000000030000
      0001000000000000000000FFFFFF1F2E020000000000010017005B41646F5175
      6572792E2241545F434F4E54454E54225D00000000FFFF000000000002000000
      01000000000400B1BCB8B2000900000000000000000008000000000002000000
      0000FFFFFF000000000200000000000000FEFEFF000000000000000000000000
      FC000000000000000000000000000000005800E9E41F70F5B9E24055DDADD0F6
      6FE440}
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = ADOQuery
    Left = 312
    Top = 272
  end
  object ADOQuery: TADOQuery
    Connection = DataModule1.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT a.AT_DATE,a.AT_INTIME,a.AT_OUTTIME,a.AT_INRESULT,a.AT_OUT' +
        'RESULT, '
      
        ' a.AT_CONTENT,a.CA_CARDNO,d.CO_COMPANYCODE,d.CO_NAME as COMPANY_' +
        'NAME,'
      
        ' e.CO_DEPARTCODE,e.CO_NAME as DEPART_NAME,f.PO_POSICODE,f.PO_NAM' +
        'E, '
      ' c.EM_CODE,c.EM_NAME '
      ' FROM (((( TB_ATEVENT as a '
      ' INNER JOIN TB_CARD as b '
      ' ON (a.CA_CARDNO = b.CA_CARDNO) '
      ' AND (a.GROUP_CODE = b.GROUP_CODE)) '
      ' INNER JOIN TB_EMPLOYEE as c '
      ' ON (b.CO_COMPANYCODE = c.CO_COMPANYCODE) '
      ' AND (b.EM_CODE = c.EM_CODE) '
      ' AND (b.GROUP_CODE = c.GROUP_CODE)) '
      ' INNER JOIN TB_COMPANY as d '
      ' ON (c.CO_COMPANYCODE = d.CO_COMPANYCODE) '
      ' AND (c.GROUP_CODE = d.GROUP_CODE)) '
      ' INNER JOIN TB_DEPART as e '
      ' ON (c.CO_DEPARTCODE = e.CO_DEPARTCODE) '
      ' AND (c.CO_COMPANYCODE = e.CO_COMPANYCODE) '
      ' AND (c.GROUP_CODE = e.GROUP_CODE)) '
      ' INNER JOIN TB_POSI as f '
      ' ON (c.PO_POSICODE = f.PO_POSICODE) '
      ' AND (c.GROUP_CODE = f.GROUP_CODE)')
    Left = 42
    Top = 167
  end
end