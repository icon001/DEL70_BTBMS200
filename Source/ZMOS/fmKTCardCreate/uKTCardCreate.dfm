inherited fmKTCardCreate: TfmKTCardCreate
  Left = 198
  Top = 86
  Width = 950
  Height = 647
  Caption = 'KT'#52852#46300#48156#44553
  Font.Charset = HANGEUL_CHARSET
  Font.Height = -12
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel12: TPanel [0]
    Left = 0
    Top = 0
    Width = 942
    Height = 33
    Align = alTop
    Caption = 'KT'#52852#46300#48156#44553
    Color = 15387318
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentBackground = True
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 557
    Width = 942
    Height = 56
    Align = alBottom
    TabOrder = 1
    OnResize = Panel2Resize
    object btn_Update: TSpeedButton
      Left = 209
      Top = 8
      Width = 100
      Height = 33
      Caption = #52852#46300#48156#44553
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
    object btn_Cancel: TSpeedButton
      Left = 606
      Top = 8
      Width = 100
      Height = 33
      Caption = #54868#47732#51648#50880
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
    object btn_employeesave: TSpeedButton
      Left = 417
      Top = 8
      Width = 100
      Height = 33
      Caption = #49324#50896#51200#51109
      Enabled = False
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
      OnClick = btn_employeesaveClick
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 33
    Width = 942
    Height = 524
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 0
      Top = 0
      Width = 942
      Height = 1
      Cursor = crVSplit
      Align = alTop
    end
    object Panel3: TPanel
      Left = 0
      Top = 1
      Width = 942
      Height = 225
      Align = alClient
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 940
        Height = 72
        Align = alTop
        Caption = #48156#44553#45236#50669#51312#54924
        TabOrder = 0
        object lb_CompanyName: TLabel
          Left = 16
          Top = 20
          Width = 48
          Height = 12
          Caption = #54924#49324#53076#46300
        end
        object lb_DepartName: TLabel
          Left = 512
          Top = 20
          Width = 48
          Height = 12
          Caption = #48512#49436#53076#46300
        end
        object lb_PosiName: TLabel
          Left = 16
          Top = 44
          Width = 48
          Height = 12
          Caption = #51649#50948#53076#46300
        end
        object Label4: TLabel
          Left = 264
          Top = 44
          Width = 48
          Height = 12
          Caption = #49324'    '#48264
        end
        object Label5: TLabel
          Left = 512
          Top = 44
          Width = 48
          Height = 12
          Caption = #51060'    '#47492
        end
        object lb_JijumName: TLabel
          Left = 264
          Top = 20
          Width = 48
          Height = 12
          Caption = #51648#51216#53076#46300
        end
        object btn_Close: TSpeedButton
          Left = 848
          Top = 22
          Width = 81
          Height = 25
          Caption = ' '#45803#44592
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
        object cmb_Company: TComboBox
          Left = 80
          Top = 16
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 0
          OnChange = cmb_CompanyChange
        end
        object cmb_Depart: TComboBox
          Left = 576
          Top = 16
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 1
          OnChange = cmb_DepartChange
        end
        object cmb_Posi: TComboBox
          Left = 80
          Top = 40
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 2
          OnChange = cmb_PosiChange
        end
        object ed_EmpNo: TEdit
          Left = 328
          Top = 40
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 3
        end
        object ed_EmpNM: TEdit
          Left = 576
          Top = 40
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 4
        end
        object btn_Search: TBitBtn
          Left = 760
          Top = 22
          Width = 81
          Height = 25
          Caption = #51312#54924
          TabOrder = 5
          OnClick = btn_SearchClick
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
        end
        object cmb_Jijum: TComboBox
          Left = 328
          Top = 16
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 6
          OnChange = cmb_JijumChange
        end
      end
      object sg_Employ: TAdvStringGrid
        Left = 1
        Top = 73
        Width = 940
        Height = 151
        Cursor = crDefault
        Align = alClient
        ColCount = 21
        DefaultColWidth = 90
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
        ScrollBars = ssBoth
        TabOrder = 1
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        SortSettings.AutoColumnMerge = True
        SortSettings.Show = True
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
        ScrollSynch = True
        FixedColWidth = 134
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        ColumnHeaders.Strings = (
          #54924#49324#47749
          #49324#48264
          #52264#49688
          #51060#47492
          #51648#51216#47749
          #48512#49436#47749
          #51649#50948#47749
          #54924#49324#53076#46300
          #51648#51216#53076#46300
          #48512#49436#53076#46300
          #51649#50948#53076#46300
          #49324#45236#51204#54868#48264#54840
          #51077#49324#51068
          #53748#49324#51068
          #50864#54200#48264#54840
          #51452#49548'1'
          #51452#49548'2'
          #51665#51204#54868#48264#54840
          #55092#45824#54256#48264#54840
          #49324#51652#46321#47197#50976#47924
          #52852#46300#48264#54840
          #52852#46300#46321#47197#44396#48516)
        Filter = <>
        Version = '3.3.0.1'
        ColWidths = (
          134
          125
          72
          138
          173
          160
          135
          90
          90
          90
          90
          90
          90
          90
          90
          90
          90
          90
          90
          90
          90)
      end
    end
    object pn_Employ: TPanel
      Left = 0
      Top = 226
      Width = 942
      Height = 298
      Align = alBottom
      TabOrder = 1
      object GroupBox3: TGroupBox
        Left = 1
        Top = 249
        Width = 940
        Height = 47
        Align = alTop
        Caption = #48156#44553#44592#51221#48372
        TabOrder = 0
        object Label19: TLabel
          Left = 368
          Top = 20
          Width = 84
          Height = 12
          Caption = #48156#44553#46108#52852#46300#48264#54840
        end
        object Label2: TLabel
          Left = 16
          Top = 20
          Width = 84
          Height = 12
          Caption = #48156#44553#44592#54252#53944#48264#54840
        end
        object btn_PortRefresh: TSpeedButton
          Left = 248
          Top = 14
          Width = 97
          Height = 25
          Caption = 'Refresh'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00B7CEC400C5DED600C3DAD100C5DBD200C4DAD100C2DA
            D200C7E2DA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BFD5CA00C8D9CF00DDE7E100E7EEEA00EEF3F000EBF1EE00E0E9
            E400CCDBD300B7CDC000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00BBD0C400DBE6E000F7F9F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FDFEFD00E7EEEA00C2D4CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCD1
            C600DDE7E100FDFEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00F1F5F300C3D5CB00FFFFFF00FFFFFF00C2DAD200D1DF
            D800FBFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00ECF2EF00B9CEC200FFFFFF00BFD5C900EBF1
            EE00FFFFFF00FFFFFF001C674B001C674B00FFFFFF00FFFFFF00FFFFFF001C67
            4B001C674B00FFFFFF00FEFFFE00FDFEFE00D1DFD700BED8CE00C7D8CE00F9FB
            FA00FFFFFF00FFFFFF00FFFFFF001C674B001C674B00FFFFFF001C674B001C67
            4B00FFFFFF00FFFFFF00FEFFFE00FBFCFC00E4EDE900BBD3CA00CDDCD300FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C674B001C674B001C674B00FFFF
            FF00FFFFFF00FFFFFF00FDFEFE00FAFCFC00EAF1EE00BCD2C900CCDBD300FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C674B00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FCFDFD00F9FBFB00EBF1EF00BED5CA00C4D6CC00FBFC
            FC00FFFFFF00FFFFFF001C674B001C674B00FFFFFF00FFFFFF00FFFFFF001C67
            4B001C674B00FEFFFE00FBFCFC00F6F9F800E7EFEC00BCD3C800BCD1C600EEF3
            F000FFFFFF00FFFFFF00FFFFFF001C674B001C674B00FFFFFF001C674B001C67
            4B00FFFFFF00FDFEFE00F9FBFB00F3F8F700DDE8E300BAD2C900BED5CB00D3E1
            D900FDFEFD00FEFFFE00FEFFFE00FFFFFF001C674B001C674B001C674B00FFFF
            FF00FDFEFE00FAFCFC00F4F8F700EDF3F100C9DAD100BBD6CC00FFFFFF00B8CD
            C100E3ECE700FBFCFC00FBFCFC00FBFCFC00FDFEFE001C674B00FDFEFE00FBFC
            FC00F8FBFA00F3F8F700EFF5F300D8E4DE00B9CFC300FFFFFF00FFFFFF00FFFF
            FF00BACFC300E0EAE500F7FAFA00F6F9F800F7FAFA00F7FAFA00F6F9F800F4F8
            F700F1F6F500EEF4F200D8E5DF00BBD0C500FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00B8CEC100D4E2DB00E9F1EE00F0F6F400F0F6F500EFF5F300EDF3
            F100E4EDE900D0DFD700BACFC300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00B7CEC400BCD1C500C6D8CE00CBDBD300CBDBD300C6D8
            CE00BDD2C700B8D0C500FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Visible = False
          OnClick = btn_PortRefreshClick
        end
        object btn_CardRead: TSpeedButton
          Left = 648
          Top = 14
          Width = 97
          Height = 25
          Caption = #52852#46300#51069#44592
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666006666666
            66666667B0666666666666667B0666666666666667B066666666666667BB0666
            66666677777BB06666666667BBBBBB06666666667BBB00076666666667BBB066
            66666666667BBB06666666667777BBB06666666667BBBBBB06666666667BBB00
            006666666667BBB06666666666667BBB06666666666667777076}
          OnClick = btn_CardReadClick
        end
        object cmb_ComPort: TComboBox
          Left = 120
          Top = 16
          Width = 121
          Height = 20
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 0
          OnChange = cmb_ComPortChange
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9'
            'COM10'
            'COM11'
            'COM12'
            'COM13'
            'COM14'
            'COM15'
            'COM16'
            'COM17'
            'COM18'
            'COM19'
            'COM20'
            'COM21'
            'COM22'
            'COM23'
            'COM24')
        end
        object ed_CardNo: TEdit
          Left = 472
          Top = 16
          Width = 169
          Height = 20
          Enabled = False
          ImeName = 'Microsoft IME 2003'
          TabOrder = 1
        end
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 940
        Height = 248
        Align = alTop
        Caption = #52852#46300#48156#44553#51221#48372
        TabOrder = 1
        object Label16: TLabel
          Left = 264
          Top = 225
          Width = 66
          Height = 12
          Caption = #55092#45824#54256' '#48264#54840
        end
        object Label15: TLabel
          Left = 16
          Top = 225
          Width = 60
          Height = 12
          Caption = #51665#51204#54868#48264#54840
        end
        object Label13: TLabel
          Left = 264
          Top = 199
          Width = 30
          Height = 12
          Caption = #51452#49548'2'
        end
        object Label12: TLabel
          Left = 16
          Top = 199
          Width = 30
          Height = 12
          Caption = #51452#49548'1'
        end
        object Label11: TLabel
          Left = 16
          Top = 173
          Width = 48
          Height = 12
          Caption = #50864#54200#48264#54840
        end
        object btn_ZipcodeSearch: TSpeedButton
          Left = 192
          Top = 167
          Width = 57
          Height = 25
          Caption = #50864#54200#48264#54840
          OnClick = btn_ZipcodeSearchClick
        end
        object lb_OutDate: TLabel
          Left = 264
          Top = 122
          Width = 36
          Height = 12
          Caption = #53748#49324#51068
        end
        object lb_inDate: TLabel
          Left = 16
          Top = 122
          Width = 36
          Height = 12
          Caption = #51077#49324#51068
        end
        object lb_Name: TLabel
          Left = 16
          Top = 96
          Width = 48
          Height = 12
          Caption = #51060'    '#47492
        end
        object lb_CompanyPhone: TLabel
          Left = 264
          Top = 96
          Width = 48
          Height = 12
          Caption = #51204#54868#48264#54840
        end
        object lb_PosiName1: TLabel
          Left = 264
          Top = 71
          Width = 48
          Height = 12
          Caption = #51649#50948#53076#46300
        end
        object lb_DepartName1: TLabel
          Left = 16
          Top = 71
          Width = 48
          Height = 12
          Caption = #48512#49436#53076#46300
        end
        object lb_CompanyName1: TLabel
          Left = 16
          Top = 45
          Width = 48
          Height = 12
          Caption = #54924#49324#53076#46300
        end
        object lb_JijumName1: TLabel
          Left = 264
          Top = 45
          Width = 48
          Height = 12
          Caption = #51648#51216#53076#46300
        end
        object Label1: TLabel
          Left = 264
          Top = 20
          Width = 48
          Height = 12
          Caption = #52264'    '#49688
        end
        object lb_sabun: TLabel
          Left = 16
          Top = 20
          Width = 48
          Height = 12
          Caption = #49324'    '#48264
        end
        object btn_Image: TSpeedButton
          Left = 584
          Top = 192
          Width = 81
          Height = 25
          Caption = #49324#51652#46321#47197
          OnClick = btn_ImageClick
        end
        object lb_emType: TLabel
          Left = 16
          Top = 148
          Width = 48
          Height = 12
          Caption = #51649#50896#53076#46300
        end
        object lb_FdmsID: TLabel
          Left = 264
          Top = 8
          Width = 54
          Height = 12
          Caption = 'lb_FdmsID'
          Visible = False
        end
        object ed_sHandphone: TEdit
          Left = 336
          Top = 221
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 15
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object ed_sHomePhone: TEdit
          Left = 80
          Top = 221
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 13
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object ed_sAddr2: TEdit
          Left = 336
          Top = 195
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          MaxLength = 50
          TabOrder = 12
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object ed_sAddr1: TEdit
          Left = 80
          Top = 195
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          MaxLength = 50
          TabOrder = 11
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object ed_sZipcode: TEdit
          Left = 80
          Top = 169
          Width = 89
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 10
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object dt_sRetireDt: TDateTimePicker
          Left = 336
          Top = 118
          Width = 169
          Height = 20
          Date = 2958464.456619827000000000
          Time = 2958464.456619827000000000
          ImeName = 'Microsoft IME 2003'
          TabOrder = 9
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object dt_sJoinDt: TDateTimePicker
          Left = 80
          Top = 118
          Width = 169
          Height = 20
          Date = 39315.456619826390000000
          Time = 39315.456619826390000000
          ImeName = 'Microsoft IME 2003'
          TabOrder = 8
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object ed_sEmpNM: TEdit
          Left = 80
          Top = 92
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          MaxLength = 30
          TabOrder = 6
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object ed_sCompanyPhone: TEdit
          Left = 336
          Top = 92
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          MaxLength = 14
          TabOrder = 7
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object cmb_sPosi: TComboBox
          Left = 336
          Top = 67
          Width = 169
          Height = 20
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 5
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object cmb_sDepart: TComboBox
          Left = 80
          Top = 67
          Width = 169
          Height = 20
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 4
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object cmb_sCompany: TComboBox
          Left = 80
          Top = 41
          Width = 169
          Height = 20
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 2
          OnChange = cmb_sCompanyChange
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object cmb_sJijum: TComboBox
          Left = 336
          Top = 41
          Width = 169
          Height = 20
          Style = csDropDownList
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 3
          OnChange = cmb_sJijumChange
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object ed_CardSeq: TEdit
          Left = 336
          Top = 16
          Width = 57
          Height = 20
          Enabled = False
          ImeName = 'Microsoft IME 2003'
          MaxLength = 2
          TabOrder = 1
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object ed_sEmpNo: TEdit
          Left = 80
          Top = 16
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          MaxLength = 9
          TabOrder = 0
          OnExit = ed_sEmpNoExit
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object Panel5: TPanel
          Left = 540
          Top = 16
          Width = 161
          Height = 169
          BevelOuter = bvLowered
          TabOrder = 14
          object Image1: TImage
            Left = 1
            Top = 1
            Width = 159
            Height = 167
            Align = alClient
            Stretch = True
          end
        end
        object ed_EmpImg: TEdit
          Left = 536
          Top = 224
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 16
          Visible = False
        end
        object mem_com: TMemo
          Left = 720
          Top = 16
          Width = 209
          Height = 225
          ImeName = 'Microsoft IME 2003'
          TabOrder = 17
        end
        object cmb_emType: TComboBox
          Left = 80
          Top = 144
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 18
          OnKeyPress = ed_sEmpNoKeyPress
        end
        object chk_DupCard: TCheckBox
          Left = 408
          Top = 16
          Width = 97
          Height = 17
          Caption = #51473#48373#52852#46300#48156#54665
          TabOrder = 19
        end
      end
    end
  end
  inherited CommandArray: TCommandArray
    Commands = <
      item
        CommandName = 'ZipCode'
        CommandKind = 0
        Name = 'TCommand0'
        OnExecute = CommandArrayCommandsTCommand0Execute
      end>
  end
  object ReaderPort: TApdComPort
    Baud = 9600
    AutoOpen = False
    TraceName = 'APRO.TRC'
    LogName = 'APRO.LOG'
    Left = 8
    Top = 556
  end
  object ApdDataPacket1: TApdDataPacket
    Enabled = True
    AutoEnable = False
    ComPort = ReaderPort
    PacketSize = 0
    OnStringPacket = ApdDataPacket1StringPacket
    Left = 40
    Top = 556
  end
  object FileCtrl: TLMDFileCtrl
    Options = [ffNoActionConfirm, ffShowNoProgress, ffUseRecycleBin]
    Left = 203
    Top = 485
  end
  object RzOpenDialog1: TOpenDialog
    Left = 844
    Top = 220
  end
  object ADOQuery: TADOQuery
    Connection = DataModule1.ADOConnection
    Parameters = <>
    Left = 32
    Top = 96
  end
  object fdmsADOQuery: TADOQuery
    Connection = DataModule1.ADOConnection
    Parameters = <>
    Left = 440
    Top = 112
  end
end
