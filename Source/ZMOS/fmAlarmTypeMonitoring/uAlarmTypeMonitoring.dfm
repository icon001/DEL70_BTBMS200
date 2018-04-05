inherited fmAlarmTypeMonitoring: TfmAlarmTypeMonitoring
  Left = 162
  Width = 1123
  Height = 734
  Caption = #44288#51228#49884#49828#53596
  Font.Charset = HANGEUL_CHARSET
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter [0]
    Left = 217
    Top = 0
    Height = 700
  end
  object pan_device: TPanel [1]
    Left = 0
    Top = 0
    Width = 217
    Height = 700
    Align = alLeft
    TabOrder = 0
    OnResize = pan_deviceResize
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 215
      Height = 698
      ActivePage = tbLOCATE
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object tbLOCATE: TTabSheet
        Caption = #47700#51064#49345#53468
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 207
          Height = 671
          Align = alClient
          TabOrder = 0
          object Shader2: TShader
            Left = 2
            Top = 14
            Width = 203
            Height = 9
            Align = alTop
            Caption = 'Shader1'
            TabOrder = 0
            FromColor = 15591915
            ToColor = clSilver
            Direction = False
            Version = '1.1.0.0'
          end
          object sg_Main: TAdvStringGrid
            Left = 2
            Top = 23
            Width = 203
            Height = 646
            Cursor = crDefault
            Align = alClient
            ColCount = 3
            DefaultColWidth = 90
            DefaultRowHeight = 21
            FixedCols = 0
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goColMoving]
            ParentFont = False
            PopupMenu = PopupMenu_Node
            ScrollBars = ssBoth
            TabOrder = 1
            OnDblClick = sg_MainDblClick
            OnKeyDown = sg_MainKeyDown
            OnMouseUp = sg_MainMouseUp
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
            GridImages = devicelist
            ScrollSynch = True
            FixedColWidth = 106
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            ColumnHeaders.Strings = (
              #47700#51064#47749
              #47700#51064'IP'
              #45432#46300#48264#54840)
            ShowSelection = False
            Filter = <>
            Version = '3.3.0.1'
            ColWidths = (
              106
              100
              104)
          end
        end
      end
      object tbDEVICE: TTabSheet
        Caption = #47196#52972#49345#53468
        ImageIndex = 1
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 207
          Height = 671
          Align = alClient
          TabOrder = 0
          object Shader3: TShader
            Left = 2
            Top = 14
            Width = 203
            Height = 9
            Align = alTop
            Caption = 'Shader1'
            TabOrder = 0
            FromColor = 15591915
            ToColor = clSilver
            Direction = False
            Version = '1.1.0.0'
          end
          object MediaPlayer1: TMediaPlayer
            Left = -94
            Top = 560
            Width = 253
            Height = 41
            Visible = False
            TabOrder = 1
          end
          object sg_ECU: TAdvStringGrid
            Left = 2
            Top = 23
            Width = 203
            Height = 646
            Cursor = crDefault
            Align = alClient
            ColCount = 4
            DefaultColWidth = 90
            DefaultRowHeight = 21
            FixedCols = 0
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goColMoving]
            ParentFont = False
            PopupMenu = PopupMenu_Device
            ScrollBars = ssBoth
            TabOrder = 2
            OnMouseUp = sg_ECUMouseUp
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            OnDblClickCell = sg_AlarmDblClickCell
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
            GridImages = devicelist
            ScrollSynch = True
            FixedColWidth = 137
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            ColumnHeaders.Strings = (
              #47700#51064'IP'
              #47196#52972'ID'
              #47196#52972#47749
              #45432#46300#48264#54840)
            ShowSelection = False
            Filter = <>
            Version = '3.3.0.1'
            ColWidths = (
              137
              48
              152
              90)
          end
        end
      end
    end
  end
  object Panel5: TPanel [2]
    Left = 220
    Top = 0
    Width = 895
    Height = 700
    Align = alClient
    TabOrder = 2
    object Splitter7: TSplitter
      Left = 1
      Top = 377
      Width = 893
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Panel15: TPanel
      Left = 1
      Top = 380
      Width = 893
      Height = 319
      Align = alClient
      TabOrder = 0
      OnResize = Panel15Resize
      object Splitter2: TSplitter
        Left = 1
        Top = 129
        Width = 891
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object sg_Access: TAdvStringGrid
        Left = 1
        Top = 1
        Width = 891
        Height = 128
        Cursor = crDefault
        Align = alTop
        ColCount = 12
        DefaultColWidth = 90
        DefaultRowHeight = 21
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goColMoving]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        OnColumnMoved = sg_AccessColumnMoved
        OnKeyDown = sg_AccessKeyDown
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
        ScrollSynch = True
        FixedColWidth = 128
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        ColumnHeaders.Strings = (
          #48156#49373#51068#51088
          #50948#52824
          #48169#48276#44396#50669
          #49849#51064#53076#46300
          #49849#51064#49345#53468
          #52852#46300#48264#54840
          #52636#51077#51088#47749
          #54924#49324#47749
          #51648#51216#47749
          #48512#49436#47749
          #49324#48264)
        ShowSelection = False
        Filter = <>
        Version = '3.3.0.1'
        ColWidths = (
          128
          100
          92
          2
          90
          90
          90
          106
          107
          137
          110
          90)
      end
      object sg_Alarm: TAdvStringGrid
        Left = 1
        Top = 132
        Width = 891
        Height = 186
        Cursor = crDefault
        Align = alClient
        ColCount = 8
        DefaultColWidth = 90
        DefaultRowHeight = 21
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goColMoving]
        ParentFont = False
        PopupMenu = PopupMenu_intZone
        ScrollBars = ssBoth
        TabOrder = 1
        OnColumnMoved = sg_AlarmColumnMoved
        OnMouseUp = sg_AlarmMouseUp
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        OnDblClickCell = sg_AlarmDblClickCell
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
        FixedColWidth = 137
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        ColumnHeaders.Strings = (
          #48156#49373#51068#51088
          #50948#52824
          #44221#48708#44396#50669
          #44592#44592#48264#54840
          #44592#44592#53440#51077
          #48156#49373#53076#46300
          #51060#48292#53944#45236#50857
          #44592#44592#50500#51060#46356)
        ShowSelection = False
        Filter = <>
        Version = '3.3.0.1'
        ColWidths = (
          137
          100
          104
          106
          90
          90
          452
          90)
      end
    end
    object pan_monitor: TPanel
      Left = 1
      Top = 1
      Width = 893
      Height = 376
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object PageControl2: TPageControl
        Left = 1
        Top = 1
        Width = 891
        Height = 374
        ActivePage = BuildingTab
        Align = alClient
        TabOrder = 0
        OnChange = PageControl2Change
        object BuildingTab: TTabSheet
          Caption = #48716#46377#48169#48276
          ImageIndex = 3
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 883
            Height = 347
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            OnResize = Panel12Resize
            object Panel14: TPanel
              Left = 0
              Top = 0
              Width = 883
              Height = 347
              Align = alClient
              TabOrder = 0
              OnResize = Panel14Resize
              object GroupBox6: TGroupBox
                Left = 1
                Top = 41
                Width = 881
                Height = 305
                Align = alClient
                Caption = #48169#48276#44396#50669#49345#53468
                Color = clBtnFace
                ParentColor = False
                TabOrder = 0
                object Shader6: TShader
                  Left = 2
                  Top = 14
                  Width = 877
                  Height = 9
                  Align = alTop
                  Caption = 'Shader1'
                  TabOrder = 1
                  FromColor = 15591915
                  ToColor = clSilver
                  Direction = False
                  Version = '1.1.0.0'
                end
                object BuildingListView: TListView
                  Left = 2
                  Top = 23
                  Width = 877
                  Height = 280
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  Columns = <>
                  ColumnClick = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #44404#47548
                  Font.Style = []
                  FlatScrollBars = True
                  GridLines = True
                  HideSelection = False
                  HotTrackStyles = [htHandPoint]
                  Items.Data = {
                    4C000000020000000000000000000000FFFFFFFF000000000000000013C3E2C0
                    D4B9AE313233343536373839303132330100000001000000FFFFFFFF00000000
                    0000000007C3E2C0D4B9AE32}
                  LargeImages = ImageList48
                  MultiSelect = True
                  ReadOnly = True
                  RowSelect = True
                  ParentFont = False
                  PopupMenu = PopupMenu_Building
                  SmallImages = smallAlarmImageList1
                  StateImages = stateList
                  TabOrder = 0
                  OnDblClick = BuildingListViewDblClick
                  OnMouseUp = BuildingListViewMouseUp
                end
              end
              object Pan_Remark1: TPanel
                Left = 1
                Top = 1
                Width = 881
                Height = 40
                Align = alTop
                TabOrder = 1
                object Panel4: TPanel
                  Left = 1
                  Top = 1
                  Width = 879
                  Height = 38
                  Align = alClient
                  TabOrder = 0
                  object Image1: TImage
                    Left = 8
                    Top = 2
                    Width = 33
                    Height = 31
                    Picture.Data = {
                      07544269746D6170F2070000424DF207000000000000F2030000280000002000
                      000020000000010008000000000000040000E50E0000E50E0000EF000000EF00
                      000000000000330000006600000099000000CC000000FF000000003300003333
                      00006633000099330000CC330000FF3300000066000033660000666600009966
                      0000CC660000FF66000000990000339900006699000099990000CC990000FF99
                      000000CC000033CC000066CC000099CC0000CCCC0000FFCC000000FF000033FF
                      000066FF000099FF0000CCFF0000FFFF00000000330033003300660033009900
                      3300CC003300FF00330000333300333333006633330099333300CC333300FF33
                      330000663300336633006666330099663300CC663300FF663300009933003399
                      33006699330099993300CC993300FF99330000CC330033CC330066CC330099CC
                      3300CCCC3300FFCC330000FF330033FF330066FF330099FF3300CCFF3300FFFF
                      330000006600330066006600660099006600CC006600FF006600003366003333
                      66006633660099336600CC336600FF3366000066660033666600666666009966
                      6600CC666600FF66660000996600339966006699660099996600CC996600FF99
                      660000CC660033CC660066CC660099CC6600CCCC6600FFCC660000FF660033FF
                      660066FF660099FF6600CCFF6600FFFF66000000990033009900660099009900
                      9900CC009900FF00990000339900333399006633990099339900CC339900FF33
                      990000669900336699006666990099669900CC669900FF669900009999003399
                      99006699990099999900CC999900FF99990000CC990033CC990066CC990099CC
                      9900CCCC9900FFCC990000FF990033FF990066FF990099FF9900CCFF9900FFFF
                      99000000CC003300CC006600CC009900CC00CC00CC00FF00CC000033CC003333
                      CC006633CC009933CC00CC33CC00FF33CC000066CC003366CC006666CC009966
                      CC00CC66CC00FF66CC000099CC003399CC006699CC009999CC00CC99CC00FF99
                      CC0000CCCC0033CCCC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FF
                      CC0066FFCC0099FFCC00CCFFCC00FFFFCC000000FF003300FF006600FF009900
                      FF00CC00FF00FF00FF000033FF003333FF006633FF009933FF00CC33FF00FF33
                      FF000066FF003366FF006666FF009966FF00CC66FF00FF66FF000099FF003399
                      FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CC
                      FF00CCCCFF00FFCCFF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFF
                      FF00000080000080000000808000800000008000800080800000C0C0C0008080
                      8000191919004C4C4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B
                      2400D8E9EC0099336600D075A300ECC6D900646F710099A8AC00E2EFF100E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E87E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EE8E8E8E8E8E8E8E8
                      E8E8E8E87E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EE8E8E8E8E8E8E8E8
                      E8E87E7EA9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7E7E7E7E7EE8E8E8E8E8E8
                      E8E87E7EA9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7E7E7E7E7EE8E8E8E8E8E8
                      E8E87E7ED2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7E7E7EE8E8E8E8E8E8
                      E8E87E7ED2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7E7E7EE8E8E8E8E8E8
                      E8E87E7EA9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7EE8E8E8E8E8E8
                      E8E87E7EA9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7EE8E8E8E8E8E8
                      E8E87E7ED2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7EE8E8E8E8E8E8
                      E8E87E7ED2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7EE8E8E8E8E8E8
                      E8E87E7ED2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7E7E7EE8E8E8E8E8E8
                      E8E87E7ED2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7E7E7EE8E8E8E8E8E8
                      E8E87E7ED6D6D2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EE8E8E8E8E8E8
                      E8E87E7ED6D6D2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EE8E8E8E8E8E8
                      E8E87E7ED6D6D6D6D2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A97E7EE8E8E8E8E8E8
                      E8E87E7ED6D6D6D6D2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A97E7EE8E8E8E8E8E8
                      E8E8E8E87E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EE8E8E8E8E8E8E8E8
                      E8E8E8E87E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EE8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
                  end
                  object Image10: TImage
                    Left = 104
                    Top = 2
                    Width = 33
                    Height = 31
                    Picture.Data = {
                      07544269746D6170F2070000424DF207000000000000F2030000280000002000
                      000020000000010008000000000000040000430C0000430C0000EF000000EF00
                      000000000000330000006600000099000000CC000000FF000000003300003333
                      00006633000099330000CC330000FF3300000066000033660000666600009966
                      0000CC660000FF66000000990000339900006699000099990000CC990000FF99
                      000000CC000033CC000066CC000099CC0000CCCC0000FFCC000000FF000033FF
                      000066FF000099FF0000CCFF0000FFFF00000000330033003300660033009900
                      3300CC003300FF00330000333300333333006633330099333300CC333300FF33
                      330000663300336633006666330099663300CC663300FF663300009933003399
                      33006699330099993300CC993300FF99330000CC330033CC330066CC330099CC
                      3300CCCC3300FFCC330000FF330033FF330066FF330099FF3300CCFF3300FFFF
                      330000006600330066006600660099006600CC006600FF006600003366003333
                      66006633660099336600CC336600FF3366000066660033666600666666009966
                      6600CC666600FF66660000996600339966006699660099996600CC996600FF99
                      660000CC660033CC660066CC660099CC6600CCCC6600FFCC660000FF660033FF
                      660066FF660099FF6600CCFF6600FFFF66000000990033009900660099009900
                      9900CC009900FF00990000339900333399006633990099339900CC339900FF33
                      990000669900336699006666990099669900CC669900FF669900009999003399
                      99006699990099999900CC999900FF99990000CC990033CC990066CC990099CC
                      9900CCCC9900FFCC990000FF990033FF990066FF990099FF9900CCFF9900FFFF
                      99000000CC003300CC006600CC009900CC00CC00CC00FF00CC000033CC003333
                      CC006633CC009933CC00CC33CC00FF33CC000066CC003366CC006666CC009966
                      CC00CC66CC00FF66CC000099CC003399CC006699CC009999CC00CC99CC00FF99
                      CC0000CCCC0033CCCC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FF
                      CC0066FFCC0099FFCC00CCFFCC00FFFFCC000000FF003300FF006600FF009900
                      FF00CC00FF00FF00FF000033FF003333FF006633FF009933FF00CC33FF00FF33
                      FF000066FF003366FF006666FF009966FF00CC66FF00FF66FF000099FF003399
                      FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CC
                      FF00CCCCFF00FFCCFF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFF
                      FF00000080000080000000808000800000008000800080800000C0C0C0008080
                      8000191919004C4C4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B
                      2400D8E9EC0099336600D075A300ECC6D900646F710099A8AC00E2EFF100E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E80303030303030303030303030303030303030303E8E8E8E8E8E8E8E8
                      E8E8E8E80303030303030303030303030303030303030303E8E8E8E8E8E8E8E8
                      E8E8030304040404040404040404030304040303030303030303E8E8E8E8E8E8
                      E8E8030304040404040404040404030304040303030303030303E8E8E8E8E8E8
                      E8E8030305050404040404040404040403030404030303030303E8E8E8E8E8E8
                      E8E8030305050404040404040404040403030404030303030303E8E8E8E8E8E8
                      E8E8030304040505040404040404040404040303040403030303E8E8E8E8E8E8
                      E8E8030304040505040404040404040404040303040403030303E8E8E8E8E8E8
                      E8E8030305050404050504040404040404040404030304040303E8E8E8E8E8E8
                      E8E8030305050404050504040404040404040404030304040303E8E8E8E8E8E8
                      E8E8030305050505040405050404040404040404040403030303E8E8E8E8E8E8
                      E8E8030305050505040405050404040404040404040403030303E8E8E8E8E8E8
                      E8E803035F5F0505050504040505040404040404040404040303E8E8E8E8E8E8
                      E8E803035F5F0505050504040505040404040404040404040303E8E8E8E8E8E8
                      E8E803035F5F5F5F050505050404050504040404040404040303E8E8E8E8E8E8
                      E8E803035F5F5F5F050505050404050504040404040404040303E8E8E8E8E8E8
                      E8E8E8E80303030303030303030303030303030303030303E8E8E8E8E8E8E8E8
                      E8E8E8E80303030303030303030303030303030303030303E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
                  end
                  object Image11: TImage
                    Left = 224
                    Top = 10
                    Width = 17
                    Height = 15
                    Picture.Data = {
                      07544269746D617036040000424D360400000000000036000000280000001000
                      0000100000000100200000000000000400000000000000000000000000000000
                      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF0018A5C60018A5C60018A5C60018A5C60018A5C60018A5
                      C60018A5C60018A5C60018A5C60018A5C60018A5C60018A5C600FF00FF00FF00
                      FF00FF00FF009CDEEF0094F7FF0073DEF70073DEF70073DEF70073DEF7000000
                      FF000000FF0073DEF70073DEF70073DEF70073DEF7004AC6E70018A5C600FF00
                      FF00FF00FF00FF00FF0094F7FF0073DEF70073DEF70073DEF70073DEF7000000
                      FF000000FF0073DEF70073DEF70073DEF70073DEF70018A5C600FF00FF00FF00
                      FF00FF00FF00FF00FF009CDEEF0094F7FF0073DEF70073DEF70073DEF70073DE
                      F70073DEF70073DEF70073DEF70073DEF7004AC6E70018A5C600FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF0094F7FF0073DEF70073DEF70073DEF7000000
                      FF000000FF0073DEF70073DEF70073DEF70018A5C600FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF009CDEEF0094F7FF0073DEF70073DEF7000000
                      FF000000FF0073DEF70073DEF7004AC6E70018A5C600FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF0094F7FF0073DEF70073DEF7000000
                      FF000000FF0073DEF70073DEF70018A5C600FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF009CDEEF0094F7FF0073DEF7000000
                      FF000000FF0073DEF7004AC6E70018A5C600FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0094F7FF0073DEF7000000
                      FF000000FF0073DEF70018A5C600FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009CDEEF0094F7FF000000
                      FF000000FF004AC6E70018A5C600FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0094F7FF0073DE
                      F70073DEF70018A5C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009CDEEF0094F7
                      FF004AC6E70018A5C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0094F7
                      FF0018A5C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00}
                  end
                  object StaticText1: TStaticText
                    Left = 48
                    Top = 9
                    Width = 52
                    Height = 16
                    Caption = #54644#51228#47784#46300
                    TabOrder = 0
                  end
                  object StaticText10: TStaticText
                    Left = 144
                    Top = 9
                    Width = 52
                    Height = 16
                    Caption = #44221#44228#47784#46300
                    TabOrder = 1
                  end
                  object StaticText11: TStaticText
                    Left = 248
                    Top = 9
                    Width = 52
                    Height = 16
                    Caption = #51060#49345#48156#49373
                    TabOrder = 2
                  end
                end
              end
            end
          end
        end
        object tabArea: TTabSheet
          Caption = #48169#48276#44288#51228
          ImageIndex = 1
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 883
            Height = 347
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            OnResize = Panel12Resize
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 883
              Height = 347
              Align = alClient
              TabOrder = 0
              OnResize = Panel14Resize
              object GroupBox4: TGroupBox
                Left = 1
                Top = 41
                Width = 881
                Height = 305
                Align = alClient
                Caption = #48169#48276#44396#50669#49345#53468
                Color = clBtnFace
                ParentColor = False
                TabOrder = 0
                object Shader4: TShader
                  Left = 2
                  Top = 14
                  Width = 877
                  Height = 9
                  Align = alTop
                  Caption = 'Shader1'
                  TabOrder = 1
                  FromColor = 15591915
                  ToColor = clSilver
                  Direction = False
                  Version = '1.1.0.0'
                end
                object AlarmListView: TListView
                  Left = 2
                  Top = 23
                  Width = 877
                  Height = 280
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  Columns = <>
                  ColumnClick = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #44404#47548
                  Font.Style = []
                  FlatScrollBars = True
                  GridLines = True
                  HideSelection = False
                  HotTrackStyles = [htHandPoint]
                  Items.Data = {
                    4C000000020000000000000000000000FFFFFFFF000000000000000013C3E2C0
                    D4B9AE313233343536373839303132330100000001000000FFFFFFFF00000000
                    0000000007C3E2C0D4B9AE32}
                  LargeImages = ImageList48
                  MultiSelect = True
                  ReadOnly = True
                  RowSelect = True
                  ParentFont = False
                  PopupMenu = PopupMenu_Alarm
                  SmallImages = smallAlarmImageList1
                  StateImages = stateList
                  TabOrder = 0
                  OnDblClick = AlarmListViewDblClick
                end
              end
              object Panel10: TPanel
                Left = 1
                Top = 1
                Width = 881
                Height = 40
                Align = alTop
                TabOrder = 1
                object Panel17: TPanel
                  Left = 1
                  Top = 1
                  Width = 879
                  Height = 38
                  Align = alClient
                  TabOrder = 0
                  object Image28: TImage
                    Left = 8
                    Top = 2
                    Width = 33
                    Height = 31
                    Picture.Data = {
                      07544269746D6170F2070000424DF207000000000000F2030000280000002000
                      000020000000010008000000000000040000E50E0000E50E0000EF000000EF00
                      000000000000330000006600000099000000CC000000FF000000003300003333
                      00006633000099330000CC330000FF3300000066000033660000666600009966
                      0000CC660000FF66000000990000339900006699000099990000CC990000FF99
                      000000CC000033CC000066CC000099CC0000CCCC0000FFCC000000FF000033FF
                      000066FF000099FF0000CCFF0000FFFF00000000330033003300660033009900
                      3300CC003300FF00330000333300333333006633330099333300CC333300FF33
                      330000663300336633006666330099663300CC663300FF663300009933003399
                      33006699330099993300CC993300FF99330000CC330033CC330066CC330099CC
                      3300CCCC3300FFCC330000FF330033FF330066FF330099FF3300CCFF3300FFFF
                      330000006600330066006600660099006600CC006600FF006600003366003333
                      66006633660099336600CC336600FF3366000066660033666600666666009966
                      6600CC666600FF66660000996600339966006699660099996600CC996600FF99
                      660000CC660033CC660066CC660099CC6600CCCC6600FFCC660000FF660033FF
                      660066FF660099FF6600CCFF6600FFFF66000000990033009900660099009900
                      9900CC009900FF00990000339900333399006633990099339900CC339900FF33
                      990000669900336699006666990099669900CC669900FF669900009999003399
                      99006699990099999900CC999900FF99990000CC990033CC990066CC990099CC
                      9900CCCC9900FFCC990000FF990033FF990066FF990099FF9900CCFF9900FFFF
                      99000000CC003300CC006600CC009900CC00CC00CC00FF00CC000033CC003333
                      CC006633CC009933CC00CC33CC00FF33CC000066CC003366CC006666CC009966
                      CC00CC66CC00FF66CC000099CC003399CC006699CC009999CC00CC99CC00FF99
                      CC0000CCCC0033CCCC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FF
                      CC0066FFCC0099FFCC00CCFFCC00FFFFCC000000FF003300FF006600FF009900
                      FF00CC00FF00FF00FF000033FF003333FF006633FF009933FF00CC33FF00FF33
                      FF000066FF003366FF006666FF009966FF00CC66FF00FF66FF000099FF003399
                      FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CC
                      FF00CCCCFF00FFCCFF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFF
                      FF00000080000080000000808000800000008000800080800000C0C0C0008080
                      8000191919004C4C4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B
                      2400D8E9EC0099336600D075A300ECC6D900646F710099A8AC00E2EFF100E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E87E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EE8E8E8E8E8E8E8E8
                      E8E8E8E87E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EE8E8E8E8E8E8E8E8
                      E8E87E7EA9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7E7E7E7E7EE8E8E8E8E8E8
                      E8E87E7EA9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7E7E7E7E7EE8E8E8E8E8E8
                      E8E87E7ED2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7E7E7EE8E8E8E8E8E8
                      E8E87E7ED2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7E7E7EE8E8E8E8E8E8
                      E8E87E7EA9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7EE8E8E8E8E8E8
                      E8E87E7EA9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7E7E7EE8E8E8E8E8E8
                      E8E87E7ED2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7EE8E8E8E8E8E8
                      E8E87E7ED2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EA9A97E7EE8E8E8E8E8E8
                      E8E87E7ED2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7E7E7EE8E8E8E8E8E8
                      E8E87E7ED2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7E7E7EE8E8E8E8E8E8
                      E8E87E7ED6D6D2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EE8E8E8E8E8E8
                      E8E87E7ED6D6D2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A9A9A97E7EE8E8E8E8E8E8
                      E8E87E7ED6D6D6D6D2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A97E7EE8E8E8E8E8E8
                      E8E87E7ED6D6D6D6D2D2D2D2A9A9D2D2A9A9A9A9A9A9A9A97E7EE8E8E8E8E8E8
                      E8E8E8E87E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EE8E8E8E8E8E8E8E8
                      E8E8E8E87E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EE8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
                  end
                  object Image29: TImage
                    Left = 104
                    Top = 2
                    Width = 33
                    Height = 31
                    Picture.Data = {
                      07544269746D6170F2070000424DF207000000000000F2030000280000002000
                      000020000000010008000000000000040000430C0000430C0000EF000000EF00
                      000000000000330000006600000099000000CC000000FF000000003300003333
                      00006633000099330000CC330000FF3300000066000033660000666600009966
                      0000CC660000FF66000000990000339900006699000099990000CC990000FF99
                      000000CC000033CC000066CC000099CC0000CCCC0000FFCC000000FF000033FF
                      000066FF000099FF0000CCFF0000FFFF00000000330033003300660033009900
                      3300CC003300FF00330000333300333333006633330099333300CC333300FF33
                      330000663300336633006666330099663300CC663300FF663300009933003399
                      33006699330099993300CC993300FF99330000CC330033CC330066CC330099CC
                      3300CCCC3300FFCC330000FF330033FF330066FF330099FF3300CCFF3300FFFF
                      330000006600330066006600660099006600CC006600FF006600003366003333
                      66006633660099336600CC336600FF3366000066660033666600666666009966
                      6600CC666600FF66660000996600339966006699660099996600CC996600FF99
                      660000CC660033CC660066CC660099CC6600CCCC6600FFCC660000FF660033FF
                      660066FF660099FF6600CCFF6600FFFF66000000990033009900660099009900
                      9900CC009900FF00990000339900333399006633990099339900CC339900FF33
                      990000669900336699006666990099669900CC669900FF669900009999003399
                      99006699990099999900CC999900FF99990000CC990033CC990066CC990099CC
                      9900CCCC9900FFCC990000FF990033FF990066FF990099FF9900CCFF9900FFFF
                      99000000CC003300CC006600CC009900CC00CC00CC00FF00CC000033CC003333
                      CC006633CC009933CC00CC33CC00FF33CC000066CC003366CC006666CC009966
                      CC00CC66CC00FF66CC000099CC003399CC006699CC009999CC00CC99CC00FF99
                      CC0000CCCC0033CCCC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FF
                      CC0066FFCC0099FFCC00CCFFCC00FFFFCC000000FF003300FF006600FF009900
                      FF00CC00FF00FF00FF000033FF003333FF006633FF009933FF00CC33FF00FF33
                      FF000066FF003366FF006666FF009966FF00CC66FF00FF66FF000099FF003399
                      FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CC
                      FF00CCCCFF00FFCCFF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFF
                      FF00000080000080000000808000800000008000800080800000C0C0C0008080
                      8000191919004C4C4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B
                      2400D8E9EC0099336600D075A300ECC6D900646F710099A8AC00E2EFF100E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E80303030303030303030303030303030303030303E8E8E8E8E8E8E8E8
                      E8E8E8E80303030303030303030303030303030303030303E8E8E8E8E8E8E8E8
                      E8E8030304040404040404040404030304040303030303030303E8E8E8E8E8E8
                      E8E8030304040404040404040404030304040303030303030303E8E8E8E8E8E8
                      E8E8030305050404040404040404040403030404030303030303E8E8E8E8E8E8
                      E8E8030305050404040404040404040403030404030303030303E8E8E8E8E8E8
                      E8E8030304040505040404040404040404040303040403030303E8E8E8E8E8E8
                      E8E8030304040505040404040404040404040303040403030303E8E8E8E8E8E8
                      E8E8030305050404050504040404040404040404030304040303E8E8E8E8E8E8
                      E8E8030305050404050504040404040404040404030304040303E8E8E8E8E8E8
                      E8E8030305050505040405050404040404040404040403030303E8E8E8E8E8E8
                      E8E8030305050505040405050404040404040404040403030303E8E8E8E8E8E8
                      E8E803035F5F0505050504040505040404040404040404040303E8E8E8E8E8E8
                      E8E803035F5F0505050504040505040404040404040404040303E8E8E8E8E8E8
                      E8E803035F5F5F5F050505050404050504040404040404040303E8E8E8E8E8E8
                      E8E803035F5F5F5F050505050404050504040404040404040303E8E8E8E8E8E8
                      E8E8E8E80303030303030303030303030303030303030303E8E8E8E8E8E8E8E8
                      E8E8E8E80303030303030303030303030303030303030303E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
                  end
                  object Image30: TImage
                    Left = 208
                    Top = 2
                    Width = 33
                    Height = 31
                    Picture.Data = {
                      07544269746D6170F2070000424DF207000000000000F2030000280000002000
                      000020000000010008000000000000040000E50E0000E50E0000EF000000EF00
                      000000000000330000006600000099000000CC000000FF000000003300003333
                      00006633000099330000CC330000FF3300000066000033660000666600009966
                      0000CC660000FF66000000990000339900006699000099990000CC990000FF99
                      000000CC000033CC000066CC000099CC0000CCCC0000FFCC000000FF000033FF
                      000066FF000099FF0000CCFF0000FFFF00000000330033003300660033009900
                      3300CC003300FF00330000333300333333006633330099333300CC333300FF33
                      330000663300336633006666330099663300CC663300FF663300009933003399
                      33006699330099993300CC993300FF99330000CC330033CC330066CC330099CC
                      3300CCCC3300FFCC330000FF330033FF330066FF330099FF3300CCFF3300FFFF
                      330000006600330066006600660099006600CC006600FF006600003366003333
                      66006633660099336600CC336600FF3366000066660033666600666666009966
                      6600CC666600FF66660000996600339966006699660099996600CC996600FF99
                      660000CC660033CC660066CC660099CC6600CCCC6600FFCC660000FF660033FF
                      660066FF660099FF6600CCFF6600FFFF66000000990033009900660099009900
                      9900CC009900FF00990000339900333399006633990099339900CC339900FF33
                      990000669900336699006666990099669900CC669900FF669900009999003399
                      99006699990099999900CC999900FF99990000CC990033CC990066CC990099CC
                      9900CCCC9900FFCC990000FF990033FF990066FF990099FF9900CCFF9900FFFF
                      99000000CC003300CC006600CC009900CC00CC00CC00FF00CC000033CC003333
                      CC006633CC009933CC00CC33CC00FF33CC000066CC003366CC006666CC009966
                      CC00CC66CC00FF66CC000099CC003399CC006699CC009999CC00CC99CC00FF99
                      CC0000CCCC0033CCCC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FF
                      CC0066FFCC0099FFCC00CCFFCC00FFFFCC000000FF003300FF006600FF009900
                      FF00CC00FF00FF00FF000033FF003333FF006633FF009933FF00CC33FF00FF33
                      FF000066FF003366FF006666FF009966FF00CC66FF00FF66FF000099FF003399
                      FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CC
                      FF00CCCCFF00FFCCFF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFF
                      FF00000080000080000000808000800000008000800080800000C0C0C0008080
                      8000191919004C4C4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B
                      2400D8E9EC0099336600D075A300ECC6D900646F710099A8AC00E2EFF100E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E86C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CE8E8E8E8E8E8E8E8
                      E8E8E8E86C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CE8E8E8E8E8E8E8E8
                      E8E86C6C909090909090909090906C6C90906C6C6C6C6C6C6C6CE8E8E8E8E8E8
                      E8E86C6C909090909090909090906C6C90906C6C6C6C6C6C6C6CE8E8E8E8E8E8
                      E8E86C6CB4B4909090909090909090906C6C90906C6C6C6C6C6CE8E8E8E8E8E8
                      E8E86C6CB4B4909090909090909090906C6C90906C6C6C6C6C6CE8E8E8E8E8E8
                      E8E86C6C9090B4B4909090909090909090906C6C90906C6C6C6CE8E8E8E8E8E8
                      E8E86C6C9090B4B4909090909090909090906C6C90906C6C6C6CE8E8E8E8E8E8
                      E8E86C6CB4B49090B4B4909090909090909090906C6C90906C6CE8E8E8E8E8E8
                      E8E86C6CB4B49090B4B4909090909090909090906C6C90906C6CE8E8E8E8E8E8
                      E8E86C6CB4B4B4B49090B4B4909090909090909090906C6C6C6CE8E8E8E8E8E8
                      E8E86C6CB4B4B4B49090B4B4909090909090909090906C6C6C6CE8E8E8E8E8E8
                      E8E86C6CC9C9B4B4B4B49090B4B4909090909090909090906C6CE8E8E8E8E8E8
                      E8E86C6CC9C9B4B4B4B49090B4B4909090909090909090906C6CE8E8E8E8E8E8
                      E8E86C6CC9C9C9C9B4B4B4B49090B4B490909090909090906C6CE8E8E8E8E8E8
                      E8E86C6CC9C9C9C9B4B4B4B49090B4B490909090909090906C6CE8E8E8E8E8E8
                      E8E8E8E86C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CE8E8E8E8E8E8E8E8
                      E8E8E8E86C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CE8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
                  end
                  object StaticText28: TStaticText
                    Left = 48
                    Top = 9
                    Width = 52
                    Height = 16
                    Caption = #54644#51228#47784#46300
                    TabOrder = 0
                  end
                  object StaticText29: TStaticText
                    Left = 144
                    Top = 9
                    Width = 52
                    Height = 16
                    Caption = #44221#44228#47784#46300
                    TabOrder = 1
                  end
                  object StaticText30: TStaticText
                    Left = 248
                    Top = 9
                    Width = 52
                    Height = 16
                    Caption = #50508#46988#48156#49373
                    TabOrder = 2
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  object pan_message: TPanel [3]
    Left = 304
    Top = 304
    Width = 761
    Height = 105
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object SpeedButton1: TSpeedButton
      Left = 304
      Top = 64
      Width = 137
      Height = 25
      Caption = #47700#49464#51648' '#54869#51064
      OnClick = btn_AlarmConfirmClick
    end
    object st_message: TStaticText
      Left = 1
      Top = 1
      Width = 759
      Height = 56
      Align = alTop
      AutoSize = False
      Caption = #44048#51648#51316#51060#49345#48156#49373' !!!'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clRed
      Font.Height = -48
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited CommandArray: TCommandArray
    Commands = <
      item
        CommandName = 'Message'
        CommandKind = 0
        Name = 'TCommand0'
        OnExecute = CommandArrayCommandsTCommand0Execute
      end
      item
        CommandName = 'MODECHANGE'
        CommandKind = 0
        Name = 'TCommand1'
        OnExecute = CommandArrayCommandsTCommand1Execute
      end
      item
        CommandName = 'CLOSE'
        CommandKind = 0
        Name = 'TCommand2'
        OnExecute = CommandArrayCommandsTCommand2Execute
      end
      item
        CommandName = 'AlarmMode'
        CommandKind = 0
        Name = 'TCommand3'
        OnExecute = CommandArrayCommandsTCommand3Execute
      end
      item
        CommandName = 'REFRESH'
        CommandKind = 0
        Name = 'TCommand4'
        OnExecute = CommandArrayCommandsTCommand4Execute
      end
      item
        CommandName = 'COMMON'
        CommandKind = 0
        Name = 'TCommand5'
        OnExecute = CommandArrayCommandsTCommand5Execute
      end
      item
        CommandName = 'STATE'
        CommandKind = 0
        Name = 'TCommand6'
        OnExecute = CommandArrayCommandsTCommand6Execute
      end
      item
        CommandName = 'GRADEREFRESH'
        CommandKind = 0
        Name = 'TCommand7'
      end
      item
        CommandName = 'FIRERECOVER'
        CommandKind = 0
        Name = 'TFIRERECOVER'
        OnExecute = CommandArrayCommandsTFIRERECOVERExecute
      end>
  end
  object stateList: TImageList
    Left = 248
    Top = 168
    Bitmap = {
      494C010109000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E6E6FF9191
      91FF646564FF7E8072FFAFB293FFB6B893FF999A7FFFA5A596FFA9A9A1FFA1A1
      9FFFD5D6D6FFF7F7F7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000676767FF8888
      7DFFA9AEAAFFC8D1D0FFF5FFFFFFDFEAFFFFAEB4BBFFB8BAB6FFBABBB5FFBBBB
      BAFFA6A79FFF878786FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000097978AFFC1C1
      AAFF7484E3FF3B5BE1FF1D48DCFF0A32DDFF152CE4FF363FFEFF6367FFFFABAD
      EEFFD5D5C1FF9E9E95FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDDD8FF5253
      A3FF0035F3FF0050E9FF005DE7FF0050E3FF0035E0FF0019FEFF6870FFFF0003
      FFFF757695FFBCBCB5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E8E
      B1FF004DF6FF0074FAFF0084F2FF0074EFFF004DE9FF183BFEFFB3BCFFFF0D0F
      E5FFA9A9B1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      CDFF005FF1FF008BFCFF009CF3FF008BF2FF005FEBFF1841FEFFBEC8FEFF373A
      DBFFB1B1C1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      D4FF0068F3FF0095FCFF00A7F6FF0096F3FF0068ECFF1846FEFFBECCFFFF4549
      E1FF9494B7FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      D4FF006BF3FF0098FBFF00AAF6FF0098F3FF006BEDFF1649FEFFBDCCFFFF4549
      E1FF9494B7FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006161
      D8FF006BF4FF0098FCFF13B5FBFF0098FBFF006BF7FF0F40FDFF8D9CFFFF3E41
      E3FF8181B3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005757
      EEFF0069FDFF43C4FCFF79FFFBFF50CEFBFF0069FDFF0037EFFF0013FFFF000A
      EFFF7474C6FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008A8A
      D2FF0062F8FF45BDFCFF81FFFBFF5ED4FBFF0062FBFF0031ECFF0012FFFF000A
      EEFFB8B8CAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002C70CBFF007BFDFF20A0FCFF057FFDFF0054FDFF395AFEFF3B49FFFF5255
      ABFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ECF0F7FF76A6DCFF0069E7FF005BFDFF164FFEFF526BDEFFA8ABCDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000049494900494949004949
      4900494949004949490049494900494949004949490049494900494949004949
      490049494900494949004949490000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000494949004949490020208D002020
      8F0020208F0020208F0020208F0020208F0020208F0020208F0020208F002020
      8F0020208F0020208C004949490049494900C0C0C000C0C0C000C0C0C0000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018A5C60018A5
      C60018A5C60018A5C60018A5C60018A5C60018A5C60018A5C60018A5C60018A5
      C60018A5C60018A5C6000000000000000000494949001F1F87002020AF002020
      AF002020AF002020AF002020AF002020AF002020AF002020AF002020AF002020
      AF002020AF002020AF001F1F820049494900C0C0C000C0C0C000000000000000
      0000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CDEEF0094F7FF0073DE
      F70073DEF70073DEF70073DEF7000000FF000000FF0073DEF70073DEF70073DE
      F70073DEF7004AC6E70018A5C60000000000494949001F1F88002020AF002020
      AF002020AF002020AF002020AF002020AF002020AF002020AF002020AF002020
      AF002020AF002020AF001F1F830049494900C0C0C0000000000000000000FFFF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094F7FF0073DE
      F70073DEF70073DEF70073DEF7000000FF000000FF0073DEF70073DEF70073DE
      F70073DEF70018A5C6000000000000000000494949001D1D8E001C1CB8001C1C
      B8001C1CB8001C1CB8001C1CB8001C1CB8001C1CB8001C1CB8001C1CB8001C1C
      B8001C1CB8001C1CB8001D1D890049494900000000000000000080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      9900000099000000990000009900000099000000990000009900000099000000
      99000000990000000000000000000000000000000000000000009CDEEF0094F7
      FF0073DEF70073DEF70073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F7004AC6E70018A5C600000000000000000049494900191999001717C6001717
      C6001717C6001717C6001717C6001717C6001717C6001717C6001717C6001717
      C6001717C6001717C60019199300494949000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF00000000000000FF00000000000000
      0000000000000000000000000000C0C0C0000000000000000000000099000000
      CC000000CC000000CC000000CC000000CC00000099000000CC00000099000000
      99000000990000009900000000000000000000000000000000000000000094F7
      FF0073DEF70073DEF70073DEF7000000FF000000FF0073DEF70073DEF70073DE
      F70018A5C600000000000000000000000000494949001515A4001111D6001111
      D6001111D6001111D6001111D6001111D6001111D6001111D6001111D6001111
      D6001111D6001111D60015159E00494949000000000000000000000000000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00000000000000FF000000
      FF00000000000000000000000000C0C0C0000000000000000000000099000000
      FF000000CC000000CC000000CC000000CC000000CC00000099000000CC000000
      9900000099000000990000000000000000000000000000000000000000009CDE
      EF0094F7FF0073DEF70073DEF7000000FF000000FF0073DEF70073DEF7004AC6
      E70018A5C600000000000000000000000000494949000F0FAF001717E6002525
      E8002525E8002525E8002525E8002525E8002525E8002525E8002525E8002525
      E8002525E8001717E6001010A8004949490000000000000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF00000000000000FF00000000000000
      FF000000FF000000000000000000C0C0C0000000000000000000000099000000
      CC000000FF000000CC000000CC000000CC000000CC000000CC00000099000000
      CC00000099000000990000000000000000000000000000000000000000000000
      000094F7FF0073DEF70073DEF7000000FF000000FF0073DEF70073DEF70018A5
      C60000000000000000000000000000000000494949000C0CBA005959F8006767
      F8006767F8006767F8006767F8006767F8006767F8006767F8006767F8006767
      F8006767F8005959F8000D0DB3004949490080808000000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00000000000000FF000000
      FF000000FF000000000080808000C0C0C0000000000000000000000099000000
      FF000000CC000000FF000000CC000000CC000000CC000000CC000000CC000000
      99000000CC000000990000000000000000000000000000000000000000000000
      00009CDEEF0094F7FF0073DEF7000000FF000000FF0073DEF7004AC6E70018A5
      C60000000000000000000000000000000000494949000909C1007979FE008484
      FF008484FF008484FF008484FF008484FF008484FF008484FF008484FF008484
      FF008484FF007979FE000A0AB90049494900C0C0C000000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF00000000000000FF00000000000000
      FF000000FF0000000000C0C0C000C0C0C0000000000000000000000099000000
      FF000000FF000000CC000000FF000000CC000000CC000000CC000000CC000000
      CC00000099000000990000000000000000000000000000000000000000000000
      00000000000094F7FF0073DEF7000000FF000000FF0073DEF70018A5C6000000
      000000000000000000000000000000000000494949000808C200ADADFF00B8B8
      FF00A0A0FF00A0A0FF00A0A0FF00A0A0FF00A0A0FF00A0A0FF00A0A0FF00A0A0
      FF00A0A0FF009292FF000909BA0049494900C0C0C000000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00000000000000FF000000
      FF000000FF0000000000C0C0C000C0C0C0000000000000000000000099009999
      FF000000FF000000FF000000CC000000FF000000CC000000CC000000CC000000
      CC000000CC000000990000000000000000000000000000000000000000000000
      0000000000009CDEEF0094F7FF000000FF000000FF004AC6E70018A5C6000000
      000000000000000000000000000000000000494949000808C200CACAFF00E8E8
      FF00B8B8FF00B8B8FF00B8B8FF00B8B8FF00B8B8FF00B8B8FF00B8B8FF00B8B8
      FF00B8B8FF00A8A8FF000909BA0049494900C0C0C000000000000000FF000000
      FF0000000000000000000000000000000000000000000000FF00000000000000
      FF000000FF0000000000C0C0C000C0C0C0000000000000000000000099009999
      FF009999FF000000FF000000FF000000CC000000FF000000CC000000CC000000
      CC000000CC000000990000000000000000000000000000000000000000000000
      0000000000000000000094F7FF0073DEF70073DEF70018A5C600000000000000
      000000000000000000000000000000000000494949000808C200E2E2FF00FFFF
      FF00F3F3FF00DEDEFF00C9C9FF00C9C9FF00C9C9FF00C9C9FF00C9C9FF00C9C9
      FF00C9C9FF00B7B7FF000909BA0049494900C0C0C000000000000000FF000000
      0000000000008080800000000000000000000000000000000000000000000000
      00000000FF0000000000C0C0C000C0C0C0000000000000000000000000000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000000000000000000000000000000000000000000000000000
      000000000000000000009CDEEF0094F7FF004AC6E70018A5C600000000000000
      000000000000000000000000000000000000494949000909BF006666FF00D3D3
      FF00D9D9FF00BDBDFF00A1A1FF00A1A1FF00A1A1FF00A1A1FF00A1A1FF00A1A1
      FF00A1A1FF006666FE000A0AB70049494900C0C0C00000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000000000000000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000094F7FF0018A5C60000000000000000000000
      00000000000000000000000000000000000049494900494949000909B9000909
      BC000909BC000909BC000909BC000909BC000909BC000909BC000909BC000909
      BC000909BC000A0AB8004949490049494900C0C0C000C0C0C000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000000000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000049494900494949004949
      4900494949004949490049494900494949004949490049494900494949004949
      490049494900494949004949490000000000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFBFF00FEFCFC00FBFFFA00F6FB
      F900FAFDFF00F3F1FF00E3EAFE00EBF5FF00DBE4FF00D4DFFF00DFEBF700F8FF
      EF00FCFFF000FEFEF800FFFDFC00FEFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FFFBFF00FEFCFC00FBFFFA00FBFF
      FF00F1F1FF00D7D5F3003928910025109B003924B60014027F009081DC00F4EA
      FF00FCFAF900FEFEF800FFFDFC00FEFCFC000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000FFFF0000FFFF0000FFFF00000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000FFFF0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      000000FFFF0000FFFF0000FFFF0000000000FFFFFB00FFF8FF00FFFDFF00FAFB
      FF00CACBFF001100A5001704B1001503BC001802C600220BC10019049D005D4C
      B300E4E1FF00F7F6FF00FFFFF500FFFFF9000000FF000000FF000000FF000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      00000000FF000000FF000000FF0000000000FFFF0000FFFF0000000000008080
      800080808000C0C0C000808080000000000080808000C0C0C000808080008080
      800000000000FFFF0000FFFF00000000000000FFFF0000FFFF00000000008080
      800080808000C0C0C000808080000000000080808000C0C0C000808080008080
      80000000000000FFFF0000FFFF0000000000F6EFFC00EAECED00E7F0F400E2E0
      FF002A24B1000905B8000D08C9000800CF000400D0000E05D1000400B800130E
      AD004D4F9D00EBECFF00FFFAF700FFFAF3000000FF000000FF00000000008080
      800080808000C0C0C000808080000000000080808000C0C0C000808080008080
      8000000000000000FF000000FF0000000000FFFF000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000808080000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C00000000000FFFF00000000000000FFFF0000000000C0C0C000C0C0
      C000C0C0C000C0C0C000808080000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000FFFF0000000000ECEAFD00F6FFF600EDF8FF001708
      8F001B05CF000F09C2000600C0000300C5000300C7000200C1000706C200110C
      C300272B9400CED0FF00F8F5FE00FFFFFC000000FF0000000000C0C0C000C0C0
      C000C0C0C000C0C0C000808080000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000000000000000FF0000000000FFFF000000000000808080008080
      800080808000C0C0C000C0C0C00000000000C0C0C000C0C0C000808080008080
      80008080800000000000FFFF00000000000000FFFF0000000000808080008080
      800080808000C0C0C000C0C0C00000000000C0C0C000C0C0C000808080008080
      8000808080000000000000FFFF0000000000FEFCFF00F0FAEE00E3E2FF003318
      C2002206CE002417C1001C08B8001C08B8001A0BB3001105AB001F12BC000E00
      B0001E1D9D0040419100EEECFF00FDFEFC000000FF0000000000808080008080
      800080808000C0C0C000C0C0C00000000000C0C0C000C0C0C000808080008080
      800080808000000000000000FF0000000000FFFF000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C00000000000FFFF00000000000000FFFF0000000000C0C0C000C0C0
      C000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000FFFF0000000000FFF9FD00F7F0F7006454AB002914
      9200E6F1FF00DDE8FC00EDECFF00F0EAFF00F1ECFF00F7F2FF00F6F1FF00F0ED
      FF00534CC50029208E00F2EDFF00FFFFFE000000FF0000000000C0C0C000C0C0
      C000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000000000000000FF0000000000FFFF000000000000808080008080
      8000808080008080800000000000000000000000000080808000808080008080
      80008080800000000000FFFF00000000000000FFFF0000000000808080008080
      8000808080008080800000000000000000000000000080808000808080008080
      8000808080000000000000FFFF0000000000FFFBFF00FAF5FE0045369800210F
      9000E0F3FF00EDFBFA00F1FDF700F4FCF500F6FBF200FFFFF900F7FBF500F9FF
      FB00665AD00024138C00FBF3FF00FDFDF7000000FF0000000000808080008080
      8000808080008080800000000000000000000000000080808000808080008080
      800080808000000000000000FF0000000000FFFF000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C00000000000FFFF00000000000000FFFF0000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000FFFF0000000000FFF8FF00FBFEFF006B5DD3002A0F
      BD00BCBDFF00CDC5FF00C6C2FF00C8C0FF00CCBEFF00D6C3FF00D9C7FF00D4CA
      FF00503DCA00341F9A00EFE3FF00F6F4EC000000FF0000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000000000000000FF0000000000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF00000000000000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000000000FFFEFF00ECEFF400BAB7FF002115
      AD000900A6000F0C9E00100AAB00160CAC001B0FA900170AA2001D12AF000400
      A5001E0DB50015067F00F5F5FF00FEFFEF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000FFFF0000FFFF0000FFFF00000000
      0000C0C0C00000000000FFFF0000FFFF0000FFFF000000000000C0C0C0000000
      0000FFFF0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF000000
      0000C0C0C0000000000000FFFF0000FFFF0000FFFF0000000000C0C0C0000000
      000000FFFF0000FFFF0000FFFF0000000000FFFFFC00FDFEFA00F0EDFF002419
      8D000C00B7000000B6000C06C3000A02C4000900C5000F05CE000400C0000B04
      C10022159F00CCC5FF00F5F8FC00FFFFF1000000FF000000FF000000FF000000
      0000C0C0C000000000000000FF000000FF000000FF0000000000C0C0C0000000
      00000000FF000000FF000000FF0000000000FFFF0000FFFF0000FFFF00000000
      0000C0C0C00000000000FFFF0000FFFF0000FFFF000000000000C0C0C0000000
      0000FFFF0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF000000
      0000C0C0C0000000000000FFFF0000FFFF0000FFFF0000000000C0C0C0000000
      000000FFFF0000FFFF0000FFFF0000000000FCFDF900FFFFF700F6F1FF00DED1
      FF001E0FB100130DD0000E06C5000900CC000200D3000000CF000000B8000E05
      A900655CB600F0EDFF00F6FAF500FFFFF8000000FF000000FF000000FF000000
      0000C0C0C000000000000000FF000000FF000000FF0000000000C0C0C0000000
      00000000FF000000FF000000FF0000000000FFFF0000FFFF0000FFFF00000000
      0000C0C0C00000000000FFFF0000FFFF0000FFFF000000000000C0C0C0000000
      0000FFFF0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF000000
      0000C0C0C0000000000000FFFF0000FFFF0000FFFF0000000000C0C0C0000000
      000000FFFF0000FFFF0000FFFF0000000000FBFFFF00FFFFF500FCF8F300F3EA
      FF00423AA5000C0EA8001209B7000B02C4000300CE000000BF001615B9003531
      9A00F6F4FF00F3F4FE00F6F7EE00FBF8F3000000FF000000FF000000FF000000
      0000C0C0C000000000000000FF000000FF000000FF0000000000C0C0C0000000
      00000000FF000000FF000000FF0000000000FFFF0000FFFF0000FFFF00000000
      000080808000C0C0C000FFFF0000FFFF0000FFFF0000C0C0C000808080000000
      0000FFFF0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF000000
      000080808000C0C0C00000FFFF0000FFFF0000FFFF00C0C0C000808080000000
      000000FFFF0000FFFF0000FFFF0000000000F8FAFF00FEFDF900FFFFF100FFFF
      F700E6EBFF00CAD2FF004842A70018138C000F0D8800151A7D00A0A6E900F4FB
      FF00FEFEF800FFFFF700FFFFFC00FFFEFE000000FF000000FF000000FF000000
      000080808000C0C0C0000000FF000000FF000000FF00C0C0C000808080000000
      00000000FF000000FF000000FF0000000000FFFF0000FFFF0000FFFF0000FFFF
      00000000000000000000C0C0C000C0C0C000C0C0C0000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000C0C0C000C0C0C000C0C0C000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FBFDFE00FAFCFD00FAFBF700FEFF
      FA00FDFFFF00E9E9F700EFEEFF00EAEAFF00E8E7FF00E7E7FF00FAFAFF00FBFC
      F800FFFCF700FFFBFC00FFFCFE00FFFDFD000000FF000000FF000000FF000000
      FF000000000000000000C0C0C000C0C0C000C0C0C00000000000000000000000
      FF000000FF000000FF000000FF0000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FEFFF700FBFDFE00F6F8FF00EFF2
      F700FBF7F600FFF7F900FDFFFF00FAFFF600FFFFF300FFFCED00FBF5EA00FFF9
      FA00FDF6FD00FDF8FF00FEF9FF00FCFCFC000000FF000000FF000000FF000000
      FF000000FF000000FF000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000E007000000000000
      E007000000000000E007000000000000E007000000000000E007000000000000
      E007000000000000E007000000000000F00F000000000000F01F000000000000
      FFFF000000000000FFFF000000000000FFFF80010000FFFFFFFF00000000FFFF
      C00300000000FFFF800100000000FFFFC00300000000E007C00300000000C003
      E00700000000C003E00700000000C003F00F00000000C003F00F00000000C003
      F81F00000000C003F81F00000000C003FC3F00000000E007FC3F00000000FFFF
      FE7F00000000FFFFFFFF80010000FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Left = 426
    Top = 81
    object Action_LoctionLoad: TAction
      Caption = 'Action_LoctionLoad'
    end
    object Action_DeviceLoad: TAction
      Caption = 'Action_DeviceLoad'
    end
    object Action_DoorLoad: TAction
      Caption = 'Action_DoorLoad'
    end
    object Action_AlarmLoad: TAction
      Caption = 'Action_AlarmLoad'
    end
    object Action_FoodLoad: TAction
      Caption = 'Action_FoodLoad'
    end
    object Action_RecvData: TAction
      Caption = 'Action_RecvData'
    end
    object Action_Reload: TAction
      Caption = 'Action_Reload'
      OnExecute = Action_ReloadExecute
    end
    object Action_SensorLoad: TAction
      Caption = 'Action_SensorLoad'
    end
    object Action_intAlarmHistory: TAction
      Caption = #48169#48276#44396#50669#51060#47141#51312#54924
      OnExecute = Action_intAlarmHistoryExecute
    end
    object Action_AlarmHistory: TAction
      Caption = #48169#48276#44396#50669#51060#47141#51312#54924
    end
  end
  object devicelist: TImageList
    BkColor = clWhite
    Left = 32
    Top = 208
    Bitmap = {
      494C010107000900040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006666FF0033009900FFFFFF003300CC000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF0004040400040404000404
      0400040404000404040000FFFF003399CC000404040004040400040404000404
      040004040400040404000404040004040400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006666FF00330099000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000FF000000
      FF000000FF000000000000000000FFFFFF00FFFFFF0086868600868686008686
      8600868686008686860000808000008080000404040086868600868686008686
      860086868600868686008686860086868600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF0033009900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000800000008000000080
      0000008000000000FF000000FF0000800000008000000000FF000000FF000000
      FF00000080000080000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DDDDDD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C0000000FF000000FF0066CCCC006666FF0033009900C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000800000808080000000
      0000C0C0C0000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000000000008000000000000000000000FFFFFF0004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      04000404040004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF00D7D7D700FFFFFF006666FF0033009900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000800000008000000080
      000000800000008000000000FF000000FF000000FF000000FF00008000000080
      00000080000000800000000000000000000086868600A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000B2B2B20004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0086868600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000800000808080000000
      0000C0C0C00080808000008000000000FF000000FF000000FF00008000000080
      00000080000000800000000000000000000086868600DDDDDD00777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      770099999900B2B2B20077777700FFFFFF007777770077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007777770096969600FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000800000008000000080
      000000800000008000000000FF000000FF000000FF000000FF000000FF008080
      800000800000C0C0C000000000000000000086868600DDDDDD00777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      770099999900B2B2B20077777700FFFFFF0077777700DDDDDD00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800A4A0A000969696005F5F5F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000800000808080000000
      0000C0C0C0000000FF000000FF000000FF00C0C0C0000000FF000000FF008080
      80000080000000800000000000000000000086868600DDDDDD00D7D7D700CCCC
      CC00CCCCCC00C0C0C000C0C0C000B2B2B200B2B2B200B2B2B200A4A0A0000080
      000099999900B2B2B20077777700FFFFFF0077777700DDDDDD00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800A4A0A000969696005F5F5F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000800000C0C0C0000080
      00000000FF000000FF000000FF0000800000C0C0C000008000000000FF000000
      FF00008000000080000000000000FFFFFF0086868600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B2B2B20077777700FFFFFF0077777700DDDDDD00D7D7D700CCCC
      CC00CCCCCC00C0C0C000C0C0C000B2B2B200B2B2B200A4A0A000A4A0A000A4A0
      A000A4A0A000969696005F5F5F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C0000000
      FF000000FF000000FF00C0C0C000C0C0C000C0C0C000C0C0C0000000FF000000
      FF000000FF00C0C0C00000000000FFFFFF00FFFFFF0077777700969696009696
      9600969696009696960096969600969696009696960096969600969696009696
      9600969696009696960077777700FFFFFF0077777700E3E3E300DDDDDD00D7D7
      D700CCCCCC00C0C0C000C0C0C000B2B2B200B2B2B200A4A0A000A4A0A000FFFF
      FF00A4A0A000969696005F5F5F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B2005F5F5F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770077777700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000006666660066666600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000F0FBFF00F0FBFF00A4A0A0004242420066666600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000F0FBFF000000FF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018A5C60018A5
      C60018A5C60018A5C60018A5C60018A5C60018A5C60018A5C60018A5C60018A5
      C60018A5C60018A5C600FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF00F0FBFF00F0FBFF00A4A0A00066666600666666004242420000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF00F0FBFF00F0FBFF00A4A0A000666666000000FF000000FF000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF009CDEEF0094F7FF0073DE
      F70073DEF70073DEF70073DEF7000000FF000000FF0073DEF70073DEF70073DE
      F70073DEF7004AC6E70018A5C600FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF0066666600F0FBFF00A4A0A000666666006666660066666600666666006666
      6600A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF0066666600F0FBFF00A4A0A0000000FF000000FF000000FF000000FF000000
      FF00A4A0A000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF0094F7FF0073DE
      F70073DEF70073DEF70073DEF7000000FF000000FF0073DEF70073DEF70073DE
      F70073DEF70018A5C600FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF0066666600F0FBFF00A4A0A000666666006666660066666600666666006666
      6600A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF0066666600F0FBFF000000FF000000FF0066666600666666000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000008000000080
      000000800000C0C0C00000800000008000000080000000008000008000000080
      0000000080000080000000000000FFFFFF00FFFFFF00FFFFFF009CDEEF0094F7
      FF0073DEF70073DEF70073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F7004AC6E70018A5C600FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF0066666600F0FBFF00A4A0A000666666006666660066666600666666004242
      420000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF00666666000000FF000000FF00666666006666660066666600666666000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000808080000000
      0000C0C0C0008080800000800000008000000080000000000000000000000000
      000000000000008000000000000000000000FFFFFF00FFFFFF00FFFFFF0094F7
      FF0073DEF70073DEF70073DEF7000000FF000000FF0073DEF70073DEF70073DE
      F70018A5C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF00F0FBFF00F0FBFF00A4A0A000666666006666660066666600666666006666
      660000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF00F0FBFF000000FF000000FF00666666006666660066666600666666000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000000000000000000FFFFFF00FFFFFF00FFFFFF009CDE
      EF0094F7FF0073DEF70073DEF7000000FF000000FF0073DEF70073DEF7004AC6
      E70018A5C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF00F0FBFF0096969600A4A0A000666666006666660042424200666666006666
      660042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF00F0FBFF0096969600A4A0A000666666006666660042424200666666006666
      660042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000808080000000
      0000C0C0C0008080800000800000008000000080000000800000008000000080
      000000800000008000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0094F7FF0073DEF70073DEF7000000FF000000FF0073DEF70073DEF70018A5
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000009696
      9600F0FBFF006666660066666600666666006666660066666600666666006666
      660042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000009696
      9600F0FBFF006666660066666600666666006666660066666600666666006666
      660042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000008000000080
      0000008000000080000000800000C0C0C000C0C0C00000800000808080008080
      800000800000C0C0C0000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009CDEEF0094F7FF0073DEF7000000FF000000FF0073DEF7004AC6E70018A5
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000006666
      6600F0FBFF00F0FBFF0066666600424242006666660066666600666666006666
      660042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000006666
      6600F0FBFF00F0FBFF0066666600424242006666660066666600666666006666
      660042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000808080000000
      0000C0C0C000808080000080000000800000C0C0C00000800000808080008080
      800000800000008000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0094F7FF0073DEF7000000FF000000FF0073DEF70018A5C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF0066666600F0FBFF00F0FBFF00A4A0A0006666660042424200666666006666
      660066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FB
      FF006666660000000000F0FBFF00A4A0A0006666660042424200666666006666
      660066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000C0C0C0000080
      000000800000008000000080000000800000C0C0C00000800000C0C0C0000080
      0000008000000080000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009CDEEF0094F7FF000000FF000000FF004AC6E70018A5C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00A4A0A000666666004242
      420066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00A4A0A000666666004242
      420066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0094F7FF0073DEF70073DEF70018A5C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00A4A0
      A00042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00A4A0
      A00042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009CDEEF0094F7FF004AC6E70018A5C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0094F7FF0018A5C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FBFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F0FBFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000CFF9FFFFFFFF0000
      C7F1FFFFF93F0000E2038000FC7F000000018000FC7F00008001FEFF80030000
      80008003F29F000080000001FEFF000080000001000300008000000100010000
      800000010001000080010001000100008001800100110000C7E3FFFF80010000
      CFF3FFFFC0010000FFFFFFFFFFFF0000F9FFF9E7FFFFFFFFE0FFE0C7FFFFFFFF
      C07FC01FFFFFC003C01FC01FFE078001C007C0070001C003C007C0078001C003
      C007C0078000E007C007C0078000E007C007C0078000F00FC007C0078000F00F
      C007C0078000F81FC007C0078001F81FE007E0078001FC3FF007F007FFFFFC3F
      FC07FC07FFFFFE7FFF1FFF1FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu_intZone: TPopupMenu
    AutoHotkeys = maManual
    Left = 579
    Top = 581
    object N4: TMenuItem
      Caption = #50508#46988#54869#51064
      OnClick = N4Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object MenuItem6: TMenuItem
      Caption = #44048#51648#51316#50948#52824#51221#48372
      OnClick = MenuItem6Click
    end
    object N21: TMenuItem
      Action = Action_intAlarmHistory
    end
  end
  object PopupMenu_Building: TPopupMenu
    AutoHotkeys = maManual
    Left = 427
    Top = 133
    object mi_AlarmSearch: TMenuItem
      Caption = #48169#48276#44396#50669#51312#54924
      OnClick = mi_AlarmSearchClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mi_BuildingBigIcon: TMenuItem
      Caption = #53360#50500#51060#53080
      OnClick = mi_BuildingBigIconClick
    end
    object mi_BuildingSmallIcon: TMenuItem
      Caption = #51089#51008#50500#51060#53080
      OnClick = mi_BuildingSmallIconClick
    end
  end
  object ADOAlarmQuery: TADOQuery
    Connection = DataModule1.ADOConnection
    Parameters = <>
    Left = 400
    Top = 192
  end
  object smallAlarmImageList1: TImageList
    Left = 336
    Top = 168
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000000000000028282800282828002828280028282800000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      000028282800000000002972F9000CD4F8000CD4F8002972F900000000002828
      2800000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000000000000000000000000000000000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000000000000000000000000000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      00002972F9000CD4F8000CD4F80007F8FB0007F8FB000CD4F8002972F9002972
      F900282828000000000000000000000000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000282828001818
      E0002972F9000CD4F80007F8FB00D5FEFF00D5FEFF0007F8FB000CD4F8002972
      F900000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000FFFFFF00FFFFFF0000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000000000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFFFFF00FFFFFF00FFFFFF000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000565656002972
      F9000CD4F8000CD4F800D5FEFF00D5FEFF00D5FEFF00D5FEFF000CD4F8002972
      F9001818E0002828280000000000000000000080000000800000008000000080
      0000008000000080000000800000FFFFFF00FFFFFF0000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000000000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000565656002972
      F9000CD4F8000CD4F80007F8FB00D5FEFF00D5FEFF0007F8FB000CD4F8002972
      F9001818E0002828280000000000000000000080000000800000008000000080
      0000008000000080000000800000FFFFFF00FFFFFF0000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000000000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000282828001818
      E0002972F9000CD4F8000CD4F80007F8FB0007F8FB000CD4F8000CD4F8002972
      F900000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000FFFFFF00FFFFFF0000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000000000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000282828001818
      E0000CD4F8002972F9000CD4F8000CD4F8000CD4F8000CD4F8002972F9001818
      E000565656000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000FFFFFF00FFFFFF0000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000000000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000080
      0000008000000080000000800000008000000000000000000000282828001818
      E0001818E0002972F9002972F9000CD4F8000CD4F8002972F9001818E0001818
      E000565656000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000FFFFFF00FFFFFF0000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000000000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000080000000800000FFFFFF00FFFF
      FF00008000000080000000800000008000000000000000000000282828001818
      E00056565600565656002972F9000CD4F8000CD4F8002972F900565656005656
      5600565656000000000000000000000000000080000000800000008000000080
      0000FFFFFF000080000000800000FFFFFF00FFFFFF000000000000800000FFFF
      FF00008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000000000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000080000000800000FFFFFF00FFFF
      FF00008000000080000000800000008000000000000000000000282828005656
      560000000000565656002972F9002972F9002972F9002972F900565656002828
      28001818E0002828280000000000000000000080000000800000008000000080
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00008000000080000000800000008000000080000000800000008000000080
      000000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000FFFFFF00FFFFFF000080000000800000FFFFFF00FFFF
      FF00008000000080000000800000008000000000000000000000000000000000
      00000000000000000000565656002972F9002972F90056565600000000000000
      0000282828000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000080
      0000008000000080000000800000008000000000000000000000000000000000
      00000000000000000000565656001818E0005656560028282800000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000000000000028282800282828000000000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C00000FFFF000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000000000000000000000000000000000000000000000000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000000000000000000000000000000000000000000000000000000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C00000FFFF000080800000000000000000000000
      00000000000000000000000000000000000000000000000000000099990033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC000099990033CCCC00009999000099
      990000999900009999000000000000000000000000000000000099000000CC00
      0000CC000000CC000000CC000000CC00000099000000CC000000990000009900
      0000990000009900000000000000000000000000000000000000000099000000
      CC000000CC000000CC000000CC000000CC00000099000000CC00000099000000
      9900000099000000990000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF000080800000000000000000000000
      00000000000000000000000000000000000000000000000000000099990000FF
      FF0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC000099990033CCCC000099
      990000999900009999000000000000000000000000000000000099000000FF00
      0000CC000000CC000000CC000000CC000000CC00000099000000CC0000009900
      0000990000009900000000000000000000000000000000000000000099000000
      FF000000CC000000CC000000CC000000CC000000CC00000099000000CC000000
      9900000099000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF0000808000000000000000
      00000000000000000000000000000000000000000000000000000099990033CC
      CC0000FFFF0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC000099990033CC
      CC0000999900009999000000000000000000000000000000000099000000CC00
      0000FF000000CC000000CC000000CC000000CC000000CC00000099000000CC00
      0000990000009900000000000000000000000000000000000000000099000000
      CC000000FF000000CC000000CC000000CC000000CC000000CC00000099000000
      CC00000099000000990000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF0000FFFF00C0C0C0000080
      80000000000000000000000000000000000000000000000000000099990000FF
      FF0033CCCC0000FFFF0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC000099
      990033CCCC00009999000000000000000000000000000000000099000000FF00
      0000CC000000FF000000CC000000CC000000CC000000CC000000CC0000009900
      0000CC0000009900000000000000000000000000000000000000000099000000
      FF000000CC000000FF000000CC000000CC000000CC000000CC000000CC000000
      99000000CC000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000000099990000FF
      FF0000FFFF0033CCCC0000FFFF0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0000999900009999000000000000000000000000000000000099000000FF00
      0000FF000000CC000000FF000000CC000000CC000000CC000000CC000000CC00
      0000990000009900000000000000000000000000000000000000000099000000
      FF000000FF000000CC000000FF000000CC000000CC000000CC000000CC000000
      CC00000099000000990000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000808000000000000000000000000000000000000000000000999900CCFF
      FF0000FFFF0000FFFF0033CCCC0000FFFF0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC00009999000000000000000000000000000000000099000000FF99
      6600FF000000FF000000CC000000FF000000CC000000CC000000CC000000CC00
      0000CC0000009900000000000000000000000000000000000000000099009999
      FF000000FF000000FF000000CC000000FF000000CC000000CC000000CC000000
      CC000000CC00000099000000000000000000000000000000000000000000C0C0
      C00000FFFF00008080000000000000000000000000000000000000FFFF0000FF
      FF0000808000000000000000000000000000000000000000000000999900CCFF
      FF00CCFFFF0000FFFF0000FFFF0033CCCC0000FFFF0033CCCC0033CCCC0033CC
      CC0033CCCC00009999000000000000000000000000000000000099000000FF99
      6600FF996600FF000000FF000000CC000000FF000000CC000000CC000000CC00
      0000CC0000009900000000000000000000000000000000000000000099009999
      FF009999FF000000FF000000FF000000CC000000FF000000CC000000CC000000
      CC000000CC0000009900000000000000000000000000000000000000000000FF
      FF00FFFFFF00C0C0C0000000000000000000000000000000000000FFFF0000FF
      FF00008080000000000000000000000000000000000000000000000000000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000000000000000000000000000000000000000000000000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000000000000000000000000000000000000000000000000000000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00C0C0C0000080800000808000C0C0C00000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FC3F000000000000
      F42F000000000000F007000000000000C00F000000000000C003000000000000
      C003000000000000C00F000000000000C007000000000000C007000000000000
      C007000000000000C803000000000000FC37000000000000FC3F000000000000
      FCFF000000000000FFFF000000000000FEFFFFFFFFFFFFFFFC7FFFFFFFFFFFFF
      FC7FFFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFFE007E007E007FC7FC003C003C003
      FC7FC003C003C003FC1FC003C003C003FE0FC003C003C003FF07C003C003C003
      F7C7C003C003C003E3C7C003C003C003E187E007E007E007E007FFFFFFFFFFFF
      F00FFFFFFFFFFFFFF81FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object MessageTimer: TTimer
    Enabled = False
    OnTimer = MessageTimerTimer
    Left = 648
    Top = 568
  end
  object ImageList48: TImageList
    Height = 48
    Width = 48
    Left = 296
    Top = 168
    Bitmap = {
      494C010105000900040030003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C000000090000000010020000000000000B0
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828002828
      2800282828002828280028282800282828002828280028282800282828002828
      2800282828002828280028282800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828002828
      2800282828002828280028282800282828002828280028282800282828002828
      2800282828002828280028282800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000282828002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000282828002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002828280028282800282828000000000000000000000000002972F9002972
      F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8002972
      F9002972F9002972F9002972F900000000000000000000000000282828002828
      2800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002828280028282800282828000000000000000000000000002972F9002972
      F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8002972
      F9002972F9002972F9002972F900000000000000000000000000282828002828
      2800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828002828
      28000000000000000000000000002972F9002972F9002972F9000CD4F8000CD4
      F8000CD4F8000CD4F80007F8FB0007F8FB0007F8FB0007F8FB0007F8FB000CD4
      F8000CD4F8000CD4F8002972F9002972F9002972F9002972F900000000000000
      0000282828000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028282800000000000000
      00002972F9002972F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4
      F8000CD4F80007F8FB0007F8FB0007F8FB00D5FEFF0007F8FB0007F8FB0007F8
      FB000CD4F8000CD4F8000CD4F8002972F9002972F9002972F9002972F9002972
      F900000000002828280028282800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028282800000000000000
      00002972F9002972F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4
      F8000CD4F80007F8FB0007F8FB0007F8FB00D5FEFF0007F8FB0007F8FB0007F8
      FB000CD4F8000CD4F8000CD4F8002972F9002972F9002972F9002972F9002972
      F900000000002828280028282800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800000000001818E0001818
      E0002972F9002972F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4
      F8000CD4F80007F8FB0007F8FB0007F8FB00D5FEFF00D5FEFF00D5FEFF0007F8
      FB0007F8FB0007F8FB000CD4F8002972F9002972F9002972F9002972F9002972
      F9001818E0000000000000000000282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800000000001818E0001818
      E0002972F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4F80007F8
      FB0007F8FB0007F8FB00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FE
      FF0007F8FB0007F8FB000CD4F8000CD4F8000CD4F8002972F9002972F9002972
      F9001818E0000000000000000000282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800000000001818E0001818
      E0002972F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4F80007F8
      FB0007F8FB0007F8FB00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FE
      FF0007F8FB0007F8FB000CD4F8000CD4F8000CD4F8002972F9002972F9002972
      F9001818E0000000000000000000282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002828280000000000000000001818E0002972F9002972
      F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F80007F8FB0007F8
      FB0007F8FB00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FE
      FF0007F8FB0007F8FB0007F8FB000CD4F8000CD4F8000CD4F8002972F9002972
      F9002972F9001818E0001818E000000000002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002828280056565600565656001818E0002972F9002972
      F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F80007F8FB00D5FE
      FF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FE
      FF00D5FEFF00D5FEFF0007F8FB000CD4F8000CD4F8000CD4F8002972F9002972
      F9002972F9001818E0001818E000000000002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002828280056565600565656001818E0002972F9002972
      F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F80007F8FB00D5FE
      FF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FE
      FF00D5FEFF00D5FEFF0007F8FB000CD4F8000CD4F8000CD4F8002972F9002972
      F9002972F9001818E0001818E000000000002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002828280056565600565656001818E0002972F9002972
      F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F80007F8FB0007F8
      FB0007F8FB00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FE
      FF0007F8FB0007F8FB0007F8FB000CD4F8000CD4F8000CD4F8002972F9002972
      F9002972F9001818E0001818E000565656002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002828280056565600565656001818E0002972F9002972
      F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F80007F8FB0007F8
      FB0007F8FB00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF0007F8
      FB0007F8FB0007F8FB000CD4F8000CD4F8000CD4F8000CD4F8002972F9002972
      F9002972F9001818E0001818E000565656002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002828280056565600565656001818E0002972F9002972
      F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F80007F8FB0007F8
      FB0007F8FB00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF0007F8
      FB0007F8FB0007F8FB000CD4F8000CD4F8000CD4F8000CD4F8002972F9002972
      F9002972F9001818E0001818E000565656002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002828280056565600565656001818E0002972F9002972
      F9002972F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4F80007F8
      FB0007F8FB0007F8FB00D5FEFF00D5FEFF00D5FEFF0007F8FB0007F8FB0007F8
      FB0007F8FB0007F8FB000CD4F8000CD4F8000CD4F8002972F9002972F9002972
      F9002972F9001818E0001818E000000000002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800000000001818E0001818
      E0002972F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4
      F8000CD4F80007F8FB0007F8FB0007F8FB00D5FEFF0007F8FB0007F8FB000CD4
      F8000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8002972F9002972F9002972
      F9001818E0000000000000000000282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800000000001818E0001818
      E0002972F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4
      F8000CD4F80007F8FB0007F8FB0007F8FB00D5FEFF0007F8FB0007F8FB000CD4
      F8000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8002972F9002972F9002972
      F9001818E0000000000000000000282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800000000001818E0001818
      E0002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8000CD4
      F8000CD4F8000CD4F80007F8FB0007F8FB0007F8FB0007F8FB0007F8FB000CD4
      F8000CD4F8000CD4F8000CD4F8002972F9002972F9002972F9002972F9002972
      F9001818E0005656560056565600282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800000000001818E0001818
      E0002972F9000CD4F8000CD4F8002972F9002972F9002972F9000CD4F8000CD4
      F8000CD4F8000CD4F8000CD4F8000CD4F80007F8FB000CD4F8000CD4F8000CD4
      F8000CD4F8000CD4F8002972F9002972F9002972F9002972F9001818E0001818
      E0001818E0005656560056565600282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800000000001818E0001818
      E0002972F9000CD4F8000CD4F8002972F9002972F9002972F9000CD4F8000CD4
      F8000CD4F8000CD4F8000CD4F8000CD4F80007F8FB000CD4F8000CD4F8000CD4
      F8000CD4F8000CD4F8002972F9002972F9002972F9002972F9001818E0001818
      E0001818E0005656560056565600282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800565656001818E0001818
      E0002972F9002972F9002972F9002972F9002972F9002972F9002972F9002972
      F9002972F9000CD4F8000CD4F8000CD4F80007F8FB000CD4F8000CD4F8000CD4
      F8002972F9002972F9002972F9002972F9002972F9001818E0001818E0001818
      E000000000002828280028282800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800565656001818E0001818
      E0002972F9001818E0001818E0001818E0002972F9002972F9002972F9002972
      F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8000CD4
      F8002972F9002972F9002972F9001818E0001818E000565656001818E0001818
      E0001818E0005656560056565600282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800565656001818E0001818
      E0002972F9001818E0001818E0001818E0002972F9002972F9002972F9002972
      F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8000CD4
      F8002972F9002972F9002972F9001818E0001818E000565656001818E0001818
      E0001818E0005656560056565600282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800565656001818E0001818
      E0001818E0000000000000000000565656001818E0001818E0001818E0002972
      F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8000CD4
      F8002972F9002972F9001818E0005656560056565600282828001818E0001818
      E0001818E0005656560056565600282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800565656001818E0001818
      E0001818E00056565600565656002828280056565600565656001818E0002972
      F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8002972
      F9002972F9002972F9001818E000565656005656560028282800565656005656
      56001818E0005656560056565600282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280028282800565656001818E0001818
      E0001818E00056565600565656002828280056565600565656001818E0002972
      F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8002972
      F9002972F9002972F9001818E000565656005656560028282800565656005656
      56001818E0005656560056565600282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002828280056565600565656001818E0001818E0001818
      E0005656560000000000000000002828280056565600565656001818E0002972
      F9002972F9002972F9002972F9002972F9000CD4F8002972F9002972F9002972
      F9002972F9002972F9001818E000565656005656560028282800565656005656
      56001818E0005656560056565600565656002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000282828002828280056565600565656005656
      56002828280000000000000000002828280056565600565656001818E0002972
      F9002972F9002972F9002972F9002972F9000CD4F8002972F9002972F9002972
      F9002972F9002972F9001818E000565656005656560000000000282828002828
      2800565656001818E0001818E000565656002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000282828002828280056565600565656005656
      56002828280000000000000000002828280056565600565656001818E0002972
      F9002972F9002972F9002972F9002972F9000CD4F8002972F9002972F9002972
      F9002972F9002972F9001818E000565656005656560000000000282828002828
      2800565656001818E0001818E000565656002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028282800282828002828
      2800000000000000000000000000000000002828280028282800565656001818
      E0001818E0001818E0002972F9002972F9002972F9002972F9002972F9002972
      F9001818E0001818E00056565600282828002828280000000000000000000000
      0000282828005656560056565600282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828005656
      5600565656001818E0002972F9002972F9002972F9002972F9002972F9001818
      E000565656005656560028282800000000000000000000000000000000000000
      0000000000002828280028282800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828005656
      5600565656001818E0002972F9002972F9002972F9002972F9002972F9001818
      E000565656005656560028282800000000000000000000000000000000000000
      0000000000002828280028282800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828005656
      5600565656001818E0002972F9002972F9002972F9001818E0001818E0001818
      E000565656005656560028282800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828005656
      5600565656001818E0001818E0001818E0001818E00056565600565656005656
      5600282828002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828005656
      5600565656001818E0001818E0001818E0001818E00056565600565656005656
      5600282828002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828005656
      5600565656001818E00056565600565656005656560028282800282828002828
      2800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002828
      2800282828005656560028282800282828002828280000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002828
      2800282828005656560028282800282828002828280000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000FFFF0000FFFF00C0C0C00000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF00FFFFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF00FFFFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0000999900009999000099990033CC
      CC0033CCCC0033CCCC0000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000990000009900000099000000CC00
      0000CC000000CC00000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000990000009900000099000000
      CC000000CC000000CC0000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0000999900009999000099990033CC
      CC0033CCCC0033CCCC0000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000990000009900000099000000CC00
      0000CC000000CC00000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000990000009900000099000000
      CC000000CC000000CC0000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0000999900009999000099990033CC
      CC0033CCCC0033CCCC0000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000990000009900000099000000CC00
      0000CC000000CC00000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000990000009900000099000000
      CC000000CC000000CC0000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000FFFF0000FFFF00C0C0C00000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990000FFFF0000FFFF0000FF
      FF0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC000099
      9900009999000099990033CCCC0033CCCC0033CCCC0000999900009999000099
      9900009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF000000FF000000FF00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC0000009900
      00009900000099000000CC000000CC000000CC00000099000000990000009900
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000FF000000FF000000
      FF000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      990000009900000099000000CC000000CC000000CC0000009900000099000000
      9900000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990000FFFF0000FFFF0000FF
      FF0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC000099
      9900009999000099990033CCCC0033CCCC0033CCCC0000999900009999000099
      9900009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF000000FF000000FF00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC0000009900
      00009900000099000000CC000000CC000000CC00000099000000990000009900
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000FF000000FF000000
      FF000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      990000009900000099000000CC000000CC000000CC0000009900000099000000
      9900000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF00FFFFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990000FFFF0000FFFF0000FF
      FF0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC000099
      9900009999000099990033CCCC0033CCCC0033CCCC0000999900009999000099
      9900009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF000000FF000000FF00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC0000009900
      00009900000099000000CC000000CC000000CC00000099000000990000009900
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000FF000000FF000000
      FF000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      990000009900000099000000CC000000CC000000CC0000009900000099000000
      9900000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF00FFFFFF0000FFFF00C0C0C000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990033CCCC0033CCCC0033CC
      CC0000FFFF0000FFFF0000FFFF0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0000999900009999000099990033CCCC0033CCCC0033CC
      CC00009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000CC000000CC000000CC00
      0000FF000000FF000000FF000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000990000009900000099000000CC000000CC000000CC00
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000CC000000CC000000
      CC000000FF000000FF000000FF000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000990000009900000099000000CC000000CC000000
      CC00000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF0000FFFF00C0C0C0000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990033CCCC0033CCCC0033CC
      CC0000FFFF0000FFFF0000FFFF0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0000999900009999000099990033CCCC0033CCCC0033CC
      CC00009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000CC000000CC000000CC00
      0000FF000000FF000000FF000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000990000009900000099000000CC000000CC000000CC00
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000CC000000CC000000
      CC000000FF000000FF000000FF000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000990000009900000099000000CC000000CC000000
      CC00000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF00FFFFFF0000FFFF0000FFFF00C0C0
      C000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990033CCCC0033CCCC0033CC
      CC0000FFFF0000FFFF0000FFFF0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0000999900009999000099990033CCCC0033CCCC0033CC
      CC00009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000CC000000CC000000CC00
      0000FF000000FF000000FF000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000990000009900000099000000CC000000CC000000CC00
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000CC000000CC000000
      CC000000FF000000FF000000FF000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000990000009900000099000000CC000000CC000000
      CC00000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00FFFFFF0000FFFF0000FF
      FF0000FFFF00C0C0C00000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990000FFFF0000FFFF0000FF
      FF0033CCCC0033CCCC0033CCCC0000FFFF0000FFFF0000FFFF0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0000999900009999000099
      990033CCCC0033CCCC0033CCCC00009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF000000FF000000FF00
      0000CC000000CC000000CC000000FF000000FF000000FF000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC00000099000000990000009900
      0000CC000000CC000000CC000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000FF000000FF000000
      FF000000CC000000CC000000CC000000FF000000FF000000FF000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC0000009900000099000000
      99000000CC000000CC000000CC00000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00FFFFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00008080000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990000FFFF0000FFFF0000FF
      FF0033CCCC0033CCCC0033CCCC0000FFFF0000FFFF0000FFFF0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0000999900009999000099
      990033CCCC0033CCCC0033CCCC00009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF000000FF000000FF00
      0000CC000000CC000000CC000000FF000000FF000000FF000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC00000099000000990000009900
      0000CC000000CC000000CC000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000FF000000FF000000
      FF000000CC000000CC000000CC000000FF000000FF000000FF000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC0000009900000099000000
      99000000CC000000CC000000CC00000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990000FFFF0000FFFF0000FF
      FF0033CCCC0033CCCC0033CCCC0000FFFF0000FFFF0000FFFF0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0000999900009999000099
      990033CCCC0033CCCC0033CCCC00009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF000000FF000000FF00
      0000CC000000CC000000CC000000FF000000FF000000FF000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC00000099000000990000009900
      0000CC000000CC000000CC000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000FF000000FF000000
      FF000000CC000000CC000000CC000000FF000000FF000000FF000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC0000009900000099000000
      99000000CC000000CC000000CC00000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF00C0C0C00000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0033CCCC0033CCCC0033CCCC0000FFFF0000FF
      FF0000FFFF0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC00009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF000000FF000000FF00
      0000FF000000FF000000FF000000CC000000CC000000CC000000FF000000FF00
      0000FF000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000FF000000FF000000
      FF000000FF000000FF000000FF000000CC000000CC000000CC000000FF000000
      FF000000FF000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC00000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0033CCCC0033CCCC0033CCCC0000FFFF0000FF
      FF0000FFFF0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC00009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF000000FF000000FF00
      0000FF000000FF000000FF000000CC000000CC000000CC000000FF000000FF00
      0000FF000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000FF000000FF000000
      FF000000FF000000FF000000FF000000CC000000CC000000CC000000FF000000
      FF000000FF000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC00000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000999900009999000099990000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0033CCCC0033CCCC0033CCCC0000FFFF0000FF
      FF0000FFFF0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC00009999000099990000999900009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF000000FF000000FF00
      0000FF000000FF000000FF000000CC000000CC000000CC000000FF000000FF00
      0000FF000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000990000009900000099000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099000000FF000000FF000000
      FF000000FF000000FF000000FF000000CC000000CC000000CC000000FF000000
      FF000000FF000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC00000099000000990000009900000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C00000FFFF0000FFFF00C0C0C0000080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000009999000099990000999900CCFFFF00CCFFFF00CCFF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0033CCCC0033CC
      CC0033CCCC0000FFFF0000FFFF0000FFFF0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC00009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF996600FF996600FF99
      6600FF000000FF000000FF000000FF000000FF000000FF000000CC000000CC00
      0000CC000000FF000000FF000000FF000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099009999FF009999FF009999
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000CC000000
      CC000000CC000000FF000000FF000000FF000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC00000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF000080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000009999000099990000999900CCFFFF00CCFFFF00CCFF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0033CCCC0033CC
      CC0033CCCC0000FFFF0000FFFF0000FFFF0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC00009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF996600FF996600FF99
      6600FF000000FF000000FF000000FF000000FF000000FF000000CC000000CC00
      0000CC000000FF000000FF000000FF000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099009999FF009999FF009999
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000CC000000
      CC000000CC000000FF000000FF000000FF000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC00000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF00FFFFFF0000FFFF00C0C0
      C000008080000000000000000000000000000000000000000000000000000000
      00000080800000FFFF0000FFFF0000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000009999000099990000999900CCFFFF00CCFFFF00CCFF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0033CCCC0033CC
      CC0033CCCC0000FFFF0000FFFF0000FFFF0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC00009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF996600FF996600FF99
      6600FF000000FF000000FF000000FF000000FF000000FF000000CC000000CC00
      0000CC000000FF000000FF000000FF000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099009999FF009999FF009999
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000CC000000
      CC000000CC000000FF000000FF000000FF000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC00000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF00FFFFFF0000FFFF0000FF
      FF00C0C0C0000080800000000000000000000000000000000000000000000080
      8000C0C0C00000FFFF0000FFFF0000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000009999000099990000999900CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0033CCCC0033CCCC0033CCCC0000FFFF0000FFFF0000FFFF0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC00009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF996600FF996600FF99
      6600FF996600FF996600FF996600FF000000FF000000FF000000FF000000FF00
      0000FF000000CC000000CC000000CC000000FF000000FF000000FF000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099009999FF009999FF009999
      FF009999FF009999FF009999FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000CC000000CC000000CC000000FF000000FF000000FF000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC00000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF00FFFFFF0000FF
      FF0000FFFF00C0C0C0000080800000808000008080000080800000808000C0C0
      C00000FFFF0000FFFF0000FFFF0000FFFF00C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000009999000099990000999900CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0033CCCC0033CCCC0033CCCC0000FFFF0000FFFF0000FFFF0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC00009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF996600FF996600FF99
      6600FF996600FF996600FF996600FF000000FF000000FF000000FF000000FF00
      0000FF000000CC000000CC000000CC000000FF000000FF000000FF000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099009999FF009999FF009999
      FF009999FF009999FF009999FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000CC000000CC000000CC000000FF000000FF000000FF000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC00000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00FFFFFF00FFFF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00C0C0C0000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000009999000099990000999900CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0033CCCC0033CCCC0033CCCC0000FFFF0000FFFF0000FFFF0033CC
      CC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CCCC0033CC
      CC0033CCCC0033CCCC0033CCCC00009999000099990000999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000990000009900000099000000FF996600FF996600FF99
      6600FF996600FF996600FF996600FF000000FF000000FF000000FF000000FF00
      0000FF000000CC000000CC000000CC000000FF000000FF000000FF000000CC00
      0000CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC00
      0000CC000000CC000000CC000000990000009900000099000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000990000009900000099009999FF009999FF009999
      FF009999FF009999FF009999FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000CC000000CC000000CC000000FF000000FF000000FF000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC00000099000000990000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00C0C0C000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000FF
      FF0000FFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000099990000999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000009900000099000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000990000009900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000900000000100010000000000800D00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF00000000000000000000
      0000000000000000FFFFFFFFFFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFFC001FFFF0000
      00000000000000000000000000000000FFFFC001FFFF00000000000000000000
      0000000000000000FFFE3FFE3FFF000000000000000000000000000000000000
      FFF1C001CFFF000000000000000000000000000000000000FFF1C001CFFF0000
      00000000000000000000000000000000FFCE000037FF00000000000000000000
      0000000000000000FFB0000009FF000000000000000000000000000000000000
      FFB0000009FF000000000000000000000000000000000000FE40000006FF0000
      00000000000000000000000000000000FE40000006FF00000000000000000000
      0000000000000000FE40000006FF000000000000000000000000000000000000
      FD800000013F000000000000000000000000000000000000FC000000013F0000
      00000000000000000000000000000000FC000000013F00000000000000000000
      0000000000000000FC000000003F000000000000000000000000000000000000
      FC000000003F000000000000000000000000000000000000FC000000003F0000
      00000000000000000000000000000000FC000000013F00000000000000000000
      0000000000000000FE40000006FF000000000000000000000000000000000000
      FE40000006FF000000000000000000000000000000000000FE40000000FF0000
      00000000000000000000000000000000FE40000000FF00000000000000000000
      0000000000000000FE40000000FF000000000000000000000000000000000000
      FE00000009FF000000000000000000000000000000000000FE00000000FF0000
      00000000000000000000000000000000FE00000000FF00000000000000000000
      0000000000000000FE06000000FF000000000000000000000000000000000000
      FE00000000FF000000000000000000000000000000000000FE00000000FF0000
      00000000000000000000000000000000FC060000003F00000000000000000000
      0000000000000000FE060000403F000000000000000000000000000000000000
      FE060000403F000000000000000000000000000000000000FF8F000070FF0000
      00000000000000000000000000000000FFFFC001F9FF00000000000000000000
      0000000000000000FFFFC001F9FF000000000000000000000000000000000000
      FFFFC001FFFF000000000000000000000000000000000000FFFFC003FFFF0000
      00000000000000000000000000000000FFFFC003FFFF00000000000000000000
      0000000000000000FFFFC00FFFFF000000000000000000000000000000000000
      FFFFE07FFFFF000000000000000000000000000000000000FFFFE07FFFFF0000
      00000000000000000000000000000000FFFFFBFFFFFF00000000000000000000
      0000000000000000FFFFFFFFFFFF000000000000000000000000000000000000
      FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFF0000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFF80000001FFFF800000
      01FFFF80000001FFFFFFF83FFFFFFF80000001FFFF80000001FFFF80000001FF
      FFFFFC7FFFFFFF80000001FFFF80000001FFFF80000001FFFFFFFFFFFFFFFC00
      0000003FFC000000003FFC000000003FFFFFFC7FFFFFFC000000003FFC000000
      003FFC000000003FFFFFF83FFFFFFC000000003FFC000000003FFC000000003F
      FFFFF01FFFFFFC000000003FFC000000003FFC000000003FFFFFF01FFFFFFC00
      0000003FFC000000003FFC000000003FFFFFF01FFFFFFC000000003FFC000000
      003FFC000000003FFFFFF00FFFFFFC000000003FFC000000003FFC000000003F
      FFFFF803FFFFFC000000003FFC000000003FFC000000003FFFFFF800FFFFFC00
      0000003FFC000000003FFC000000003FFFFFFC007FFFFC000000003FFC000000
      003FFC000000003FFFFFFE003FFFFC000000003FFC000000003FFC000000003F
      FFFFFF003FFFFC000000003FFC000000003FFC000000003FFFFFFFC01FFFFC00
      0000003FFC000000003FFC000000003FFFFF1FF01FFFFC000000003FFC000000
      003FFC000000003FFFFE0FF01FFFFC000000003FFC000000003FFC000000003F
      FFFC07F01FFFFC000000003FFC000000003FFC000000003FFFFC07F01FFFFC00
      0000003FFC000000003FFC000000003FFFFC03E01FFFFC000000003FFC000000
      003FFC000000003FFFFC00001FFFFC000000003FFC000000003FFC000000003F
      FFFE00003FFFFC000000003FFC000000003FFC000000003FFFFE00003FFFFC00
      0000003FFC000000003FFC000000003FFFFF00007FFFFF80000001FFFF800000
      01FFFF80000001FFFFFF8000FFFFFF80000001FFFF80000001FFFF80000001FF
      FFFFE003FFFFFF80000001FFFF80000001FFFF80000001FFFFFFF80FFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu_Alarm: TPopupMenu
    AutoHotkeys = maManual
    Left = 731
    Top = 149
    object mi_AlarmConfirm: TMenuItem
      Caption = #50508#46988#54869#51064
      OnClick = mi_AlarmConfirmClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object MenuItem3: TMenuItem
      Caption = #44221#44228#47784#46300
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = #54644#51228#47784#46300
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #54868#47732#48372#44592
      object mi_AlarmBigIcon: TMenuItem
        Caption = #53360#50500#51060#53080
        OnClick = mi_AlarmBigIconClick
      end
      object mi_AlarmSmallIcon: TMenuItem
        Caption = #51089#51008#50500#51060#53080
        OnClick = mi_AlarmSmallIconClick
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object MenuItem8: TMenuItem
      Caption = #50948#52824#51221#48372
      OnClick = MenuItem8Click
    end
    object MenuItem9: TMenuItem
      Caption = #44592#44592#51221#48372
      OnClick = MenuItem9Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object mn_AlarmReport: TMenuItem
      Caption = #44221#48372#51060#47141#48372#44256#49436
      OnClick = mn_AlarmReportClick
    end
  end
  object PopupMenu_Node: TPopupMenu
    AutoHotkeys = maManual
    Left = 83
    Top = 141
    object mn_pingTest: TMenuItem
      Caption = #44592#44592' '#54609' '#53580#49828#53944
      OnClick = mn_pingTestClick
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object mn_TimeSync: TMenuItem
      Caption = #49884#44036#46041#44592#54868
      OnClick = mn_TimeSyncClick
    end
  end
  object PopupMenu_Device: TPopupMenu
    AutoHotkeys = maManual
    Left = 139
    Top = 141
    object mn_AllCardDownload: TMenuItem
      Caption = #44428#54620#51116#51204#49569
      OnClick = mn_AllCardDownloadClick
    end
    object MenuItem11: TMenuItem
      Caption = '-'
    end
    object mn_DeviceReset: TMenuItem
      Caption = #44592#44592#47532#49483
      OnClick = mn_DeviceResetClick
    end
  end
end
