inherited fmKTTypeMonitoring: TfmKTTypeMonitoring
  Left = 1428
  Top = 14
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
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter [0]
    Left = 217
    Top = 0
    Height = 700
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 217
    Height = 700
    Align = alLeft
    TabOrder = 0
    OnResize = Panel1Resize
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
        Caption = #50948#52824#48324#44396#49457
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 207
          Height = 671
          Align = alClient
          TabOrder = 0
          object TreeView_Location: TTreeView
            Left = 2
            Top = 23
            Width = 203
            Height = 646
            Align = alClient
            BorderStyle = bsNone
            HotTrack = True
            Images = toolslist
            Indent = 19
            PopupMenu = Popup_Locate
            TabOrder = 0
            ToolTips = False
            OnClick = TreeView_LocationClick
            Items.Data = {
              010000001D0000000B0000000B000000FFFFFFFFFFFFFFFF0000000002000000
              04C0A7C4A11B0000000700000007000000FFFFFFFFFFFFFFFF00000000020000
              0002B5BF1B0000000800000008000000FFFFFFFFFFFFFFFF0000000001000000
              02C3FE1D0000000900000000000000FFFFFFFFFFFFFFFF000000000200000004
              B1B8BFAA1B0000000A00000000000000FFFFFFFFFFFFFFFF0000000000000000
              02B9AE210000000000000000000000FFFFFFFFFFFFFFFF000000000000000008
              B9E6B9FCB1B8BFAA1B0000000800000008000000FFFFFFFFFFFFFFFF00000000
              0000000002C3FE1B0000000700000007000000FFFFFFFFFFFFFFFF0000000001
              00000002B5BF1B0000000800000008000000FFFFFFFFFFFFFFFF000000000100
              000002C3FE1D0000000900000000000000FFFFFFFFFFFFFFFF00000000040000
              0004B1B8BFAA1B0000000A00000000000000FFFFFFFFFFFFFFFF000000000000
              000002B9AE1B0000000A00000000000000FFFFFFFFFFFFFFFF00000000000000
              0002B9AE210000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
              08B0E6BAF1B1B8BFAA190000000000000000000000FFFFFFFFFFFFFFFF000000
              000000000000}
          end
          object Shader2: TShader
            Left = 2
            Top = 14
            Width = 203
            Height = 9
            Align = alTop
            Caption = 'Shader1'
            TabOrder = 1
            FromColor = 15591915
            ToColor = clSilver
            Direction = False
            Version = '1.1.0.0'
          end
          object TreeView_LocationCode: TTreeView
            Left = 2
            Top = 424
            Width = 203
            Height = 81
            Align = alCustom
            BorderStyle = bsNone
            HotTrack = True
            Indent = 19
            TabOrder = 2
            ToolTips = False
            Visible = False
            Items.Data = {
              010000001D0000000B0000000B000000FFFFFFFFFFFFFFFF0000000002000000
              04C0A7C4A11B0000000700000007000000FFFFFFFFFFFFFFFF00000000020000
              0002B5BF1B0000000800000008000000FFFFFFFFFFFFFFFF0000000001000000
              02C3FE1D0000000900000000000000FFFFFFFFFFFFFFFF000000000200000004
              B1B8BFAA1B0000000A00000000000000FFFFFFFFFFFFFFFF0000000000000000
              02B9AE210000000000000000000000FFFFFFFFFFFFFFFF000000000000000008
              B9E6B9FCB1B8BFAA1B0000000800000008000000FFFFFFFFFFFFFFFF00000000
              0000000002C3FE1B0000000700000007000000FFFFFFFFFFFFFFFF0000000001
              00000002B5BF1B0000000800000008000000FFFFFFFFFFFFFFFF000000000100
              000002C3FE1D0000000900000000000000FFFFFFFFFFFFFFFF00000000040000
              0004B1B8BFAA1B0000000A00000000000000FFFFFFFFFFFFFFFF000000000000
              000002B9AE1B0000000A00000000000000FFFFFFFFFFFFFFFF00000000000000
              0002B9AE210000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
              08B0E6BAF1B1B8BFAA190000000000000000000000FFFFFFFFFFFFFFFF000000
              000000000000}
          end
        end
      end
      object tbDEVICE: TTabSheet
        Caption = #44592#44592#48324#44396#49457
        ImageIndex = 1
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 207
          Height = 671
          Align = alClient
          TabOrder = 0
          object TreeView_Device: TTreeView
            Left = 2
            Top = 23
            Width = 203
            Height = 646
            Align = alClient
            BorderStyle = bsNone
            HotTrack = True
            Images = toolslist
            Indent = 19
            PopupMenu = Popup_Device
            TabOrder = 0
            OnClick = TreeView_DeviceClick
            Items.Data = {
              010000001F0000000000000000000000FFFFFFFFFFFFFFFF0000000002000000
              065365727665722A0000000100000000000000FFFFFFFFFFFFFFFF0000000003
              000000113139322E3136382E302E33303A333030302200000003000000000000
              00FFFFFFFFFFFFFFFF0000000000000000093130303030303130312200000003
              00000000000000FFFFFFFFFFFFFFFF0000000000000000093130303030303130
              32220000000400000000000000FFFFFFFFFFFFFFFF0000000000000000093130
              303030303230332A0000000200000000000000FFFFFFFFFFFFFFFF0000000001
              000000113139322E3136382E302E33313A333030302200000003000000000000
              00FFFFFFFFFFFFFFFF000000000000000009313030303030323031}
          end
          object Shader3: TShader
            Left = 2
            Top = 14
            Width = 203
            Height = 9
            Align = alTop
            Caption = 'Shader1'
            TabOrder = 1
            FromColor = 15591915
            ToColor = clSilver
            Direction = False
            Version = '1.1.0.0'
          end
        end
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 220
    Top = 0
    Width = 895
    Height = 700
    Align = alClient
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
      Width = 893
      Height = 698
      ActivePage = IntegrationTab
      Align = alClient
      TabOrder = 0
      OnChange = PageControl2Change
      object IntegrationTab: TTabSheet
        Caption = #53685#54633#44288#51228
        ImageIndex = 3
        object Splitter6: TSplitter
          Left = 0
          Top = 273
          Width = 885
          Height = 1
          Cursor = crVSplit
          Align = alTop
        end
        object Panel11: TPanel
          Left = 0
          Top = 274
          Width = 885
          Height = 397
          Align = alClient
          TabOrder = 0
          object Splitter7: TSplitter
            Left = 1
            Top = 145
            Width = 883
            Height = 1
            Cursor = crVSplit
            Align = alTop
          end
          object Panel15: TPanel
            Left = 1
            Top = 1
            Width = 883
            Height = 144
            Align = alTop
            TabOrder = 0
            OnResize = Panel15Resize
            object sg_IntAccess: TAdvStringGrid
              Left = 1
              Top = 1
              Width = 881
              Height = 142
              Cursor = crDefault
              Align = alClient
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
              OnColumnMoved = sg_IntAccessColumnMoved
              OnDblClick = sg_IntAccessDblClick
              OnKeyDown = sg_IntAccessKeyDown
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
                #52636#51077#47928
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
                90
                90
                114
                131
                90)
            end
          end
          object Panel16: TPanel
            Left = 1
            Top = 146
            Width = 883
            Height = 250
            Align = alClient
            TabOrder = 1
            object sg_IntAlarm: TAdvStringGrid
              Left = 1
              Top = 1
              Width = 881
              Height = 248
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
              TabOrder = 0
              OnColumnMoved = sg_IntAlarmColumnMoved
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              OnDblClickCell = sg_IntAlarmDblClickCell
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
                #51060#48292#53944#45236#50857)
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
        end
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 885
          Height = 273
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          OnResize = Panel12Resize
          object Splitter5: TSplitter
            Left = 449
            Top = 0
            Width = 2
            Height = 273
          end
          object Panel13: TPanel
            Left = 451
            Top = 0
            Width = 434
            Height = 273
            Align = alClient
            TabOrder = 0
            OnResize = Panel13Resize
            object GroupBox5: TGroupBox
              Left = 1
              Top = 41
              Width = 432
              Height = 231
              Align = alClient
              Caption = #52636#51077#47928#49345#53468
              Color = clBtnFace
              ParentColor = False
              TabOrder = 0
              object IntDoorListView: TListView
                Left = 2
                Top = 25
                Width = 428
                Height = 204
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Columns = <
                  item
                    Width = 1000
                  end>
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
                LargeImages = LargeDoorList
                MultiSelect = True
                ReadOnly = True
                RowSelect = True
                ParentFont = False
                ParentShowHint = False
                PopupMenu = PopupMenu_IntiDoor
                ShowHint = True
                SmallImages = SmallDoorList
                StateImages = statelist
                TabOrder = 0
                OnClick = IntDoorListViewClick
                OnDblClick = IntDoorListViewDblClick
              end
              object Shader5: TShader
                Left = 2
                Top = 14
                Width = 428
                Height = 11
                Align = alTop
                Caption = #52636#51077#47928
                TabOrder = 1
                FromColor = 15591915
                ToColor = clSilver
                Direction = False
                Version = '1.1.0.0'
              end
            end
            object Pan_Remark2: TPanel
              Left = 1
              Top = 1
              Width = 432
              Height = 40
              Align = alTop
              TabOrder = 1
              object pan_SmallIntro: TPanel
                Left = 87
                Top = -1
                Width = 537
                Height = 41
                TabOrder = 0
                object Image6: TImage
                  Left = 352
                  Top = 16
                  Width = 25
                  Height = 24
                  Picture.Data = {
                    07544269746D617036040000424D360400000000000036000000280000001000
                    0000100000000100200000000000000400000000000000000000000000000000
                    0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FFFF
                    FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF0000000000000000
                    0000000000000000000000000000FF00FF00FF00FF00FF00FF00FFFFFF00FFFF
                    FF00FF00FF00FF00FF0000000000FFFF0000FFFF0000FFFF00000000000000FF
                    FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FFFFFF00FFFF
                    FF00FF00FF00FF00FF0000000000FFFF0000FFFF0000FFFF00000000000000FF
                    FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF00000000000000FF
                    FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF00000000000000FF
                    FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF00000000000000FF
                    FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF000000000000000000000000000000FF
                    FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF000000000000000000FFFF0000FFFF00000000000000FF
                    FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF00000000000000FF
                    FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF00000000000000FF
                    FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF00000000000000FF
                    FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF00000000000000FF
                    FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF00000000000000FF
                    FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF00000000000000FFFF0000FF
                    FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
                    0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00}
                end
                object Image7: TImage
                  Left = 272
                  Top = 16
                  Width = 22
                  Height = 24
                  Picture.Data = {
                    07544269746D617036040000424D360400000000000036000000280000001000
                    0000100000000100200000000000000400000000000000000000000000000000
                    0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FFFF
                    FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
                    0000000000000000000000000000FF00FF00FF00FF00FF00FF00FFFFFF00FFFF
                    FF00FF00FF00FF00FF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00FF00FFFFFF00FFFF
                    FF00FF00FF00FF00FF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00FF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
                    0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00}
                end
                object Image8: TImage
                  Left = 90
                  Top = 16
                  Width = 17
                  Height = 24
                  Picture.Data = {
                    07544269746D617036030000424D360300000000000036000000280000001000
                    000010000000010018000000000000030000120B0000120B0000000000000000
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF}
                end
                object Image9: TImage
                  Left = 8
                  Top = 16
                  Width = 17
                  Height = 24
                  Picture.Data = {
                    07544269746D617036040000424D360400000000000036000000280000001000
                    0000100000000100200000000000000400000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
                    00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF00000000000000000000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C0000000000000000000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000000000008080800080808000C0C0C000808080000000
                    000080808000C0C0C000808080008080800000000000FFFF0000FFFF00000000
                    0000FFFF000000000000C0C0C000C0C0C000C0C0C000C0C0C000808080000000
                    000080808000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF00000000
                    0000FFFF000000000000808080008080800080808000C0C0C000C0C0C0000000
                    0000C0C0C000C0C0C00080808000808080008080800000000000FFFF00000000
                    0000FFFF000000000000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
                    000000000000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF00000000
                    0000FFFF00000000000080808000808080008080800080808000000000000000
                    0000000000008080800080808000808080008080800000000000FFFF00000000
                    0000FFFF000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF00000000
                    0000FFFF0000FFFF000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF000000000000C0C0C00000000000FFFF0000FFFF
                    0000FFFF000000000000C0C0C00000000000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF000000000000C0C0C00000000000FFFF0000FFFF
                    0000FFFF000000000000C0C0C00000000000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF000000000000C0C0C00000000000FFFF0000FFFF
                    0000FFFF000000000000C0C0C00000000000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF00000000000080808000C0C0C000FFFF0000FFFF
                    0000FFFF0000C0C0C0008080800000000000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000C0C0C000C0C0
                    C000C0C0C0000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
                    000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
                    0000}
                end
                object Image2: TImage
                  Left = 178
                  Top = 16
                  Width = 17
                  Height = 24
                  Picture.Data = {
                    07544269746D617036040000424D360400000000000036000000280000001000
                    0000100000000100200000000000000400000000000000000000000000000000
                    0000FFFBFF00FEFCFC00FBFFFA00F6FBF900FAFDFF00F3F1FF00E3EAFE00EBF5
                    FF00DBE4FF00D4DFFF00DFEBF700F8FFEF00FCFFF000FEFEF800FFFDFC00FEFC
                    FC00FFFBFF00FEFCFC00FBFFFA00FBFFFF00F1F1FF00D7D5F300392891002510
                    9B003924B60014027F009081DC00F4EAFF00FCFAF900FEFEF800FFFDFC00FEFC
                    FC00FFFFFB00FFF8FF00FFFDFF00FAFBFF00CACBFF001100A5001704B1001503
                    BC001802C600220BC10019049D005D4CB300E4E1FF00F7F6FF00FFFFF500FFFF
                    F900F6EFFC00EAECED00E7F0F400E2E0FF002A24B1000905B8000D08C9000800
                    CF000400D0000E05D1000400B800130EAD004D4F9D00EBECFF00FFFAF700FFFA
                    F300ECEAFD00F6FFF600EDF8FF0017088F001B05CF000F09C2000600C0000300
                    C5000300C7000200C1000706C200110CC300272B9400CED0FF00F8F5FE00FFFF
                    FC00FEFCFF00F0FAEE00E3E2FF003318C2002206CE002417C1001C08B8001C08
                    B8001A0BB3001105AB001F12BC000E00B0001E1D9D0040419100EEECFF00FDFE
                    FC00FFF9FD00F7F0F7006454AB0029149200E6F1FF00DDE8FC00EDECFF00F0EA
                    FF00F1ECFF00F7F2FF00F6F1FF00F0EDFF00534CC50029208E00F2EDFF00FFFF
                    FE00FFFBFF00FAF5FE0045369800210F9000E0F3FF00EDFBFA00F1FDF700F4FC
                    F500F6FBF200FFFFF900F7FBF500F9FFFB00665AD00024138C00FBF3FF00FDFD
                    F700FFF8FF00FBFEFF006B5DD3002A0FBD00BCBDFF00CDC5FF00C6C2FF00C8C0
                    FF00CCBEFF00D6C3FF00D9C7FF00D4CAFF00503DCA00341F9A00EFE3FF00F6F4
                    EC00FFFEFF00ECEFF400BAB7FF002115AD000900A6000F0C9E00100AAB00160C
                    AC001B0FA900170AA2001D12AF000400A5001E0DB50015067F00F5F5FF00FEFF
                    EF00FFFFFC00FDFEFA00F0EDFF0024198D000C00B7000000B6000C06C3000A02
                    C4000900C5000F05CE000400C0000B04C10022159F00CCC5FF00F5F8FC00FFFF
                    F100FCFDF900FFFFF700F6F1FF00DED1FF001E0FB100130DD0000E06C5000900
                    CC000200D3000000CF000000B8000E05A900655CB600F0EDFF00F6FAF500FFFF
                    F800FBFFFF00FFFFF500FCF8F300F3EAFF00423AA5000C0EA8001209B7000B02
                    C4000300CE000000BF001615B90035319A00F6F4FF00F3F4FE00F6F7EE00FBF8
                    F300F8FAFF00FEFDF900FFFFF100FFFFF700E6EBFF00CAD2FF004842A7001813
                    8C000F0D8800151A7D00A0A6E900F4FBFF00FEFEF800FFFFF700FFFFFC00FFFE
                    FE00FBFDFE00FAFCFD00FAFBF700FEFFFA00FDFFFF00E9E9F700EFEEFF00EAEA
                    FF00E8E7FF00E7E7FF00FAFAFF00FBFCF800FFFCF700FFFBFC00FFFCFE00FFFD
                    FD00FEFFF700FBFDFE00F6F8FF00EFF2F700FBF7F600FFF7F900FDFFFF00FAFF
                    F600FFFFF300FFFCED00FBF5EA00FFF9FA00FDF6FD00FDF8FF00FEF9FF00FCFC
                    FC00}
                end
                object Image3: TImage
                  Left = 448
                  Top = 16
                  Width = 25
                  Height = 24
                  Picture.Data = {
                    07544269746D617036040000424D360400000000000036000000280000001000
                    0000100000000100200000000000000400000000000000000000000000000000
                    0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0018181800000000000000
                    00000000000018181800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF0018181800A5A5A500FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00A5A5A50018181800FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF0018181800FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0018181800FF00FF00FF00FF00FF00
                    FF00FF00FF0018181800FF00FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B0018181800FF00FF00FF00
                    FF00FF00FF00A5A5A500FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A500FF00FF00FF00
                    FF0018181800FF00FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B0018181800FF00
                    FF0018181800FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018181800FF00
                    FF0018181800FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018181800FF00
                    FF0018181800FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B0018181800FF00
                    FF00FF00FF007B7B7B00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FF00FF00FF00
                    FF00FF00FF0018181800FF00FF00FFFFFF0000000000FFFFFF00FFFFFF000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018181800FF00FF00FF00
                    FF00FF00FF00FF00FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FF00FF00FF00FF00FF00
                    FF00181818007B7B7B00A5A5A500A5A5A500FF00FF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF007B7B7B00A5A5A500FF00FF007B7B7B0018181800FF00
                    FF00FF00FF00FF00FF0018181800FF00FF0018181800FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF0018181800FF00FF0018181800FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00181818007B7B
                    7B0018181800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00A5A5A500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00}
                end
                object StaticText6: TStaticText
                  Left = 392
                  Top = 16
                  Width = 40
                  Height = 16
                  Caption = #47928#50676#47548
                  TabOrder = 0
                end
                object StaticText7: TStaticText
                  Left = 304
                  Top = 16
                  Width = 40
                  Height = 16
                  Caption = #47928#45803#55192
                  TabOrder = 1
                end
                object StaticText8: TStaticText
                  Left = 120
                  Top = 16
                  Width = 52
                  Height = 16
                  Caption = #44060#48169#47784#46300
                  TabOrder = 2
                end
                object StaticText9: TStaticText
                  Left = 32
                  Top = 16
                  Width = 52
                  Height = 16
                  Caption = #50868#50689#47784#46300
                  TabOrder = 3
                end
                object StaticText2: TStaticText
                  Left = 208
                  Top = 16
                  Width = 52
                  Height = 16
                  Caption = #54224#49604#47784#46300
                  TabOrder = 4
                end
                object StaticText3: TStaticText
                  Left = 488
                  Top = 16
                  Width = 76
                  Height = 16
                  Caption = #51109#49884#44036#47928#50676#47548
                  TabOrder = 5
                end
              end
              object pan_LargeIntro: TPanel
                Left = -74
                Top = 1
                Width = 594
                Height = 38
                TabOrder = 1
                object Image4: TImage
                  Left = 8
                  Top = 14
                  Width = 17
                  Height = 24
                  Picture.Data = {
                    07544269746D617036040000424D360400000000000036000000280000001000
                    0000100000000100200000000000000400000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
                    00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF00000000000000000000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C0000000000000000000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000000000008080800080808000C0C0C000808080000000
                    000080808000C0C0C000808080008080800000000000FFFF0000FFFF00000000
                    0000FFFF000000000000C0C0C000C0C0C000C0C0C000C0C0C000808080000000
                    000080808000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF00000000
                    0000FFFF000000000000808080008080800080808000C0C0C000C0C0C0000000
                    0000C0C0C000C0C0C00080808000808080008080800000000000FFFF00000000
                    0000FFFF000000000000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
                    000000000000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF00000000
                    0000FFFF00000000000080808000808080008080800080808000000000000000
                    0000000000008080800080808000808080008080800000000000FFFF00000000
                    0000FFFF000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF00000000
                    0000FFFF0000FFFF000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF000000000000C0C0C00000000000FFFF0000FFFF
                    0000FFFF000000000000C0C0C00000000000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF000000000000C0C0C00000000000FFFF0000FFFF
                    0000FFFF000000000000C0C0C00000000000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF000000000000C0C0C00000000000FFFF0000FFFF
                    0000FFFF000000000000C0C0C00000000000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF00000000000080808000C0C0C000FFFF0000FFFF
                    0000FFFF0000C0C0C0008080800000000000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000C0C0C000C0C0
                    C000C0C0C0000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000
                    0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
                    000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
                    0000}
                end
                object Image5: TImage
                  Left = 90
                  Top = 14
                  Width = 17
                  Height = 24
                  Picture.Data = {
                    07544269746D617036030000424D360300000000000036000000280000001000
                    000010000000010018000000000000030000120B0000120B0000000000000000
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF}
                end
                object Image12: TImage
                  Left = 269
                  Top = 4
                  Width = 33
                  Height = 36
                  Picture.Data = {
                    07544269746D617036100000424D361000000000000036000000280000002000
                    0000200000000100200000000000001000000000000000000000000000000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
                    C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFF
                    FF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
                    C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFF
                    FF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
                    C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFF
                    FF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
                    C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFF
                    FF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFF
                    FF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFF
                    FF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFF
                    FF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
                    C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFF
                    FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFF
                    FF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
                    C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFF
                    FF00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
                    C600FFFFFF000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    0000848400008484000084840000848400008484000084840000000000000000
                    000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    0000848400008484000084840000848400008484000084840000C6C6C6000000
                    000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    0000848400008484000084840000848400008484000084840000C6C6C6000000
                    000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    0000848400008484000084840000848400008484000084840000C6C6C6000000
                    000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400000000000084840000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF00000000000000FFFF0000000000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400000000000084840000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    0000848400008484000084840000848400008484000084840000000000000000
                    000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    0000848400008484000084840000848400008484000084840000C6C6C6000000
                    000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    0000848400008484000084840000848400008484000084840000C6C6C6000000
                    000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    0000848400008484000084840000848400008484000084840000C6C6C6000000
                    000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000848400008484000084840000848400008484
                    000084840000848400008484000084840000848400008484000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
                    0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000C6C6
                    C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000000000000000000000FFFF
                    FF0000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF0000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
                    8400848484008484840084848400848484008484840084848400848484008484
                    8400848484008484840084848400848484008484840084848400848484008484
                    840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00}
                end
                object Image13: TImage
                  Left = 352
                  Top = 4
                  Width = 41
                  Height = 36
                  Picture.Data = {
                    07544269746D617036100000424D361000000000000036000000280000002000
                    0000200000000100200000000000001000000000000000000000000000000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
                    C000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
                    FF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
                    C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFF
                    FF00C0C0C000C0C0C000FFFFFF0000000000FFFF0000FFFF000000000000FFFF
                    FF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFF
                    FF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFF
                    FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF0000FFFF0000808000000000
                    0000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFF
                    FF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFF
                    FF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
                    C000C0C0C000FFFFFF00FFFFFF0000000000FFFF0000FFFF0000808000008080
                    000000000000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
                    C000FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
                    C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00C0C0C000C0C0C00000000000FFFF0000FFFF0000808000008080
                    00008080000000000000FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFF
                    FF00C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
                    C000FFFFFF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000808000008080
                    0000808000008080000000000000FFFFFF00FFFFFF00C0C0C000C0C0C000FFFF
                    FF00000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
                    FF00C0C0C000C0C0C000FFFFFF0000000000FFFF0000FFFF0000808000008080
                    0000808000008080000080800000000000000000000000000000000000000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000FFFF
                    FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0
                    C000C0C0C000FFFFFF00FFFFFF0000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
                    000000000000000000000000000000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000000000
                    00000000000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000000000008080
                    80000000000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF000000000000FFFF
                    FF000000000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000000000
                    00000000000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800000000000FFFF0000FFFF0000808000008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    80008080800080808000808080008080800000000000FFFF0000FFFF00008080
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    8000808080008080800080808000808080008080800000000000FFFF0000FFFF
                    00008080000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    800080808000808080008080800080808000808080008080800000000000FFFF
                    0000FFFF000080800000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080000000
                    0000FFFF0000FFFF0000808000000000000080808000C0C0C000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    800000000000FFFF0000FFFF00000000000080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00}
                end
                object Image14: TImage
                  Left = 178
                  Top = 14
                  Width = 17
                  Height = 24
                  Picture.Data = {
                    07544269746D617036040000424D360400000000000036000000280000001000
                    0000100000000100200000000000000400000000000000000000000000000000
                    0000FFFBFF00FEFCFC00FBFFFA00F6FBF900FAFDFF00F3F1FF00E3EAFE00EBF5
                    FF00DBE4FF00D4DFFF00DFEBF700F8FFEF00FCFFF000FEFEF800FFFDFC00FEFC
                    FC00FFFBFF00FEFCFC00FBFFFA00FBFFFF00F1F1FF00D7D5F300392891002510
                    9B003924B60014027F009081DC00F4EAFF00FCFAF900FEFEF800FFFDFC00FEFC
                    FC00FFFFFB00FFF8FF00FFFDFF00FAFBFF00CACBFF001100A5001704B1001503
                    BC001802C600220BC10019049D005D4CB300E4E1FF00F7F6FF00FFFFF500FFFF
                    F900F6EFFC00EAECED00E7F0F400E2E0FF002A24B1000905B8000D08C9000800
                    CF000400D0000E05D1000400B800130EAD004D4F9D00EBECFF00FFFAF700FFFA
                    F300ECEAFD00F6FFF600EDF8FF0017088F001B05CF000F09C2000600C0000300
                    C5000300C7000200C1000706C200110CC300272B9400CED0FF00F8F5FE00FFFF
                    FC00FEFCFF00F0FAEE00E3E2FF003318C2002206CE002417C1001C08B8001C08
                    B8001A0BB3001105AB001F12BC000E00B0001E1D9D0040419100EEECFF00FDFE
                    FC00FFF9FD00F7F0F7006454AB0029149200E6F1FF00DDE8FC00EDECFF00F0EA
                    FF00F1ECFF00F7F2FF00F6F1FF00F0EDFF00534CC50029208E00F2EDFF00FFFF
                    FE00FFFBFF00FAF5FE0045369800210F9000E0F3FF00EDFBFA00F1FDF700F4FC
                    F500F6FBF200FFFFF900F7FBF500F9FFFB00665AD00024138C00FBF3FF00FDFD
                    F700FFF8FF00FBFEFF006B5DD3002A0FBD00BCBDFF00CDC5FF00C6C2FF00C8C0
                    FF00CCBEFF00D6C3FF00D9C7FF00D4CAFF00503DCA00341F9A00EFE3FF00F6F4
                    EC00FFFEFF00ECEFF400BAB7FF002115AD000900A6000F0C9E00100AAB00160C
                    AC001B0FA900170AA2001D12AF000400A5001E0DB50015067F00F5F5FF00FEFF
                    EF00FFFFFC00FDFEFA00F0EDFF0024198D000C00B7000000B6000C06C3000A02
                    C4000900C5000F05CE000400C0000B04C10022159F00CCC5FF00F5F8FC00FFFF
                    F100FCFDF900FFFFF700F6F1FF00DED1FF001E0FB100130DD0000E06C5000900
                    CC000200D3000000CF000000B8000E05A900655CB600F0EDFF00F6FAF500FFFF
                    F800FBFFFF00FFFFF500FCF8F300F3EAFF00423AA5000C0EA8001209B7000B02
                    C4000300CE000000BF001615B90035319A00F6F4FF00F3F4FE00F6F7EE00FBF8
                    F300F8FAFF00FEFDF900FFFFF100FFFFF700E6EBFF00CAD2FF004842A7001813
                    8C000F0D8800151A7D00A0A6E900F4FBFF00FEFEF800FFFFF700FFFFFC00FFFE
                    FE00FBFDFE00FAFCFD00FAFBF700FEFFFA00FDFFFF00E9E9F700EFEEFF00EAEA
                    FF00E8E7FF00E7E7FF00FAFAFF00FBFCF800FFFCF700FFFBFC00FFFCFE00FFFD
                    FD00FEFFF700FBFDFE00F6F8FF00EFF2F700FBF7F600FFF7F900FDFFFF00FAFF
                    F600FFFFF300FFFCED00FBF5EA00FFF9FA00FDF6FD00FDF8FF00FEF9FF00FCFC
                    FC00}
                end
                object Image15: TImage
                  Left = 448
                  Top = 4
                  Width = 41
                  Height = 36
                  Picture.Data = {
                    07544269746D617036100000424D361000000000000036000000280000002000
                    0000200000000100200000000000001000000000000000000000000000000000
                    0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00181818000000000000000000000000000000
                    000000000000000000000000000018181800FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF001818180018181800A5A5A5007B7B7B007B7B7B007B7B7B007B7B
                    7B007B7B7B007B7B7B007B7B7B00A5A5A5001818180018181800FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF001818
                    180018181800A5A5A5007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B00A5A5A500181818001818
                    1800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0018181800A5A5
                    A5007B7B7B00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
                    7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00A5A5
                    A50018181800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0018181800A5A5A500FF00
                    FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
                    7B00A5A5A50018181800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF0018181800A5A5A500FF00FF00FFFF
                    FF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
                    FF007B7B7B00A5A5A50018181800FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF0018181800A5A5A500FF00FF00FFFFFF007B7B
                    7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF007B7B7B00A5A5A50018181800FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00181818007B7B7B00FF00FF00FFFFFF00FFFF
                    FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF007B7B7B0018181800FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF0018181800A5A5A500FF00FF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF007B7B7B00A5A5A50018181800FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00181818007B7B7B00FF00FF00FFFFFF007B7B7B00FFFF
                    FF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF007B7B7B00FFFFFF00FFFFFF007B7B7B0018181800FF00FF00FF00FF00FF00
                    FF00FF00FF0018181800A5A5A500FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00A5A5A50018181800FF00FF00FF00
                    FF00FF00FF00181818007B7B7B00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B0018181800FF00FF00FF00
                    FF00FF00FF00181818007B7B7B00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B0018181800FF00FF00FF00
                    FF00FF00FF00181818007B7B7B00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                    000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B0018181800FF00FF00FF00
                    FF00FF00FF00181818007B7B7B00FF00FF007B7B7B00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                    000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF007B7B7B00FFFFFF007B7B7B0018181800FF00FF00FF00
                    FF00FF00FF00181818007B7B7B00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                    000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B0018181800FF00FF00FF00
                    FF00FF00FF00181818007B7B7B00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B0018181800FF00FF00FF00
                    FF00FF00FF0018181800A5A5A500FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00A5A5A50018181800FF00FF00FF00
                    FF00FF00FF00FF00FF00181818007B7B7B00FF00FF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0018181800FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF0018181800A5A5A500FF00FF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF007B7B7B00FFFFFF007B7B7B00A5A5A50018181800FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00181818007B7B7B00FF00FF007B7B7B00FFFF
                    FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF007B7B7B0018181800FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF0018181800A5A5A500FF00FF00FFFFFF00FFFF
                    FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF007B7B7B00A5A5A50018181800FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00181818007B7B7B00FF00FF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF007B7B7B007B7B7B0018181800FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF001818180018181800A5A5A500000000007B7B7B00FF00
                    FF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B
                    7B007B7B7B0000000000A5A5A5001818180018181800FF00FF00FF00FF00FF00
                    FF00FF00FF0018181800FF00FF007B7B7B0000000000A5A5A50018181800A5A5
                    A5007B7B7B00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00A5A5
                    A50018181800FF00FF00000000007B7B7B00A5A5A50018181800FF00FF00FF00
                    FF00FF00FF0018181800FF00FF00FF00FF007B7B7B0018181800FF00FF001818
                    180018181800A5A5A5007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
                    7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00A5A5A500181818001818
                    1800FF00FF0018181800FF00FF00FF00FF00A5A5A50018181800FF00FF00FF00
                    FF00FF00FF00FF00FF0018181800FF00FF00A5A5A50018181800FF00FF00FF00
                    FF00FF00FF001818180018181800FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF001818180018181800FF00FF00FF00
                    FF00FF00FF0018181800FF00FF00FF00FF0018181800FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF001818180018181800FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00181818001818180018181800000000000000
                    000000000000181818001818180018181800FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF001818180018181800FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0018181800FF00FF007B7B
                    7B007B7B7B0018181800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF0018181800FF00FF0000000000FF00
                    FF0000000000A5A5A50018181800FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF0018181800FF00FF0000000000FF00
                    FF0000000000A5A5A50018181800FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0018181800000000000000
                    00000000000018181800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00}
                end
                object StaticText4: TStaticText
                  Left = 32
                  Top = 14
                  Width = 52
                  Height = 16
                  Caption = #50868#50689#47784#46300
                  TabOrder = 0
                end
                object StaticText5: TStaticText
                  Left = 120
                  Top = 14
                  Width = 52
                  Height = 16
                  Caption = #44060#48169#47784#46300
                  TabOrder = 1
                end
                object StaticText12: TStaticText
                  Left = 312
                  Top = 14
                  Width = 40
                  Height = 16
                  Caption = #47928#45803#55192
                  TabOrder = 2
                end
                object StaticText13: TStaticText
                  Left = 400
                  Top = 14
                  Width = 40
                  Height = 16
                  Caption = #47928#50676#47548
                  TabOrder = 3
                end
                object StaticText14: TStaticText
                  Left = 208
                  Top = 14
                  Width = 52
                  Height = 16
                  Caption = #54224#49604#47784#46300
                  TabOrder = 4
                end
                object StaticText15: TStaticText
                  Left = 504
                  Top = 14
                  Width = 76
                  Height = 16
                  Caption = #51109#49884#44036#47928#50676#47548
                  TabOrder = 5
                end
              end
            end
          end
          object Panel14: TPanel
            Left = 0
            Top = 0
            Width = 449
            Height = 273
            Align = alLeft
            TabOrder = 1
            OnResize = Panel14Resize
            object GroupBox6: TGroupBox
              Left = 1
              Top = 41
              Width = 447
              Height = 231
              Align = alClient
              Caption = #48169#48276#44396#50669#49345#53468
              Color = clBtnFace
              ParentColor = False
              TabOrder = 0
              object Shader6: TShader
                Left = 2
                Top = 14
                Width = 443
                Height = 9
                Align = alTop
                Caption = 'Shader1'
                TabOrder = 1
                FromColor = 15591915
                ToColor = clSilver
                Direction = False
                Version = '1.1.0.0'
              end
              object IntAlarmListView: TListView
                Left = 2
                Top = 23
                Width = 443
                Height = 206
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
                LargeImages = LargeAlarmList
                MultiSelect = True
                ReadOnly = True
                RowSelect = True
                ParentFont = False
                PopupMenu = PopupMenu_IntAlarm
                SmallImages = AlarmSmallList
                StateImages = statelist
                TabOrder = 0
                OnDblClick = IntAlarmListViewDblClick
              end
            end
            object Pan_Remark1: TPanel
              Left = 1
              Top = 1
              Width = 447
              Height = 40
              Align = alTop
              TabOrder = 1
              object Panel4: TPanel
                Left = 1
                Top = 1
                Width = 445
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
  object pan_Message: TPanel [3]
    Left = 256
    Top = 328
    Width = 761
    Height = 105
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object btn_AlarmConfirm: TSpeedButton
      Left = 304
      Top = 64
      Width = 137
      Height = 25
      Caption = #47700#49464#51648' '#54869#51064
      OnClick = btn_AlarmConfirmClick
    end
    object st_Message: TStaticText
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
        OnExecute = CommandArrayCommandsTCommand7Execute
      end
      item
        CommandName = 'FIRERECOVER'
        CommandKind = 0
        Name = 'TFIRERECOVER'
        OnExecute = CommandArrayCommandsTFIRERECOVERExecute
      end>
  end
  object ActionList1: TActionList
    Left = 426
    Top = 81
    object Action_LoctionLoad: TAction
      Caption = 'Action_LoctionLoad'
      OnExecute = Action_LoctionLoadExecute
    end
    object Action_DeviceLoad: TAction
      Caption = 'Action_DeviceLoad'
      OnExecute = Action_DeviceLoadExecute
    end
    object Action_DoorLoad: TAction
      Caption = 'Action_DoorLoad'
      OnExecute = Action_DoorLoadExecute
    end
    object Action_AlarmLoad: TAction
      Caption = 'Action_AlarmLoad'
      OnExecute = Action_AlarmLoadExecute
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
  object PopupMenu_IntiDoor: TPopupMenu
    AutoHotkeys = maManual
    Left = 779
    Top = 157
    object pm_intiModeChange: TMenuItem
      Caption = #47784#46300#48320#44221
      object pm_intiOpenMode: TMenuItem
        Caption = #44060#48169#47784#46300
        OnClick = pm_intiOpenModeClick
      end
      object pm_intiOperateMode: TMenuItem
        Caption = #50868#50689#47784#46300
        OnClick = pm_intiOperateModeClick
      end
      object pm_intiCloseMode: TMenuItem
        Caption = #54224#49604#47784#46300
        OnClick = pm_intiCloseModeClick
      end
    end
    object pm_intiStateCheck: TMenuItem
      Caption = #49345#53468#54869#51064
      OnClick = pm_intiStateCheckClick
    end
    object pm_intiDoorOpen: TMenuItem
      Caption = #52636#51077#49849#51064
      OnClick = pm_intiDoorOpenClick
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object N13: TMenuItem
      Caption = #54868#47732
      object N15: TMenuItem
        Caption = #53360#50500#51060#53080
        OnClick = N15Click
      end
      object N16: TMenuItem
        Caption = #51089#51008#50500#51060#53080
        OnClick = N16Click
      end
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = #50948#52824#51221#48372
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #44592#44592#51221#48372
      OnClick = N2Click
    end
  end
  object Popup_Device: TPopupMenu
    AutoHotkeys = maManual
    Left = 115
    Top = 333
    object MenuItem7: TMenuItem
      Caption = #44428#54620' '#45796#50868#47196#46300
      object Menu_DeviceAllCardDown: TMenuItem
        Caption = #51204#52404#44428#54620#51116#51204#49569
        OnClick = Menu_DeviceAllCardDownClick
      end
      object Menu_DeviceCardDown: TMenuItem
        Caption = #48120#51204#49569#44428#54620#51204#49569
        OnClick = Menu_DeviceCardDownClick
      end
    end
    object Menu_DeviceTimeSync: TMenuItem
      Caption = #49884#44036#46041#44592#54868
      OnClick = Menu_DeviceTimeSyncClick
    end
    object Menu_DeviceReboot: TMenuItem
      Caption = #44208#54633#51109#52824#47532#49483
      OnClick = Menu_DeviceRebootClick
    end
  end
  object Popup_Locate: TPopupMenu
    AutoHotkeys = maManual
    Left = 51
    Top = 333
    object Menu_CurLocate: TMenuItem
      Caption = #54788#51116#50948#52824#44288#51228
      OnClick = Menu_CurLocateClick
    end
    object mn_LocationMap: TMenuItem
      Caption = #50948#52824#51221#48372
      OnClick = mn_LocationMapClick
    end
  end
  object PopupMenu_AlarmSetting: TPopupMenu
    AutoHotkeys = maManual
    Left = 499
    Top = 5
    object menu_Alarm: TMenuItem
      Caption = #44221#44228#47784#46300
    end
    object menu_AlarmDisable: TMenuItem
      Caption = #54644#51228#47784#46300
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Caption = #50948#52824#51221#48372
    end
    object N7: TMenuItem
      Caption = #44592#44592#51221#48372
    end
  end
  object PopupMenu_IntAlarm: TPopupMenu
    AutoHotkeys = maManual
    Left = 467
    Top = 149
    object Menu_IntAlarmSetting: TMenuItem
      Caption = #44221#44228#47784#46300
      OnClick = Menu_IntAlarmSettingClick
    end
    object Menu_IntAlarmDisable: TMenuItem
      Caption = #54644#51228#47784#46300
      OnClick = Menu_IntAlarmDisableClick
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #54868#47732
      object N8: TMenuItem
        Caption = #53360#50500#51060#53080
        OnClick = N8Click
      end
      object N17: TMenuItem
        Caption = #51089#51008#50500#51060#53080
        OnClick = N17Click
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #50948#52824#51221#48372
      OnClick = N11Click
    end
    object N12: TMenuItem
      Caption = #44592#44592#51221#48372
      OnClick = N12Click
    end
  end
  object PopupMenu_Zone: TPopupMenu
    AutoHotkeys = maManual
    Left = 403
    Top = 405
    object MenuItem11: TMenuItem
      Caption = #44048#51648#51316#50948#52824#51221#48372
    end
    object N22: TMenuItem
      Action = Action_AlarmHistory
    end
  end
  object PopupMenu_intZone: TPopupMenu
    AutoHotkeys = maManual
    Left = 595
    Top = 405
    object MenuItem6: TMenuItem
      Caption = #44048#51648#51316#50948#52824#51221#48372
      OnClick = MenuItem6Click
    end
    object N21: TMenuItem
      Action = Action_intAlarmHistory
    end
  end
  object PopupMenu_Sensor: TPopupMenu
    AutoHotkeys = maManual
    Left = 619
    Top = 165
    object MenuItem12: TMenuItem
      Caption = #46041#51089
    end
    object MenuItem13: TMenuItem
      Caption = #51221#51648
    end
  end
  object ADOAlarmQuery: TADOQuery
    Connection = DataModule1.ADOConnection
    Parameters = <>
    Left = 400
    Top = 192
  end
  object MessageTimer: TTimer
    Enabled = False
    OnTimer = MessageTimerTimer
    Left = 648
    Top = 568
  end
  object toolslist: TImageList
    BkColor = clWhite
    Left = 80
    Top = 208
    Bitmap = {
      494C01010F001300040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F9F9F900F3F3
      F300EEEEEE00FDFDFD00EBEBEB00F9F9F900F4F4F400EEEEEE00FDFDFD00EBEB
      EB00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400F0F0F000EBEBEB00EBEB
      EB00EBEBEB00EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EAEAEA00EBEB
      EB00EAEAEA00EDEDED00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EAEAE10087878B007E7E84007E7E840087878C00EAEAE200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFDFDF00CACACA00C4C4C400CCCC
      CC00D2D2D400CCCCD700D5D5DE00CDCDD600D2D2DC00D2D2DC00CFCFD700D9D9
      D900CDCDCD00C9C9C900C7C7C700C4C4C400FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3
      EC007F7F860013135B0000007400000076000000770000007200131357007F7F
      8700F3F3EE00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C400919191008C8C8C007777
      7A0056564A005A5A0900525212004F4F0D004E4E0C0055551200414109003E3E
      39004E4E4F008C8C8C009292920088888800FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF8004E4E
      6F00000086000000B8000000B7000000B6000000B7000000AC0000009F000000
      6E004E4E6D00FFFFF900FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00E1E1
      E6008C8C7200AAAA00008585000089890000898900008B8B00007D7D00002E2E
      290075757700FFFFFF00FFFFFF00FFFFFF00000000000000000080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00B8B8AC000000
      83000000E1000000E5000000E6000000E7000000E0000000CC000000AF000000
      AB0000005E00B8B8AF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D6D6
      DB0087876F00A2A200008080000084840000848400008383000098981A004646
      3F0056565800FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF00000000000000FF00000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFF800484875000000
      DF000000F4000101F8000202FF000202FF000000F5000202EC000000C5000000
      AF0000008E0048486500FFFFFB00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D6D6
      DB0087876F00A2A200008181000084840000848400008484000084840D005151
      49006C6C6E00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00000000000000FF000000
      FF00000000000000000000000000FFFFFF00FFFFFF00F0F0DF000E0E82000404
      FF00302FFF003D3DFF003636FF002323FF000303FE003333FF003C3DF6000405
      C5000000A6000F0F5700F0F0E500FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D6D6
      DB0087876F00A4A20000807B00008586000084840000868600006F6F00005050
      480081818300FFFFFF00FFFFFF00FFFFFF0000000000000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF00000000000000FF00000000000000
      FF000000FF000000000000000000FFFFFF00FFFFFF00EFEFDF000D0D8100302F
      FF007A7DFF006D70FF004442FF002D2CFF001919FF004F4BFF00798DFF00292F
      DD000000A2000F0F5400F0F0E600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D6D6
      DB008D8B6D007A89080027563100847F00008585000086860000727200005050
      48007E7E8000FFFFFF00FFFFFF00FFFFFF0080808000000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00000000000000FF000000
      FF000000FF000000000080808000FFFFFF00FFFFFF00F1F1E20015157F004644
      FF00B4C4FF00A4BAFF005257EB001E1CE8001C1CFC002429EB004A49FF001112
      D8000000A00016165400F2F2E800FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D6D6
      DB0089896E009397020059670F00868400008484000086860000717100005454
      4C0080808200FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF00000000000000FF00000000000000
      FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00818192001A1A
      D9006463FF007773FF002849BE00005648000C418500004759000000D0000000
      C7000000890080808B00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D6D6
      DB0087876F00A4A4000085830000848400008484000086860000797902002D2D
      280070707200FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00000000000000FF000000
      FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E9DB002525
      8C002828FF001410FF00002DA700009E000000880000007E1600001E96000000
      B90014147700EBEBE800FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D6D6
      DB0087876F00A2A200008080000084840000848400008383000098981A004646
      3F0056565800FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF0000000000000000000000000000000000000000000000FF00000000000000
      FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      BD0027258E001C1FD70017629300036073000189200000288E000000A3000D0D
      6100B2B2CD00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D6D6
      DB0088886F00A2A200007C7C000080800000808000008080000080800D005151
      49006C6C6E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      0000000000008080800000000000000000000000000000000000000000000000
      00000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FE00E8E8DB008484940030269D00251B9C00222F7E00151B62007F7E8C00ECEC
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D8D8
      DC007B7B6800A4A40000A0A00000A2A20000A2A20000A4A400008B8B00004E4E
      430081818400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFD00EDEDE000EDECDE00EDEAE200F1EFE600FEFEFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00CDCD
      CD009F9F9F0081816F0088886F0087876F0087876F0087876F00868670008F8F
      8E0077777700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00E0E0
      E000CDCDCD00D7D7DB00D6D6DB00D6D6DB00D6D6DB00D6D6DB00D8D8DC00C5C5
      C500C1C1C100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0004D30400624C3700C09263008870560088705600AD855F00DCA3
      6A00DCA36A00DCA36A00C09263009B795A00FFFFFF00FFFFFF008C4921008C49
      21008C4921008C4921008C4921008C4921008C4921008C4921008C4921008C49
      2100FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000080808000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0007B607007A5D4100DCA36A00DCA36A00C0926300AD855F00DCA3
      6A00B78B600088705600A5815D00C9966600FFFFFF00FFFFFF008C492100F7DB
      A500F7DBA500F7DBA500F7DBA500F7DBA500F7DBA500F7DBA5008C4921008C49
      21008C492100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000808080008080800000000000000000008080800080808000FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000C8B0C00AB805500A5815D007E695400A5815D00C9966600DCA3
      6A00DCA36A00C09263009B795A0088705600FFFFFF00FFFFFF008C492100F7DB
      A500F7DBA500F7DBA500F7DBA500F7DBA500F7DBA500F7DBA5008C492100EFC7
      AD008C4921008C492100FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000808080000000
      000000000000000000000000000000000000FFFF0000FFFFFF00808080008080
      800080808000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0011611100B8895B00DCA36A00C9966600B78B6000AD855F00DCA3
      6A00B78B6000A5815D00C9966600DCA36A0073756B0073756B008C492100F7DB
      A500FFFFFF008C492100F7DBA500FFFFFF008C492100F7DBA5008C492100EFC7
      AD00EFC7AD008C49210073756B0073756B0000FF000000FF000000FF00000000
      0000FFFFFF0080808000FFFFFF00FFFFFF008080800080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00808080008080800080808000808080000000
      0000808080000000000080808000FFFF0000FFFF0000FFFFFF0000000000FFFF
      FF008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0012521200D29D67007E6954009B795A00B78B6000D29D6700DCA3
      6A00DCA36A00AB8055006D543D003D33280000FF000000FF00008C492100F7DB
      A5008C4921008C492100F7DBA5008C4921008C492100F7DBA5008C492100EFC7
      AD00EFC7AD008C49210000FF000000FF000000FF000000FF000000FF00000000
      0000FFFFFF0080808000FFFFFF00FFFFFF008080800080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00808080008080800080808000808080000000
      0000808080008080800080808000FFFF000080808000FFFFFF0080808000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF003D332800DCA36A00DCA36A00DCA36A00C4925F0093704C005643
      3200433E3A007070700036363600F1F1F10000FF000000FF00008C492100F7DB
      A500F7DBA500F7DBA500F7DBA500F7DBA500F7DBA500F7DBA5008C492100EFC7
      AD00EFC7AD008C49210000FF000000FF000000FF000000FF000000FF00000000
      0000FFFFFF0080808000FFFFFF00FFFFFF008080800080808000FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00808080008080800080808000808080008080
      8000808080008080800080808000FFFF000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0003E2030056433200AB8055006D543D003D332800272727009A9A9A004444
      4400D4D4D400FFFFFF0053535300C5C5C50000FF000000FF00008C492100F7DB
      A500FFFFFF008C492100F7DBA500FFFFFF008C492100F7DBA5008C492100EFC7
      AD00EFC7AD008C49210000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      00008080800080808000FFFF00008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0004D30400153515000F6F0F0007B6070009A8090053535300F1F1F1004444
      44007E7E7E0044444400272727007E7E7E0000FF000000FF00008C492100F7DB
      A5008C4921008C492100F7DBA5008C4921008C492100F7DBA5008C492100EFC7
      AD00EFC7AD008C49210000FF000000FF000000FF000000FF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008080
      800080808000FFFF0000FFFF00008080800080808000FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C8B0C0019191900535353003636
      3600C5C5C500FFFFFF0044444400FFFFFF0000FF000000FF00008C492100F7DB
      A500F7DBA500F7DBA500F7DBA500F7DBA500F7DBA500F7DBA5008C492100EFC7
      AD00EFC7AD008C49210000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000008080
      800080808000FFFF0000808080008080800080808000FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C8B0C008C8C8C00FFFFFF005353
      5300C5C5C5008C8C8C00272727004442420000FF000000FF00008C4921008C49
      21008C4921008C4921008C4921008C4921008C4921008C4921008C492100EFC7
      AD00EFC7AD008C49210000FF000000FF000000FF000000FF000000FF00000000
      000000808000008080000080800000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00000000008080
      800080808000FFFF000080808000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00116111003636360036363600453A
      3A00725C5C00AB888800D8AAAA00C99F9F0000FF000000FF00008C492100D696
      1000D6961000D6961000D6961000D6961000D6961000D69610008C492100EFC7
      AD00EFC7AD008C49210000FF000000FF000000FF000000FF000000FF00000000
      00000080800000808000008080000080800000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00000000000000
      00000000800000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      8000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0007B607000F6F0F0025332300725C
      5C00AB888800544545004A3B2D003D33280000FF000000FF000000FF00008C49
      2100D6961000D6961000D6961000D6961000D6961000D6961000D69610008C49
      2100EFC7AD008C49210000FF000000FF000000FF000000FF000000FF000000FF
      00000000000000808000008080000080800000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000FF0000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00808080000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0004D3
      04000A990A004A3B2D00C4925F0026221D0000FF000000FF000000FF000000FF
      00008C492100D6961000D6961000D6961000D6961000D6961000D6961000D696
      10008C4921008C49210000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000008080000080800000FFFF0000FFFF0000FF
      FF00000000000000000000FF000000FF0000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000080808000FFFFFF0000000000FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0026221D00312923004444440000FF000000FF000000FF000000FF
      000000FF00008C4921008C4921008C4921008C4921008C4921008C4921008C49
      21008C49210000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000008080000080800000FFFF000000
      00000000000000FF000000FF000000FF0000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0004D304000A990A001161110000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000008080000080800000FFFF000000
      000000FF000000FF000000FF000000FF0000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006666FF0033009900FFFFFF003300CC000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F007F7F7F00BFBFBF007F7F7F00000000007F7F7F00BFBFBF007F7F
      7F007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF0004040400040404000404
      0400040404000404040000FFFF003399CC000404040004040400040404000404
      040004040400040404000404040004040400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006666FF00330099000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF007F7F7F00000000007F7F7F00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000FFFFFF000000000000000000000000000000
      00000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000FF000000
      FF000000FF000000000000000000FFFFFF00FFFFFF0086868600868686008686
      8600868686008686860000808000008080000404040086868600868686008686
      860086868600868686008686860086868600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF0033009900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007F7F
      7F007F7F7F007F7F7F00BFBFBF00BFBFBF0000000000BFBFBF00BFBFBF007F7F
      7F007F7F7F007F7F7F0000000000FFFFFF00FFFFFF0000800000008000000080
      0000008000000000FF000000FF0000800000008000000000FF000000FF000000
      FF00000080000080000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DDDDDD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C0000000FF000000FF0066CCCC006666FF0033009900C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000FFFFFF00FFFFFF0000800000808080000000
      0000C0C0C0000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000000000008000000000000000000000FFFFFF0004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      04000404040004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF00D7D7D700FFFFFF006666FF0033009900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000FFFFFF00FFFFFF0000800000008000000080
      000000800000008000000000FF000000FF000000FF000000FF00008000000080
      00000080000000800000000000000000000086868600A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000B2B2B20004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0086868600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000FFFFFF00FFFFFF0000800000808080000000
      0000C0C0C00080808000008000000000FF000000FF000000FF00008000000080
      00000080000000800000000000000000000086868600DDDDDD00777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      770099999900B2B2B20077777700FFFFFF007777770077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007777770096969600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000800000008000000080
      000000800000008000000000FF000000FF000000FF000000FF000000FF008080
      800000800000C0C0C000000000000000000086868600DDDDDD00777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      770099999900B2B2B20077777700FFFFFF0077777700DDDDDD00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800A4A0A000969696005F5F5F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000BFBFBF0000000000FFFFFF00FFFFFF00FFFFFF0000000000BFBF
      BF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000808080000000
      0000C0C0C0000000FF000000FF000000FF00C0C0C0000000FF000000FF008080
      80000080000000800000000000000000000086868600DDDDDD00D7D7D700CCCC
      CC00CCCCCC00C0C0C000C0C0C000B2B2B200B2B2B200B2B2B200A4A0A0000080
      000099999900B2B2B20077777700FFFFFF0077777700DDDDDD00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800A4A0A000969696005F5F5F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000BFBFBF0000000000FFFFFF00FFFFFF00FFFFFF0000000000BFBF
      BF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000C0C0C0000080
      00000000FF000000FF000000FF0000800000C0C0C000008000000000FF000000
      FF00008000000080000000000000FFFFFF0086868600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B2B2B20077777700FFFFFF0077777700DDDDDD00D7D7D700CCCC
      CC00CCCCCC00C0C0C000C0C0C000B2B2B200B2B2B200A4A0A000A4A0A000A4A0
      A000A4A0A000969696005F5F5F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000BFBFBF0000000000FFFFFF00FFFFFF00FFFFFF0000000000BFBF
      BF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C0000000
      FF000000FF000000FF00C0C0C000C0C0C000C0C0C000C0C0C0000000FF000000
      FF000000FF00C0C0C00000000000FFFFFF00FFFFFF0077777700969696009696
      9600969696009696960096969600969696009696960096969600969696009696
      9600969696009696960077777700FFFFFF0077777700E3E3E300DDDDDD00D7D7
      D700CCCCCC00C0C0C000C0C0C000B2B2B200B2B2B200A4A0A000A4A0A000FFFF
      FF00A4A0A000969696005F5F5F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F7F007F7F7F00BFBFBF00000000000000000000000000BFBFBF007F7F
      7F007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B2005F5F5F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770077777700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C007FFFF000000000001E01F00000000
      0000CC07000000000000840300000000E007000100000000E007000100000000
      E007000100000000E007000100000000E007000100000000E007800300000000
      E007800300000000E007800300000000E007800300000000E007800300000000
      E007C00700000000E007E00F00000000FFFFCE81FFFFF800C00F0000F84FF800
      C0070000C033F800C00300008045F80000000B000053F80000000B00005DF800
      00000B00007FF00000000000E07FF00000001FFFC077FF0000000000C075FF00
      00000000C03DFF0000000000C12DFF0000000000F001FFE000000000F147FFF8
      00000000F807FFF800000000FC3FFFFFFFFFFFFFFFFFFC1FCFF9FFFFFFFFF007
      C7F1FFFFF93FE003E2038000FC7FC00100018000FC7FC0018001FEFF8003C001
      80008003F29FC00180000001FEFFC001800000010003E003800000010001F1C7
      800000010001F1C7800100010001F1C7800180010011F007C7E3FFFF8001F80F
      CFF3FFFFC001FC1FFFFFFFFFFFFFFFFFF9FFF9E7FFFFFFFFE0FFE0C7FFFFFFFF
      C07FC01FFFFFC003C01FC01FFE078001C007C0070001C003C007C0078001C003
      C007C0078000E007C007C0078000E007C007C0078000F00FC007C0078000F00F
      C007C0078000F81FC007C0078001F81FE007E0078001FC3FF007F007FFFFFC3F
      FC07FC07FFFFFE7FFF1FFF1FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object statelist: TImageList
    Left = 240
    Top = 120
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
  object SmallDoorList: TImageList
    Left = 912
    Top = 120
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000028282800282828002828280028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028282800000000002972F9000CD4F8000CD4F8002972F900000000002828
      2800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002972F9000CD4F8000CD4F80007F8FB0007F8FB000CD4F8002972F9002972
      F900282828000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828001818
      E0002972F9000CD4F80007F8FB00D5FEFF00D5FEFF0007F8FB000CD4F8002972
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000565656002972
      F9000CD4F8000CD4F800D5FEFF00D5FEFF00D5FEFF00D5FEFF000CD4F8002972
      F9001818E0002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000565656002972
      F9000CD4F8000CD4F80007F8FB00D5FEFF00D5FEFF0007F8FB000CD4F8002972
      F9001818E0002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828001818
      E0002972F9000CD4F8000CD4F80007F8FB0007F8FB000CD4F8000CD4F8002972
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828001818
      E0000CD4F8002972F9000CD4F8000CD4F8000CD4F8000CD4F8002972F9001818
      E000565656000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828001818
      E0001818E0002972F9002972F9000CD4F8000CD4F8002972F9001818E0001818
      E000565656000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828001818
      E00056565600565656002972F9000CD4F8000CD4F8002972F900565656005656
      5600565656000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828005656
      560000000000565656002972F9002972F9002972F9002972F900565656002828
      28001818E0002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000565656002972F9002972F90056565600000000000000
      0000282828000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000565656001818E0005656560028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000028282800282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000022222200222222002222
      2200222222002222220022222200222222000000000000000000000000000000
      0000000000001818180000000000000000000000000018181800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000CCFFFF000000
      000000000000000000000000000000000000FF6600002222220033FFCC00A4A0
      A000A4A0A000A4A0A00000000000222222000000000000000000000000001818
      1800A5A5A5000000000000000000000000000000000000000000A5A5A5001818
      180000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      00000000000000000000FFFFFF00FFFFFF00000000000000000000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      000066FFFF000000000000000000FF660000FF66000022222200222222002222
      2200222222002222220022222200222222000000000000000000181818000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
      7B0018181800000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      00000000000000000000FFFFFF00FFFFFF00000000000000000000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000033FFFF0000000000FF66000022222200222222002222
      2200222222002222220022222200222222000000000018181800000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B00181818000000000000000000FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000033FFFF0033FFFF0000000000FF660000FF6600002222220000000000FFCC
      0000FFCC0000FFCC0000FFCC00002222220000000000A5A5A500FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A5A5A5000000000000000000FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000033FF
      FF0033FFFF0033FFFF0033FFFF0000000000000000002222220000000000FFCC
      0000FFCC0000FFCC0000FFCC0000222222001818180000000000FFFFFF00FFFF
      FF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B001818180000000000FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000033FFFF0000FFFF0000FFFF0000FFFF002222220000000000FFCC
      0000FFCC0000FFCC0000FFCC0000222222001818180000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001818180000000000FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF660000FF66
      0000FF660000000000000000000000CCFF0000CCFF0022222200A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000222222001818180000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001818180000000000FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002222220022222200222222002222
      22002222220022222200222222000000000000CCFF0000CCFF0000CCFF000000
      0000FF660000FF660000FF660000000000001818180000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B001818180000000000FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002222220033FFCC00A4A0A000A4A0
      A000A4A0A000000000002222220000CCFF0000CCFF0000CCFF0000CCFF000000
      0000FF660000FF6600000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B000000000000000000FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002222220022222200222222002222
      220022222200222222002222220000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF00000000000000000000000000000000001818180000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00181818000000000000000000FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002222220022222200222222002222
      220022222200222222002222220000CCFF0000CCFF0000CCFF000099FF0000CC
      FF000099FF000099FF000099FF000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B00000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002222220000000000FFCC0000FFCC
      0000FFCC0000FFCC0000222222000000000000CCFF000099FF000099FF000099
      FF000099FF00000000000000000000000000181818007B7B7B00A5A5A500A5A5
      A50000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00A5A5
      A500000000007B7B7B001818180000000000FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002222220000000000FFCC0000FFCC
      0000FFCC0000FFCC000022222200FF660000000000000099FF000099FF000000
      0000000000000000000000000000000000000000000000000000181818000000
      0000181818000000000000000000000000000000000000000000181818000000
      000018181800000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002222220000000000FFCC0000FFCC
      0000FFCC0000FFCC00002222220000000000FF66000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000181818007B7B7B001818180000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0022222200A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A00022222200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A50000000000000000000000
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
      FCFF000000000000FFFF000000000000FFFCFDFCBF00F83FC01CF01CC600E7CF
      C01CC01CE000D007C01CC01CF800A00300000000E000800300000000C0004001
      00000000C0004001000000008000400100000000000040010000000000018003
      000000000001A003000000000000C007000000000003080900000000000FD7D7
      00000000001FFC7F00000000017FFF7F00000000000000000000000000000000
      000000000000}
  end
  object AlarmSmallList: TImageList
    Left = 240
    Top = 160
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
      0000000000000000000000000000000000000000000022222200222222002222
      2200222222002222220022222200222222000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCFFFF000000
      000000000000000000000000000000000000FF6600002222220033FFCC00A4A0
      A000A4A0A000A4A0A00000000000222222000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066FFFF000000000000000000FF660000FF66000022222200222222002222
      2200222222002222220022222200222222000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018A5C60018A5
      C60018A5C60018A5C60018A5C60018A5C60018A5C60018A5C60018A5C60018A5
      C60018A5C60018A5C60000000000000000000000000000000000000000000000
      0000000000000000000033FFFF0000000000FF66000022222200222222002222
      220022222200222222002222220022222200000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CDEEF0094F7FF0073DE
      F70073DEF70073DEF70073DEF7000000FF000000FF0073DEF70073DEF70073DE
      F70073DEF7004AC6E70018A5C600000000000000000000000000000000000000
      000033FFFF0033FFFF0000000000FF660000FF6600002222220000000000FFCC
      0000FFCC0000FFCC0000FFCC000022222200000000000000000080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094F7FF0073DE
      F70073DEF70073DEF70073DEF7000000FF000000FF0073DEF70073DEF70073DE
      F70073DEF70018A5C600000000000000000000000000000000000000000033FF
      FF0033FFFF0033FFFF0033FFFF0000000000000000002222220000000000FFCC
      0000FFCC0000FFCC0000FFCC0000222222000000000000000000000000000000
      000000000000FFFFFF00FFFF0000FFFF000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF00000000000000FF00000000000000
      00000000000000000000000000000000000000000000000000009CDEEF0094F7
      FF0073DEF70073DEF70073DEF70073DEF70073DEF70073DEF70073DEF70073DE
      F7004AC6E70018A5C60000000000000000000000000000000000000000000000
      00000000000033FFFF0000FFFF0000FFFF0000FFFF002222220000000000FFCC
      0000FFCC0000FFCC0000FFCC000022222200000000000000000000000000FFFF
      0000FFFFFF00FFFFFF00FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000000094F7
      FF0073DEF70073DEF70073DEF7000000FF000000FF0073DEF70073DEF70073DE
      F70018A5C6000000000000000000000000000000000000000000FF660000FF66
      0000FF660000000000000000000000CCFF0000CCFF0022222200A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000222222000000000000000000FFFF0000FFFF
      0000FFFFFF00FFFFFF00FFFF0000FFFF000000000000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF00000000000000FF00000000000000
      FF000000FF000000000000000000000000000000000000000000000000009CDE
      EF0094F7FF0073DEF70073DEF7000000FF000000FF0073DEF70073DEF7004AC6
      E70018A5C6000000000000000000000000002222220022222200222222002222
      22002222220022222200222222000000000000CCFF0000CCFF0000CCFF000000
      0000FF660000FF660000FF660000000000008080800000000000FFFF0000FFFF
      0000FFFFFF00FFFFFF00FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF
      0000FFFF000000000000808080000000000080808000000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00000000000000FF000000
      FF000000FF000000000080808000000000000000000000000000000000000000
      000094F7FF0073DEF70073DEF7000000FF000000FF0073DEF70073DEF70018A5
      C600000000000000000000000000000000002222220033FFCC00A4A0A000A4A0
      A000A4A0A000000000002222220000CCFF0000CCFF0000CCFF0000CCFF000000
      0000FF660000FF66000000000000000000000000000000000000FFFF0000FFFF
      0000FFFFFF00FFFFFF00FFFF0000FFFF000000000000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF00000000000000FF00000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00009CDEEF0094F7FF0073DEF7000000FF000000FF0073DEF7004AC6E70018A5
      C600000000000000000000000000000000002222220022222200222222002222
      220022222200222222002222220000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFFFF00FFFFFF00FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF
      0000FFFF000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000094F7FF0073DEF7000000FF000000FF0073DEF70018A5C6000000
      0000000000000000000000000000000000002222220022222200222222002222
      220022222200222222002222220000CCFF0000CCFF0000CCFF000099FF0000CC
      FF000099FF000099FF000099FF00000000000000000000000000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000000000000000FF000000
      FF0000000000000000000000000000000000000000000000FF00000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000009CDEEF0094F7FF000000FF000000FF004AC6E70018A5C6000000
      0000000000000000000000000000000000002222220000000000FFCC0000FFCC
      0000FFCC0000FFCC0000222222000000000000CCFF000099FF000099FF000099
      FF000099FF000000000000000000000000000000000000000000FFFF00000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000FFFF000000000000000000000000000000000000000000000000FF000000
      0000000000008080800000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000094F7FF0073DEF70073DEF70018A5C600000000000000
      0000000000000000000000000000000000002222220000000000FFCC0000FFCC
      0000FFCC0000FFCC000022222200FF660000000000000099FF000099FF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CDEEF0094F7FF004AC6E70018A5C600000000000000
      0000000000000000000000000000000000002222220000000000FFCC0000FFCC
      0000FFCC0000FFCC00002222220000000000FF66000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000094F7FF0018A5C60000000000000000000000
      00000000000000000000000000000000000022222200A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A00022222200000000000000000000000000000000000000
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
      FCFF000000000000FFFF000000000000BF00FFFFFFFFFFFFC600E01FE01FFFFF
      E000CC07CC07C003F800840384038001E00000010001C003C00000010001C003
      C00000010001E007800000010001E007000000010001F00F000180038003F00F
      000180038003F81F000080038003F81F000380038003FC3F000F80038003FC3F
      001FC007C007FE7F017FE00FE00FFFFF00000000000000000000000000000000
      000000000000}
  end
  object LargeDoorList: TImageList
    Height = 32
    Width = 32
    Left = 920
    Top = 160
    Bitmap = {
      494C010105000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000282828002828280028282800282828002828280028282800282828002828
      2800282828000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000002828280028282800000000000000
      00002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8002972F9002972
      F9002972F9000000000000000000282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002828280000000000000000002972F9002972
      F9000CD4F8000CD4F8000CD4F80007F8FB0007F8FB0007F8FB000CD4F8000CD4
      F8002972F9002972F9002972F900000000002828280000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000028282800000000002972F9002972F9002972F9000CD4
      F8000CD4F8000CD4F80007F8FB0007F8FB00D5FEFF0007F8FB0007F8FB000CD4
      F8000CD4F8002972F9002972F9002972F9000000000028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000028282800000000001818E0002972F9002972F9002972F9000CD4
      F8000CD4F8000CD4F80007F8FB0007F8FB00D5FEFF00D5FEFF0007F8FB0007F8
      FB000CD4F8002972F9002972F9002972F9001818E00000000000282828000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000028282800000000001818E0002972F9002972F9000CD4F8000CD4
      F8000CD4F80007F8FB0007F8FB00D5FEFF00D5FEFF00D5FEFF00D5FEFF0007F8
      FB000CD4F8000CD4F8002972F9002972F9001818E00000000000282828000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028282800000000001818E0002972F9002972F9000CD4F8000CD4F8000CD4
      F80007F8FB0007F8FB00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF0007F8
      FB0007F8FB000CD4F8000CD4F8002972F9002972F9001818E000000000002828
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
      000028282800565656001818E0002972F9002972F9000CD4F8000CD4F8000CD4
      F80007F8FB00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FE
      FF0007F8FB000CD4F8000CD4F8002972F9002972F9001818E000000000002828
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
      000028282800565656001818E0002972F9002972F9000CD4F8000CD4F8000CD4
      F80007F8FB0007F8FB00D5FEFF00D5FEFF00D5FEFF00D5FEFF00D5FEFF0007F8
      FB0007F8FB000CD4F8000CD4F8002972F9002972F9001818E000565656002828
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
      000028282800565656001818E0002972F9002972F9000CD4F8000CD4F8000CD4
      F80007F8FB0007F8FB00D5FEFF00D5FEFF00D5FEFF00D5FEFF0007F8FB0007F8
      FB000CD4F8000CD4F8000CD4F8002972F9002972F9001818E000565656002828
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
      000028282800565656001818E0002972F9002972F9002972F9000CD4F8000CD4
      F8000CD4F80007F8FB0007F8FB00D5FEFF00D5FEFF0007F8FB0007F8FB0007F8
      FB000CD4F8000CD4F8002972F9002972F9002972F9001818E000000000002828
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
      00000000000028282800000000001818E0002972F9002972F9000CD4F8000CD4
      F8000CD4F8000CD4F80007F8FB0007F8FB00D5FEFF0007F8FB000CD4F8000CD4
      F8000CD4F8000CD4F8002972F9002972F9001818E00000000000282828000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000028282800000000001818E0002972F9000CD4F8000CD4F8000CD4
      F8000CD4F8000CD4F8000CD4F80007F8FB0007F8FB0007F8FB000CD4F8000CD4
      F8000CD4F8002972F9002972F9002972F9001818E00056565600282828000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000028282800000000001818E0002972F9000CD4F8002972F9002972
      F9000CD4F8000CD4F8000CD4F8000CD4F80007F8FB000CD4F8000CD4F8000CD4
      F8002972F9002972F9002972F9001818E0001818E00056565600282828000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000028282800565656001818E0002972F9002972F9002972F9002972
      F9002972F9002972F9000CD4F8000CD4F80007F8FB000CD4F8000CD4F8002972
      F9002972F9002972F9001818E0001818E0000000000028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000028282800565656001818E0002972F9001818E0001818E0002972
      F9002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8000CD4F8002972
      F9002972F9001818E000565656001818E0001818E00056565600282828000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000028282800565656001818E0001818E00000000000565656001818
      E0001818E0002972F9002972F9000CD4F8000CD4F8000CD4F8000CD4F8002972
      F9001818E00056565600282828001818E0001818E00056565600282828000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000028282800565656001818E0001818E00056565600282828005656
      56001818E0002972F9002972F9000CD4F8000CD4F8000CD4F8002972F9002972
      F9001818E0005656560028282800565656001818E00056565600282828000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028282800565656001818E0001818E0005656560000000000282828005656
      56001818E0002972F9002972F9002972F9000CD4F8002972F9002972F9002972
      F9001818E0005656560028282800565656001818E00056565600565656002828
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
      0000000000002828280056565600565656002828280000000000282828005656
      56001818E0002972F9002972F9002972F9000CD4F8002972F9002972F9002972
      F9001818E000565656000000000028282800565656001818E000565656002828
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
      0000000000000000000028282800282828000000000000000000000000002828
      2800565656001818E0001818E0002972F9002972F9002972F9002972F9001818
      E000565656002828280000000000000000002828280056565600282828000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028282800565656001818E0002972F9002972F9002972F9001818E0005656
      5600282828000000000000000000000000000000000028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028282800565656001818E0002972F9002972F9001818E0001818E0005656
      5600282828000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028282800565656001818E0001818E0001818E00056565600565656002828
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
      000028282800565656001818E000565656005656560028282800282828000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002828280056565600282828002828280000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000028282800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C0000000
      00000000000000000000C0C0C000C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C60000000000000000000000
      0000C6C6C600C6C6C600000000000000000000000000C6C6C600C6C6C6000000
      00000000000000000000C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      00000000000000000000C0C0C000C0C0C000000000000000000000000000C0C0
      C000C0C0C000000000000000000000000000C0C0C000C0C0C000000000000000
      0000FFFF0000FFFF000000000000000000000000000000000000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001818180018181800A5A5
      A5007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00A5A5
      A500181818001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600000000000000000000000000C6C6C600C6C6C6000000
      00000000000000000000C6C6C600C6C6C600000000000000000000000000C6C6
      C600C6C6C600000000000000000000000000C6C6C600C6C6C600000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000000000000000000000000000C0C0C000C0C0C000000000000000
      000000000000C0C0C000C0C0C000000000000000000000000000C0C0C0000000
      0000FFFF0000FFFF00008080000000000000C0C0C00000000000000000000000
      0000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001818180018181800A5A5A5007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00A5A5A50018181800181818000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C6000000
      00000000000000000000C6C6C600C6C6C600000000000000000000000000C6C6
      C600C6C6C600000000000000000000000000C6C6C600C6C6C600000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000C6C6C600C6C6
      C60000000000000000000000000000000000C0C0C000C0C0C000000000000000
      000000000000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0
      C000000000000000000000000000C0C0C000C0C0C00000000000000000000000
      0000FFFF0000FFFF0000808000008080000000000000C0C0C000C0C0C0000000
      00000000000000000000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018181800A5A5A5007B7B7B000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00A5A5A5001818180000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600000000000000000000000000C6C6C600C6C6C600000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000C6C6C600C6C6
      C600000000000000000000000000C6C6C600C6C6C60000000000000000000000
      0000C6C6C600C6C6C60000000000000000000000000000000000C0C0C000C0C0
      C000000000000000000000000000C0C0C000C0C0C00000000000000000000000
      0000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C0000000
      0000FFFF0000FFFF00008080000080800000808000000000000000000000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018181800A5A5A5000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00A5A5A50018181800000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000C6C6C600C6C6
      C600000000000000000000000000C6C6C600C6C6C60000000000000000000000
      0000C6C6C600C6C6C600000000000000000000000000C6C6C600C6C6C6000000
      00000000000000000000C6C6C600C6C6C600C0C0C00000000000000000000000
      0000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C0000000
      00000000000000000000C0C0C000C0C0C0000000000000000000000000000000
      0000FFFF0000FFFF000080800000808000008080000080800000000000000000
      000000000000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181800A5A5A50000000000FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00A5A5A500181818000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000000000000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800A5A5A50000000000FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00A5A5A5001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000000000000000000000000000C0C0C0000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      18007B7B7B0000000000FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C00000000000000000000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018181800A5A5
      A50000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00A5A5
      A500181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000181818007B7B
      7B0000000000FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B
      7B00181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000C6C6C6000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018181800A5A5A5000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
      7B00A5A5A5001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000C6C6C6000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000181818007B7B7B000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
      7B007B7B7B001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000C6C6C6000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000181818007B7B7B000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000000000000000000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000181818007B7B7B000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000000000000808080000000000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000181818007B7B7B000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFF
      FF007B7B7B001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000000000000000000000000000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000181818007B7B7B000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000000000008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000000000000000000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      0000262626002626260026262600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000181818007B7B7B000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
      7B007B7B7B001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00000000
      000000FFFF000000000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      000026262600C2C2C200C0C0C000262626000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018181800A5A5A5000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
      7B00A5A5A5001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000000000008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      00000000000026262600B6B6B600AAAAAA003E3E3E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000181818007B7B
      7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
      7B00181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      00000000000026262600B6B6B600AAAAAA00929292003E3E3E00262626003E3E
      3E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018181800A5A5
      A50000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF007B7B7B00A5A5
      A500181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C000000000000000000000000000000000003E3E3E003E3E
      3E003E3E3E00A4A0A000A4A0A000AAAAAA00AAAAAA00AAAAAA00A4A0A0009292
      92003E3E3E003E3E3E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      18007B7B7B00000000007B7B7B00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C0000000000000000000000000003E3E3E00A4A0A000C2C2
      C200C0C0C000C0C0C000A4A0A0009662000096620000B6B6B600AAAAAA00AAAA
      AA00AAAAAA00929292003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800A5A5A50000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00A5A5A5001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000C6C6C6000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C00000000000000000003E3E3E00A4A0A000CECECE00CECE
      CE00C2C2C200C2C2C200B6B6B600FF8F6B00FF8F6B00C0C0C000B6B6B600B6B6
      B600AAAAAA00AAAAAA00929292003E3E3E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00181818000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000C6C6C6000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C000000000000000000026262600DADADA00DADADA00CECE
      CE00CECECE00CECECE00C0C0C000B97A000096620000AAAAAA00C2C2C200C0C0
      C000B6B6B600B6B6B600B6B6B600262626000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000181818001818
      1800A5A5A500000000007B7B7B0000000000FFFFFF00FFFFFF007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF007B7B7B007B7B7B0000000000A5A5A5001818
      1800181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000C6C6C6000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000FFFF0000FFFF000080800000808000008080000080800000808000000000
      000080808000C0C0C000000000000000000026262600E6E6E600E6E6E600DADA
      DA00DADADA00DADADA00DADADA00FF8F6B0096620000B97A0000B6B6B600CECE
      CE00C2C2C200C0C0C000C0C0C000262626000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018181800000000007B7B
      7B0000000000A5A5A50018181800A5A5A5007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B00A5A5A5001818180000000000000000007B7B
      7B00A5A5A5001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      800000000000FFFF0000FFFF0000808000008080000080800000808000000000
      000080808000C0C0C000000000000000000026262600E6E6E600E6E6E600E6E6
      E600E6E6E600F0CAA600FFAB8E00DADADA00FFAB8E0096620000B97A0000DADA
      DA00CECECE00CECECE00C2C2C200262626000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018181800000000000000
      00007B7B7B0018181800000000001818180018181800A5A5A5007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B00A5A5A50018181800181818000000000018181800000000000000
      0000A5A5A5001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF00008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      80008080800000000000FFFF0000FFFF00008080000080800000808000000000
      000080808000C0C0C00000000000000000003E3E3E00C2C2C200F2F2F200F2F2
      F200F2F2F200B97A0000B97A0000FF734800FF8F6B0096620000B97A0000E6E6
      E600DADADA00DADADA00A4A0A0003E3E3E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000181818000000
      0000A5A5A5001818180000000000000000000000000018181800181818000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818001818180000000000000000000000000018181800000000000000
      0000181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000FFFF0000FFFF000080800000808000000000
      000080808000C0C0C00000000000000000000000000026262600C2C2C200F2F2
      F200F2F2F200FFD4D400B97A00009662000096620000B97A0000F0CAA600E6E6
      E600E6E6E600A4A0A0003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800181818000000000000000000000000000000000000000000000000001818
      1800181818001818180000000000000000000000000018181800181818001818
      1800000000000000000000000000000000000000000000000000181818001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      800080808000808080008080800000000000FFFF0000FFFF0000808000000000
      000080808000C0C0C00000000000000000000000000000000000262626003E3E
      3E00C2C2C200DADADA00DADADA00F0CAA600F0CAA600E6E6E600E6E6E600AAAA
      AA00262626003E3E3E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018181800000000007B7B7B007B7B7B0018181800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000FFFF0000FFFF00000000
      0000808080000000000000000000000000000000000000000000000000000000
      00003E3E3E002626260026262600262626002626260026262600262626003E3E
      3E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001818180000000000000000000000000000000000A5A5A500181818000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001818180000000000000000000000000000000000A5A5A500181818000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818180000000000000000000000000018181800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
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
      00000000000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFF007FF000000000000000000000000
      FFCFF9FF000000000000000000000000FF3006FF000000000000000000000000
      FEC0017F000000000000000000000000FD0000BF000000000000000000000000
      FA00005F000000000000000000000000FA00005F000000000000000000000000
      F400002F000000000000000000000000F000002F000000000000000000000000
      F000000F000000000000000000000000F000000F000000000000000000000000
      F000002F000000000000000000000000FA00005F000000000000000000000000
      FA00001F000000000000000000000000FA00001F000000000000000000000000
      F80000BF000000000000000000000000F800001F000000000000000000000000
      F840001F000000000000000000000000F800001F000000000000000000000000
      F040000F000000000000000000000000F840020F000000000000000000000000
      FCE0031F000000000000000000000000FFF007BF000000000000000000000000
      FFF007FF000000000000000000000000FFF00FFF000000000000000000000000
      FFF01FFF000000000000000000000000FFF87FFF000000000000000000000000
      FFFDFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFFF39CE33FFFFFFFFFFFE00FFF
      FE739CFFDCE721CFFFFFFFFFFF8003FFF39CE73FE739C073FFFFFFFFFE1FF0FF
      9CE739CF39CE601CFFFFFFFFFC60007FE739CE73CE738027FFFFFFFFF980003F
      B9CE739C739CE019FFFFFFFFF200001F8000000000072000FFFFFFFFE400000F
      FE80003FFFF1C003FFFFFFFFE400000FFE80003FFFF66003FFFFFFFFC8000007
      FE80003FFFF00003FFFFFFFFC8000007FE80003FFFF00003FFFFFFFF90000003
      FE80003FFFF00003FFFFFFFF90000003FE80003FFFF00003FFFFFFFF90000003
      FE80003FFFF00003FFFFFFFF90000003FE80003FFFF00003FFFFFFFF90000003
      FE80003FFFF00103FFFFFFFF90000003FE80003FFFF00003F1FFFFFF90000003
      FE80003FFFF00003F0FFFFFF90000003FE80003FFFF00003F87FFFFFC8000007
      FE80003FFFF00003F80FFFFFC8000007FE80003FFFF00003C003FFFFE400000F
      FE80003FFFF000038001FFFFE400000FFE80003FFFF000030000FFFFF200001F
      FE80003FFFF000030000FFFFC1000007FE80003FFFF000030000FFFFA0400043
      FE80003FFFF000030000FFFFB20000B3FE80003FFFF000030000FFFFD39FF3B7
      FE80003FFFF000038001FFFFE7E00FCFFE80013FFFF00003C003FFFFFFFA3FFF
      FEFFFF3FFFF00007F00FFFFFFFF51FFFFE00007FFFF0000FFFFFFFFFFFF51FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF83FFF00000000000000000000000000000000
      000000000000}
  end
  object LargeAlarmList: TImageList
    Height = 48
    Width = 48
    Left = 240
    Top = 208
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
end
