inherited fmMDICardAdmin: TfmMDICardAdmin
  Left = 1397
  Top = 101
  Width = 1024
  Height = 731
  Caption = #44060#51064#48324' '#52852#46300#44428#54620#44288#47532
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 12
  object StatusBar1: TStatusBar [0]
    Left = 0
    Top = 668
    Width = 1016
    Height = 29
    Panels = <
      item
        Width = 1024
      end>
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 33
    Width = 1016
    Height = 635
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 393
      Top = 0
      Width = 1
      Height = 635
      Align = alRight
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 393
      Height = 635
      Align = alClient
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 391
        Height = 192
        Align = alTop
        TabOrder = 0
        object lb_CompanyName: TLabel
          Left = 16
          Top = 20
          Width = 48
          Height = 12
          Caption = #54924#49324#53076#46300
        end
        object lb_DepartName: TLabel
          Left = 16
          Top = 68
          Width = 48
          Height = 12
          Caption = #48512#49436#53076#46300
        end
        object lb_PosiName: TLabel
          Left = 16
          Top = 92
          Width = 48
          Height = 12
          Caption = #51649#50948#53076#46300
        end
        object lb_sabun: TLabel
          Left = 16
          Top = 116
          Width = 48
          Height = 12
          Caption = #49324'    '#48264
        end
        object lb_Name: TLabel
          Left = 16
          Top = 140
          Width = 48
          Height = 12
          Caption = #51060'    '#47492
        end
        object Label21: TLabel
          Left = 16
          Top = 164
          Width = 48
          Height = 12
          Caption = #52852#46300#48264#54840
        end
        object lb_JijumName: TLabel
          Left = 16
          Top = 44
          Width = 48
          Height = 12
          Caption = #51648#51216#53076#46300
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
          Left = 80
          Top = 64
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 1
          OnChange = cmb_DepartChange
        end
        object cmb_Posi: TComboBox
          Left = 80
          Top = 88
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 2
          OnChange = cmb_PosiChange
        end
        object ed_EmpNo: TEdit
          Left = 80
          Top = 112
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 3
          OnKeyPress = ed_EmpNoKeyPress
        end
        object ed_EmpNM: TEdit
          Left = 80
          Top = 136
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 4
          OnKeyPress = ed_EmpNMKeyPress
        end
        object btn_Search: TBitBtn
          Left = 256
          Top = 40
          Width = 120
          Height = 35
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
        object ed_CardNo: TEdit
          Left = 80
          Top = 160
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 6
          OnKeyPress = ed_CardNoKeyPress
        end
        object chk_CardReg: TCheckBox
          Left = 256
          Top = 136
          Width = 129
          Height = 17
          Caption = #52852#46300#46321#47197#44592' '#49324#50857
          TabOrder = 7
          OnClick = chk_CardRegClick
        end
        object cmb_ComPort: TComboBox
          Left = 256
          Top = 160
          Width = 121
          Height = 20
          Enabled = False
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 8
          OnChange = cmb_ComPortChange
        end
        object btn_Close: TBitBtn
          Left = 256
          Top = 80
          Width = 120
          Height = 35
          Caption = #45803#44592
          TabOrder = 9
          OnClick = btn_CloseClick
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
        end
        object chk_NonGrade: TCheckBox
          Left = 254
          Top = 16
          Width = 83
          Height = 17
          Caption = #49888#44508#46321#47197#51088
          TabOrder = 10
          OnClick = chk_NonGradeClick
        end
        object cmb_Jijum: TComboBox
          Left = 80
          Top = 40
          Width = 169
          Height = 20
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 11
          OnChange = cmb_JijumChange
        end
      end
      object sg_Card: TAdvStringGrid
        Left = 1
        Top = 193
        Width = 391
        Height = 441
        Cursor = crDefault
        Align = alClient
        ColCount = 9
        DefaultColWidth = 90
        DefaultRowHeight = 21
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
        OnClick = sg_CardClick
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        OnCheckBoxClick = sg_CardCheckBoxClick
        SortSettings.AutoColumnMerge = True
        SortSettings.Show = True
        SortSettings.AutoFormat = False
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
        FixedColWidth = 95
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        ColumnHeaders.Strings = (
          #54924#49324#47749
          #49324#48264
          #51060#47492
          #52852#46300#48264#54840
          #51648#51216#47749
          #48512#49436#47749
          #51649#50948#47749)
        Filter = <>
        Version = '3.3.0.1'
        ColWidths = (
          95
          88
          84
          143
          79
          90
          90
          90
          90)
      end
    end
    object pn_Employ: TPanel
      Left = 394
      Top = 0
      Width = 622
      Height = 635
      Align = alRight
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 620
        Height = 633
        ActivePage = DoorTab
        Align = alClient
        TabOrder = 0
        OnChange = PageControl1Change
        object DoorTab: TTabSheet
          Caption = #52636#51077#44428#54620#44288#47532
          object Splitter2: TSplitter
            Left = 233
            Top = 105
            Width = 2
            Height = 501
          end
          object Panel4: TPanel
            Left = 347
            Top = 105
            Width = 265
            Height = 501
            Align = alClient
            TabOrder = 0
            object sg_GradeDoor: TAdvStringGrid
              Left = 1
              Top = 34
              Width = 263
              Height = 466
              Cursor = crDefault
              Align = alClient
              ColCount = 4
              DefaultColWidth = 150
              DefaultRowHeight = 21
              FixedCols = 0
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goRowSelect]
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              OnCheckBoxClick = CheckBoxClick
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
              FixedColWidth = 197
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              ColumnHeaders.Strings = (
                #52636#51077#47928' '#47749#52845
                #51204#49569#49345#53468
                #45432#46300#48264#54840
                'MCUID'
                'ECUID'
                'DOORNO')
              Filter = <>
              Version = '3.3.0.1'
              ColWidths = (
                197
                128
                3
                150)
            end
            object Panel16: TPanel
              Left = 1
              Top = 1
              Width = 263
              Height = 33
              Align = alTop
              Caption = #49440#53469#52852#46300#44428#54620#51312#54924
              Color = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentBackground = True
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel5: TPanel
            Left = 235
            Top = 105
            Width = 112
            Height = 501
            Align = alLeft
            TabOrder = 1
            object btn_GradeInsert: TSpeedButton
              Left = 16
              Top = 165
              Width = 81
              Height = 33
              Caption = #44428#54620#46321#47197
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
              OnClick = btn_GradeInsertClick
            end
            object btn_GradeDelete: TSpeedButton
              Left = 16
              Top = 234
              Width = 81
              Height = 33
              Caption = #44428#54620#49325#51228
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                3300377777733333337733333333333333003333333333333377333333333333
                3333333333333333333F333333333333330033333F33333333773333C3333333
                330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                333333377F33333333FF3333C333333330003333733333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
              OnClick = btn_GradeDeleteClick
            end
            object Panel15: TPanel
              Left = 1
              Top = 1
              Width = 110
              Height = 33
              Align = alTop
              Caption = #44428#54620#44288#47532
              Color = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentBackground = True
              ParentFont = False
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 105
            Width = 233
            Height = 501
            Align = alLeft
            TabOrder = 2
            object sg_Door: TAdvStringGrid
              Left = 1
              Top = 34
              Width = 231
              Height = 466
              Cursor = crDefault
              Align = alClient
              ColCount = 4
              DefaultColWidth = 150
              DefaultRowHeight = 21
              FixedCols = 0
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goRowSelect]
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              Multilinecells = True
              OnCheckBoxClick = CheckBoxClick
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
              FixedColWidth = 207
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              ColumnHeaders.Strings = (
                #52636#51077#47928' '#47749#52845
                #45432#46300#48264#54840
                'MCUID'
                'ECUID'
                'DOORNO')
              Filter = <>
              Version = '3.3.0.1'
              ColWidths = (
                207
                116
                4
                150)
            end
            object Panel14: TPanel
              Left = 1
              Top = 1
              Width = 231
              Height = 33
              Align = alTop
              Caption = #52636#51077#47928' '#47785#47197
              Color = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentBackground = True
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel13: TPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 105
            Align = alTop
            TabOrder = 3
            object GroupBox3: TGroupBox
              Left = 1
              Top = 1
              Width = 610
              Height = 96
              Align = alTop
              Caption = #52636#51077#47928' '#47785#47197#51312#54924
              TabOrder = 0
              object lb_Building1: TLabel
                Left = 16
                Top = 20
                Width = 48
                Height = 12
                Caption = #48716#46377#53076#46300
              end
              object lb_FloorCode1: TLabel
                Left = 16
                Top = 44
                Width = 36
                Height = 12
                Caption = #52789#53076#46300
              end
              object lb_AreaCode1: TLabel
                Left = 16
                Top = 68
                Width = 48
                Height = 12
                Caption = #44396#50669#53076#46300
              end
              object cmb_BuildingCode: TComboBox
                Left = 72
                Top = 16
                Width = 145
                Height = 20
                ImeName = 'Microsoft IME 2003'
                ItemHeight = 12
                TabOrder = 0
                OnChange = cmb_BuildingCodeChange
              end
              object cmb_FloorCode: TComboBox
                Left = 72
                Top = 40
                Width = 145
                Height = 20
                ImeName = 'Microsoft IME 2003'
                ItemHeight = 12
                TabOrder = 1
                OnChange = cmb_FloorCodeChange
              end
              object cmb_AreaCode: TComboBox
                Left = 72
                Top = 64
                Width = 145
                Height = 20
                ImeName = 'Microsoft IME 2003'
                ItemHeight = 12
                TabOrder = 2
                OnChange = cmb_AreaCodeChange
              end
            end
          end
        end
        object AlarmTab: TTabSheet
          Caption = #44221#48708#44428#54620#44288#47532
          ImageIndex = 1
          object Panel7: TPanel
            Left = 0
            Top = 105
            Width = 233
            Height = 501
            Align = alLeft
            TabOrder = 0
            object sg_Alarm: TAdvStringGrid
              Left = 1
              Top = 34
              Width = 231
              Height = 466
              Cursor = crDefault
              Align = alClient
              ColCount = 8
              DefaultColWidth = 150
              DefaultRowHeight = 21
              FixedCols = 0
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goRowSelect]
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              Multilinecells = True
              OnCheckBoxClick = CheckBoxClick
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
              FixedColWidth = 209
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              ColumnHeaders.Strings = (
                #44221#48708#44396#50669' '#47749#52845
                #44221#48708#44396#50669#48264#54840
                #45432#46300#48264#54840
                'MCUID'
                'ECUID')
              Filter = <>
              Version = '3.3.0.1'
              ColWidths = (
                209
                116
                4
                150
                150
                150
                150
                150)
            end
            object Panel19: TPanel
              Left = 1
              Top = 1
              Width = 231
              Height = 33
              Align = alTop
              Caption = #44221#48708#44396#50669' '#47785#47197
              Color = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentBackground = True
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel8: TPanel
            Left = 233
            Top = 105
            Width = 112
            Height = 501
            Align = alLeft
            TabOrder = 1
            object SpeedButton2: TSpeedButton
              Left = 16
              Top = 165
              Width = 81
              Height = 33
              Caption = #44428#54620#46321#47197
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
              OnClick = btn_GradeInsertClick
            end
            object SpeedButton3: TSpeedButton
              Left = 16
              Top = 234
              Width = 81
              Height = 33
              Caption = #44428#54620#49325#51228
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                3300377777733333337733333333333333003333333333333377333333333333
                3333333333333333333F333333333333330033333F33333333773333C3333333
                330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                333333377F33333333FF3333C333333330003333733333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
              OnClick = btn_GradeDeleteClick
            end
            object Panel20: TPanel
              Left = 1
              Top = 1
              Width = 110
              Height = 33
              Align = alTop
              Caption = #44428#54620#44288#47532
              Color = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentBackground = True
              ParentFont = False
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 345
            Top = 105
            Width = 267
            Height = 501
            Align = alClient
            TabOrder = 2
            object sg_GradeAlarm: TAdvStringGrid
              Left = 1
              Top = 34
              Width = 265
              Height = 466
              Cursor = crDefault
              Align = alClient
              ColCount = 8
              DefaultColWidth = 150
              DefaultRowHeight = 21
              FixedCols = 0
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goRowSelect]
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              OnCheckBoxClick = CheckBoxClick
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
              FixedColWidth = 239
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              ColumnHeaders.Strings = (
                #44221#48708#44396#50669' '#47749#52845
                #51204#49569#49345#53468
                #44221#48708#45432#46300#48264#54840
                #45432#46300#48264#54840
                'MCUID'
                'ECUID'
                'DOORNO')
              Filter = <>
              Version = '3.3.0.1'
              ColWidths = (
                239
                128
                3
                150
                150
                150
                150
                150)
            end
            object Panel21: TPanel
              Left = 1
              Top = 1
              Width = 265
              Height = 33
              Align = alTop
              Caption = #49440#53469#52852#46300#44428#54620#51312#54924
              Color = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentBackground = True
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 105
            Align = alTop
            TabOrder = 3
            object GroupBox6: TGroupBox
              Left = 1
              Top = 1
              Width = 610
              Height = 96
              Align = alTop
              Caption = #44221#48708#44396#50669' '#47785#47197#51312#54924
              TabOrder = 0
              object lb_Building2: TLabel
                Left = 16
                Top = 20
                Width = 48
                Height = 12
                Caption = #48716#46377#53076#46300
              end
              object lb_FloorCode2: TLabel
                Left = 16
                Top = 44
                Width = 36
                Height = 12
                Caption = #52789#53076#46300
              end
              object lb_AreaCode2: TLabel
                Left = 16
                Top = 68
                Width = 48
                Height = 12
                Caption = #44396#50669#53076#46300
              end
              object cmb_BuildingCode1: TComboBox
                Left = 72
                Top = 16
                Width = 145
                Height = 20
                ImeName = 'Microsoft IME 2003'
                ItemHeight = 0
                TabOrder = 0
                OnChange = cmb_BuildingCode1Change
              end
              object cmb_FloorCode1: TComboBox
                Left = 72
                Top = 40
                Width = 145
                Height = 20
                ImeName = 'Microsoft IME 2003'
                ItemHeight = 0
                TabOrder = 1
                OnChange = cmb_FloorCode1Change
              end
              object cmb_AreaCode1: TComboBox
                Left = 72
                Top = 64
                Width = 145
                Height = 20
                ImeName = 'Microsoft IME 2003'
                ItemHeight = 0
                TabOrder = 2
                OnChange = cmb_AreaCode1Change
              end
            end
          end
        end
        object FoodTab: TTabSheet
          Caption = #49885#49688#44428#54620#44288#47532
          ImageIndex = 2
          TabVisible = False
          object Panel10: TPanel
            Left = 233
            Top = 105
            Width = 112
            Height = 501
            Align = alLeft
            TabOrder = 0
            object SpeedButton4: TSpeedButton
              Left = 16
              Top = 165
              Width = 81
              Height = 33
              Caption = #44428#54620#46321#47197
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
              OnClick = btn_GradeInsertClick
            end
            object SpeedButton5: TSpeedButton
              Left = 16
              Top = 234
              Width = 81
              Height = 33
              Caption = #44428#54620#49325#51228
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                3300377777733333337733333333333333003333333333333377333333333333
                3333333333333333333F333333333333330033333F33333333773333C3333333
                330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                333333377F33333333FF3333C333333330003333733333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
              OnClick = btn_GradeDeleteClick
            end
            object Panel23: TPanel
              Left = 1
              Top = 1
              Width = 110
              Height = 33
              Align = alTop
              Caption = #44428#54620#44288#47532
              Color = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentBackground = True
              ParentFont = False
              TabOrder = 0
            end
          end
          object Panel11: TPanel
            Left = 0
            Top = 105
            Width = 233
            Height = 501
            Align = alLeft
            TabOrder = 1
            object sg_Food: TAdvStringGrid
              Left = 1
              Top = 34
              Width = 231
              Height = 466
              Cursor = crDefault
              Align = alClient
              ColCount = 4
              DefaultColWidth = 150
              DefaultRowHeight = 21
              FixedCols = 0
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goRowSelect]
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              Multilinecells = True
              OnCheckBoxClick = CheckBoxClick
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
              FixedColWidth = 209
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              ColumnHeaders.Strings = (
                #49885#49688#44396#50669' '#47749#52845
                #45432#46300#48264#54840
                'MCUID'
                'ECUID')
              Filter = <>
              Version = '3.3.0.1'
              ColWidths = (
                209
                116
                4
                150)
            end
            object Panel24: TPanel
              Left = 1
              Top = 1
              Width = 231
              Height = 33
              Align = alTop
              Caption = #49885#49688#44396#50669' '#47785#47197
              Color = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentBackground = True
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel12: TPanel
            Left = 345
            Top = 105
            Width = 267
            Height = 501
            Align = alClient
            TabOrder = 2
            object sg_GradeFood: TAdvStringGrid
              Left = 1
              Top = 34
              Width = 265
              Height = 466
              Cursor = crDefault
              Align = alClient
              DefaultColWidth = 150
              DefaultRowHeight = 21
              FixedCols = 0
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goRowSelect]
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              OnCheckBoxClick = CheckBoxClick
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
              FixedColWidth = 240
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              ColumnHeaders.Strings = (
                #49885#49688#44396#50669' '#47749#52845
                #51204#49569#49345#53468
                #45432#46300#48264#54840
                'MCUID'
                'ECUID')
              Filter = <>
              Version = '3.3.0.1'
              ColWidths = (
                240
                128
                3
                150
                150)
            end
            object Panel22: TPanel
              Left = 1
              Top = 1
              Width = 265
              Height = 33
              Align = alTop
              Caption = #49440#53469#52852#46300#44428#54620#51312#54924
              Color = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentBackground = True
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel17: TPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 105
            Align = alTop
            TabOrder = 3
            object GroupBox1: TGroupBox
              Left = 1
              Top = 1
              Width = 610
              Height = 96
              Align = alTop
              Caption = #49885#49688#44396#50669' '#47785#47197#51312#54924
              TabOrder = 0
              object Label14: TLabel
                Left = 16
                Top = 20
                Width = 36
                Height = 12
                Caption = #46041#53076#46300
              end
              object Label15: TLabel
                Left = 16
                Top = 44
                Width = 36
                Height = 12
                Caption = #52789#53076#46300
              end
              object Label16: TLabel
                Left = 16
                Top = 68
                Width = 48
                Height = 12
                Caption = #44396#50669#53076#46300
              end
              object cmb_BuildingCode2: TComboBox
                Left = 72
                Top = 16
                Width = 145
                Height = 20
                ImeName = 'Microsoft IME 2003'
                ItemHeight = 0
                TabOrder = 0
                OnChange = cmb_BuildingCode2Change
              end
              object cmb_FloorCode2: TComboBox
                Left = 72
                Top = 40
                Width = 145
                Height = 20
                ImeName = 'Microsoft IME 2003'
                ItemHeight = 0
                TabOrder = 1
                OnChange = cmb_FloorCode2Change
              end
              object cmb_AreaCode2: TComboBox
                Left = 72
                Top = 64
                Width = 145
                Height = 20
                ImeName = 'Microsoft IME 2003'
                ItemHeight = 0
                TabOrder = 2
                OnChange = cmb_AreaCode2Change
              end
            end
          end
        end
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 1016
    Height = 33
    Align = alTop
    Caption = #44060#51064#48324' '#52852#46300#44428#54620#44288#47532
    Color = 15387318
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentBackground = True
    ParentFont = False
    TabOrder = 2
    object ed_sCardNo: TEdit
      Left = 899
      Top = 5
      Width = 105
      Height = 24
      BevelEdges = [beRight, beBottom]
      BiDiMode = bdLeftToRight
      Enabled = False
      ImeName = 'Microsoft IME 2003'
      ParentBiDiMode = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 803
      Top = 5
      Width = 89
      Height = 24
      BevelEdges = [beRight, beBottom]
      Color = clBtnFace
      Enabled = False
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
      Text = #52852#46300#48264#54840
    end
  end
  object Pan_Gauge: TPanel [3]
    Left = 16
    Top = 392
    Width = 329
    Height = 65
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object Gauge1: TGauge
      Left = 16
      Top = 16
      Width = 297
      Height = 33
      ForeColor = clBlue
      Progress = 0
    end
    object StaticText1: TStaticText
      Left = 312
      Top = 0
      Width = 16
      Height = 16
      BevelKind = bkSoft
      Caption = #8553
      TabOrder = 0
    end
  end
  object RzOpenDialog1: TOpenDialog
    Left = 844
    Top = 220
  end
  object ReaderPort: TApdComPort
    Baud = 9600
    AutoOpen = False
    TraceName = 'APRO.TRC'
    LogName = 'APRO.LOG'
    Left = 8
    Top = 124
  end
  object ApdDataPacket1: TApdDataPacket
    Enabled = False
    AutoEnable = False
    ComPort = ReaderPort
    PacketSize = 0
    OnStringPacket = ApdDataPacket1StringPacket
    Left = 40
    Top = 124
  end
end