inherited fmAdmin: TfmAdmin
  Left = 398
  Top = 79
  Width = 733
  Height = 620
  Caption = #49884#49828#53596#50868#50689#51088#44288#47532
  Font.Height = -12
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter [0]
    Left = 385
    Top = 33
    Width = 2
    Height = 484
  end
  object StatusBar1: TStatusBar [1]
    Left = 0
    Top = 562
    Width = 725
    Height = 24
    Panels = <>
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 517
    Width = 725
    Height = 45
    Align = alBottom
    TabOrder = 1
    OnResize = Panel3Resize
    object btn_Insert: TSpeedButton
      Left = 40
      Top = 9
      Width = 81
      Height = 25
      Caption = #52628#44032
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = btn_InsertClick
    end
    object btn_Update: TSpeedButton
      Left = 152
      Top = 9
      Width = 81
      Height = 25
      Caption = #49688#51221
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      OnClick = btn_UpdateClick
    end
    object btn_Save: TSpeedButton
      Left = 264
      Top = 9
      Width = 81
      Height = 25
      Caption = #51200#51109
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      OnClick = btn_SaveClick
    end
    object btn_Delete: TSpeedButton
      Left = 376
      Top = 9
      Width = 81
      Height = 25
      Caption = #49325#51228
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      OnClick = btn_DeleteClick
    end
    object btn_Cancel: TSpeedButton
      Left = 488
      Top = 9
      Width = 81
      Height = 25
      Caption = #52712#49548
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      OnClick = btn_CancelClick
    end
    object btn_Close: TSpeedButton
      Left = 600
      Top = 9
      Width = 81
      Height = 25
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
  object Panel4: TPanel [3]
    Left = 0
    Top = 33
    Width = 385
    Height = 484
    Align = alLeft
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 383
      Height = 57
      Align = alTop
      TabOrder = 0
      object btn_Search: TSpeedButton
        Left = 232
        Top = 16
        Width = 81
        Height = 25
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
      object Label2: TLabel
        Left = 8
        Top = 22
        Width = 60
        Height = 12
        Caption = #50868#50689#51088#51060#47492
      end
      object ed_sUserName: TEdit
        Left = 88
        Top = 18
        Width = 121
        Height = 20
        ImeName = 'Microsoft IME 2003'
        MaxLength = 3
        TabOrder = 0
        OnKeyPress = ed_sUserNameKeyPress
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 58
      Width = 383
      Height = 425
      Align = alClient
      TabOrder = 1
      object sg_Admin: TAdvStringGrid
        Left = 1
        Top = 1
        Width = 381
        Height = 423
        Cursor = crDefault
        Align = alClient
        ColCount = 12
        DefaultColWidth = 150
        DefaultRowHeight = 21
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        OnClick = sg_AdminClick
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        SearchFooter.FindNextCaption = 'Find next'
        SearchFooter.FindPrevCaption = 'Find previous'
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
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
        FixedColWidth = 101
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        ColumnHeaders.Strings = (
          #50868#50689#51088#50500#51060#46356
          #50868#50689#51088#51060#47492
          #50868#50689#51088#48708#48128#48264#54840
          #50868#50689#51088#44428#54620
          #47560#49828#53552#50976#47924
          #54924#49324#53076#46300
          #51648#51216#53076#46300
          #48512#49436#53076#46300)
        Filter = <>
        Version = '3.3.0.1'
        ColWidths = (
          101
          118
          122
          150
          150
          150
          150
          150
          150
          150
          150
          150)
      end
    end
  end
  object Panel1: TPanel [4]
    Left = 387
    Top = 33
    Width = 338
    Height = 484
    Align = alClient
    TabOrder = 3
    object Label8: TLabel
      Left = 16
      Top = 18
      Width = 72
      Height = 12
      Caption = #50868#50689#51088#50500#51060#46356
    end
    object Label1: TLabel
      Left = 16
      Top = 66
      Width = 60
      Height = 12
      Caption = #50868#50689#51088#51060#47492
    end
    object Label3: TLabel
      Left = 16
      Top = 43
      Width = 84
      Height = 12
      Caption = #50868#50689#51088#48708#48128#48264#54840
    end
    object ed_Userid: TEdit
      Left = 112
      Top = 14
      Width = 170
      Height = 20
      ImeName = 'Microsoft IME 2003'
      MaxLength = 20
      TabOrder = 0
    end
    object ed_UserName: TEdit
      Left = 112
      Top = 62
      Width = 170
      Height = 20
      ImeName = 'Microsoft IME 2003'
      MaxLength = 20
      TabOrder = 2
    end
    object ed_UserPw: TEdit
      Left = 112
      Top = 39
      Width = 170
      Height = 20
      ImeName = 'Microsoft IME 2003'
      MaxLength = 20
      PasswordChar = '*'
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 192
      Width = 305
      Height = 289
      Caption = #44428#54620#44288#47532
      TabOrder = 4
      object Label4: TLabel
        Left = 16
        Top = 42
        Width = 84
        Height = 12
        Caption = #49884#49828#53596#44428#54620#46321#44553
      end
      object Label5: TLabel
        Left = 16
        Top = 65
        Width = 72
        Height = 12
        Caption = #54924#49324#44288#47532#46321#44553
      end
      object btn_CompanyGrade: TSpeedButton
        Left = 112
        Top = 88
        Width = 170
        Height = 41
        Caption = #54924#49324#44428#54620#44288#47532
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFF333333333333000333333333
          3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
          3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
          0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
          BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
          33337777773FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = btn_CompanyGradeClick
      end
      object Label6: TLabel
        Left = 16
        Top = 145
        Width = 72
        Height = 12
        Caption = #52636#51077#48169#48276#46321#44553
      end
      object btn_Building: TSpeedButton
        Left = 112
        Top = 240
        Width = 170
        Height = 41
        Caption = #52636#51077#48169#48276#44428#54620#44288#47532
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFF333333333333000333333333
          3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
          3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
          0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
          BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
          33337777773FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = btn_BuildingClick
      end
      object lb_BuildingCode: TLabel
        Left = 16
        Top = 169
        Width = 48
        Height = 12
        Caption = #48716#46377#53076#46300
      end
      object lb_FloorCode: TLabel
        Left = 16
        Top = 193
        Width = 36
        Height = 12
        Caption = #52789#53076#46300
      end
      object lb_AreaCode: TLabel
        Left = 16
        Top = 217
        Width = 48
        Height = 12
        Caption = #44396#50669#53076#46300
      end
      object chk_Master: TCheckBox
        Left = 16
        Top = 16
        Width = 281
        Height = 17
        Caption = #47560#49828#53552'('#52404#53356#49884' '#47784#46304' '#52636#51077#47928' '#48143' '#54924#49324' '#44288#47532#44032#45733')'
        TabOrder = 0
        OnClick = chk_MasterClick
      end
      object cmb_Grade: TComboBox
        Left = 112
        Top = 38
        Width = 170
        Height = 20
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        TabOrder = 1
      end
      object cmb_companyGrade: TComboBox
        Left = 112
        Top = 61
        Width = 170
        Height = 20
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        ItemIndex = 0
        TabOrder = 2
        Text = '0.'#51204#52404#44428#54620
        OnChange = cmb_companyGradeChange
        Items.Strings = (
          '0.'#51204#52404#44428#54620
          '1.'#54924#49324#44428#54620
          '2.'#51648#51216#44428#54620
          '3.'#48512#49436#44428#54620)
      end
      object cmb_Building: TComboBox
        Left = 112
        Top = 141
        Width = 170
        Height = 20
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        TabOrder = 3
        Text = '0.'#51204#52404#44428#54620
        OnChange = cmb_BuildingChange
        Items.Strings = (
          '0.'#51204#52404#44428#54620
          '1.'#48716#46377#44428#54620
          '2.'#52789#44428#54620
          '3.'#44396#50669#44428#54620
          '4.'#52636#51077#47928#44428#54620)
      end
      object cmb_AdminBuildingCode: TComboBox
        Left = 112
        Top = 165
        Width = 170
        Height = 20
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        TabOrder = 4
        Text = '0.'#51204#52404#44428#54620
        OnChange = cmb_AdminBuildingCodeChange
        Items.Strings = (
          '0.'#51204#52404#44428#54620
          '1.'#48716#46377#44428#54620
          '2.'#52789#44428#54620
          '3.'#44396#50669#44428#54620
          '4.'#52636#51077#47928#44428#54620)
      end
      object cmb_AdminFloorCode: TComboBox
        Left = 112
        Top = 189
        Width = 170
        Height = 20
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        TabOrder = 5
        Text = '0.'#51204#52404#44428#54620
        OnChange = cmb_AdminFloorCodeChange
        Items.Strings = (
          '0.'#51204#52404#44428#54620
          '1.'#48716#46377#44428#54620
          '2.'#52789#44428#54620
          '3.'#44396#50669#44428#54620
          '4.'#52636#51077#47928#44428#54620)
      end
      object cmb_AdminAreaCode: TComboBox
        Left = 112
        Top = 213
        Width = 170
        Height = 20
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        TabOrder = 6
        Text = '0.'#51204#52404#44428#54620
        OnChange = cmb_BuildingChange
        Items.Strings = (
          '0.'#51204#52404#44428#54620
          '1.'#48716#46377#44428#54620
          '2.'#52789#44428#54620
          '3.'#44396#50669#44428#54620
          '4.'#52636#51077#47928#44428#54620)
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 88
      Width = 305
      Height = 97
      Caption = #49548#49549
      TabOrder = 3
      object lb_CompanyName: TLabel
        Left = 16
        Top = 20
        Width = 48
        Height = 12
        Caption = #54924#49324#53076#46300
      end
      object lb_JijumName: TLabel
        Left = 16
        Top = 44
        Width = 48
        Height = 12
        Caption = #51648#51216#53076#46300
      end
      object lb_DepartName: TLabel
        Left = 16
        Top = 68
        Width = 48
        Height = 12
        Caption = #48512#49436#53076#46300
      end
      object cmb_Company: TComboBox
        Left = 104
        Top = 16
        Width = 170
        Height = 20
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        TabOrder = 0
        OnChange = cmb_CompanyChange
      end
      object cmb_Jijum: TComboBox
        Left = 104
        Top = 40
        Width = 170
        Height = 20
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        TabOrder = 1
        OnChange = cmb_JijumChange
      end
      object cmb_Depart: TComboBox
        Left = 104
        Top = 64
        Width = 170
        Height = 20
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        TabOrder = 2
      end
    end
  end
  object Panel12: TPanel [5]
    Left = 0
    Top = 0
    Width = 725
    Height = 33
    Align = alTop
    Caption = #49884#49828#53596#50868#50689#51088#44288#47532
    Color = 15387318
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentBackground = True
    ParentFont = False
    TabOrder = 4
  end
end
