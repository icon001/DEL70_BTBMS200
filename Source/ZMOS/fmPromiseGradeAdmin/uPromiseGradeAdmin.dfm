inherited fmPromiseGradeAdmin: TfmPromiseGradeAdmin
  Left = 176
  Top = 0
  Width = 902
  Height = 720
  BorderIcons = [biSystemMenu]
  Caption = #44536#47353#48324#44428#54620#46321#47197
  Font.Charset = HANGEUL_CHARSET
  Font.Height = -12
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter [0]
    Left = 393
    Top = 33
    Height = 624
  end
  object Panel3: TPanel [1]
    Left = 0
    Top = 33
    Width = 393
    Height = 624
    Align = alLeft
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 391
      Height = 200
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 20
        Width = 48
        Height = 12
        Caption = #54924#49324#53076#46300
      end
      object Label2: TLabel
        Left = 16
        Top = 68
        Width = 48
        Height = 12
        Caption = #48512#49436#53076#46300
      end
      object Label3: TLabel
        Left = 16
        Top = 92
        Width = 48
        Height = 12
        Caption = #51649#50948#53076#46300
      end
      object Label4: TLabel
        Left = 16
        Top = 116
        Width = 48
        Height = 12
        Caption = #49324'    '#48264
      end
      object Label5: TLabel
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
      object Label7: TLabel
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
      end
      object ed_EmpNM: TEdit
        Left = 80
        Top = 136
        Width = 169
        Height = 20
        ImeName = 'Microsoft IME 2003'
        TabOrder = 4
      end
      object btn_Search: TBitBtn
        Left = 272
        Top = 48
        Width = 97
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
      object ed_CardNo: TEdit
        Left = 80
        Top = 160
        Width = 169
        Height = 20
        ImeName = 'Microsoft IME 2003'
        MaxLength = 10
        TabOrder = 6
      end
      object chk_NonGrade: TCheckBox
        Left = 254
        Top = 16
        Width = 83
        Height = 17
        Caption = #49888#44508#46321#47197#51088
        TabOrder = 7
        OnClick = chk_NonGradeClick
      end
      object cmb_Jijum: TComboBox
        Left = 80
        Top = 40
        Width = 169
        Height = 20
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        TabOrder = 8
        OnChange = cmb_JijumChange
      end
      object btn_Close: TBitBtn
        Left = 272
        Top = 95
        Width = 97
        Height = 25
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
    end
    object sg_Card: TAdvStringGrid
      Left = 1
      Top = 201
      Width = 391
      Height = 422
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
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goRowSelect]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 1
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      OnCheckBoxClick = sg_CardCheckBoxClick
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
      FixedColWidth = 86
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      ColumnHeaders.Strings = (
        #54924#49324#47749
        #49324#50896#48264#54840
        #51060#47492
        #52852#46300#48264#54840
        #51648#51216#47749
        #48512#49436#47749
        #51649#50948#47749)
      Filter = <>
      Version = '3.3.0.1'
      ColWidths = (
        86
        78
        86
        81
        79
        90
        90
        90
        90)
    end
  end
  object StatusBar1: TStatusBar [2]
    Left = 0
    Top = 657
    Width = 894
    Height = 29
    Panels = <
      item
        Width = 1024
      end>
  end
  object Panel1: TPanel [3]
    Left = 396
    Top = 33
    Width = 498
    Height = 624
    Align = alClient
    TabOrder = 2
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 496
      Height = 622
      Align = alClient
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 49
        Width = 494
        Height = 572
        ActivePage = DoorTab
        Align = alClient
        TabOrder = 0
        object DoorTab: TTabSheet
          Caption = #52636#51077#47928
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 486
            Height = 545
            Align = alClient
            TabOrder = 0
            object sg_Door: TAdvStringGrid
              Left = 1
              Top = 1
              Width = 484
              Height = 543
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
              Multilinecells = True
              OnCheckBoxClick = sg_DoorCheckBoxClick
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
              FixedColWidth = 463
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
                463
                90
                90
                90
                90)
            end
          end
        end
        object AlarmTab: TTabSheet
          Caption = #44221#48708#44396#50669
          ImageIndex = 1
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 486
            Height = 545
            Align = alClient
            TabOrder = 0
            object sg_Alarm: TAdvStringGrid
              Left = 1
              Top = 1
              Width = 484
              Height = 543
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
              Multilinecells = True
              OnCheckBoxClick = sg_DoorCheckBoxClick
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
              FixedColWidth = 459
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              ColumnHeaders.Strings = (
                #44221#48708#44396#50669' '#47749#52845
                #45432#46300#48264#54840
                'MCUID'
                'ECUID'
                #44221#48708#44396#50669#48264#54840)
              Filter = <>
              Version = '3.3.0.1'
              ColWidths = (
                459
                90
                90
                90
                90)
            end
          end
        end
        object FoodTab: TTabSheet
          Caption = #49885#49688
          ImageIndex = 2
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 486
            Height = 545
            Align = alClient
            TabOrder = 0
            object sg_Food: TAdvStringGrid
              Left = 1
              Top = 1
              Width = 484
              Height = 543
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
              Multilinecells = True
              OnCheckBoxClick = sg_DoorCheckBoxClick
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
              FixedColWidth = 458
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
                'ECUID'
                'DOORNO')
              Filter = <>
              Version = '3.3.0.1'
              ColWidths = (
                458
                90
                90
                90
                80)
            end
          end
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 494
        Height = 48
        Align = alTop
        TabOrder = 1
        object Label6: TLabel
          Left = 16
          Top = 16
          Width = 60
          Height = 12
          Caption = #44536#47353#44428#54620#47749
        end
        object cmb_PromiseGrade: TComboBox
          Left = 88
          Top = 12
          Width = 225
          Height = 20
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          TabOrder = 0
          OnChange = cmb_PromiseGradeChange
        end
        object btn_PromiseSet: TBitBtn
          Left = 336
          Top = 7
          Width = 129
          Height = 25
          Caption = #44536#47353#44428#54620' '#51201#50857
          TabOrder = 1
          OnClick = btn_PromiseSetClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
      end
    end
  end
  object Panel12: TPanel [4]
    Left = 0
    Top = 0
    Width = 894
    Height = 33
    Align = alTop
    Caption = #44536#47353#48324#44428#54620#46321#47197
    Color = 15387318
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentBackground = True
    ParentFont = False
    TabOrder = 3
  end
  object Pan_Gauge: TPanel [5]
    Left = 8
    Top = 271
    Width = 329
    Height = 65
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ParentBackground = False
    TabOrder = 4
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
end