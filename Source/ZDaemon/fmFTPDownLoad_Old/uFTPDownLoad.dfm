inherited fmFTPDownLoad: TfmFTPDownLoad
  Left = 572
  Top = 194
  Width = 673
  Height = 488
  Caption = 'fmFTPDownLoad'
  Font.Charset = HANGEUL_CHARSET
  Font.Height = -12
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 665
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 78
      Height = 12
      Caption = #47700#51064' '#52968#53944#47204#47084
    end
    object cmb_Mcu: TComboBox
      Left = 104
      Top = 20
      Width = 249
      Height = 20
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 12
      TabOrder = 0
      OnChange = cmb_McuChange
    end
  end
  object sg_Device: TAdvStringGrid [1]
    Left = 0
    Top = 57
    Width = 665
    Height = 295
    Cursor = crDefault
    Align = alClient
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
    ScrollBars = ssVertical
    TabOrder = 1
    OnCheckBoxClick = sg_DeviceCheckBoxClick
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      #47700#51064#52968#53944#47204#47084'IP'
      'ECU NO'
      #52968#53944#47204#47084' '#47749#52845
      'NODE NO')
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
    FixedColWidth = 151
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
    ScrollSynch = True
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
    SortSettings.AutoColumnMerge = True
    SortSettings.Show = True
    SortSettings.AutoFormat = False
    Version = '6.0.4.4'
    ColWidths = (
      151
      143
      222
      135
      106)
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 352
    Width = 665
    Height = 102
    Align = alBottom
    TabOrder = 2
    object btn_DeviceFtpGrade: TSpeedButton
      Left = 112
      Top = 24
      Width = 145
      Height = 41
      Caption = #44428#54620' '#51116#51204#49569
      Glyph.Data = {
        36180000424D3618000000000000360000002800000040000000200000000100
        1800000000000018000000000000000000000000000000000000C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7C7C7C7C7C7
        C8C8C8C8C8C8C8C8C8C7C7C7C8C8C8C7C7C7C8C8C8C8C8C8C7C7C7C8C8C8C7C7
        C7C8C8C8C8C8C8C7C7C7C7C7C7C8C8C8C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C7C7C7C7C7C7C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C3BFBFA78F8FAE9A9ABDB6
        B6C7C7C7C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7C7C7
        C7C7C7C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BFBFBF9090909C9C9CB6B6
        B6C6C6C6C8C8C8C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7
        C7C7C7C7C7C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8B4A7A7D5C1BEF1E2DDC4AD
        ABAD9999B5A8A8BAB1B2C0BBBBC5C3C3C7C6C6C8C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7C7C7C8C8C8
        C8C8C8C7C7C7C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8A8A8A8C1C1C1E2E2E2AEAE
        AE9A9A9AA9A9A9B2B2B2BBBBBBC3C3C3C6C6C6C7C7C7C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7C7C7AE9898F4E8E3FFF0ECFFEF
        EBF2E2DEDDCBC7CEB9B6BC9E9EAF9090AC9191AD9898B09F9FB2A3A3B4A7A7B7
        ABABB9AFAFBBB2B2BCB6B6BDB7B7BFB9B9C4C2C2C8C8C8C8C8C8C8C8C8C7C7C7
        C7C7C7C8C8C8C8C8C8C8C8C8C7C7C7C8C8C8C7C7C7999999E7E7E7F0F0F0EFEF
        EFE2E2E2CBCBCBB9B9B99F9F9F929292929292999999A0A0A0A3A3A3A8A8A8AB
        ABABAFAFAFB3B3B3B6B6B6B7B7B7B9B9B9C1C1C1C7C7C7C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BCB4B4C4AFADFFF4EFF2DCDAF1DB
        D8F7E2E0FEEFEBFFF7F2FFF2EDF5DEDAE6C5C3DAB4B3D3AEAED1B0AFD0B1B2CC
        B0B0C8ACACC4A8A8C1A5A5C1A5A5B79A9AB2A2A2C8C8C8C8C8C8C8C8C8C8C8C8
        C7C7C7C7C7C7C8C8C8C7C7C7C8C8C8C7C7C7B4B4B4B0B0B0F3F3F3DDDDDDDBDB
        DBE2E2E2EFEFEFF6F6F6F1F1F1DEDEDEC7C7C7B6B6B6B1B1B1B2B2B2B3B3B3B2
        B2B2ADADADA9A9A9A6A6A6A7A7A79C9C9CA3A3A3C7C7C7C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8AD9B9BE9DBD6FBEAE6F1DBD9F2DB
        DAF1DBD9F1DAD8F3DDDBF8E5E2FEF0EBFFF5EFFDECE7F4D9D6ECCBC8E6C1BFE7
        C3C1EACAC9EED2D1EFD4D3F2D8D7DDC1C0B1A1A1C8C8C8C8C8C8C7C7C7C7C7C7
        C8C8C8C7C7C7C8C8C8C8C8C8C8C8C8C7C7C79B9B9BDADADAEAEAEADCDCDCDCDC
        DCDCDCDCDBDBDBDEDEDEE6E6E6F0F0F0F5F5F5ECECECDADADACCCCCCC3C3C3C5
        C5C5CCCCCCD3D3D3D5D5D5DADADAC2C2C2A1A1A1C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C0BBBBB9A2A1FFF3EDF5E1DDF3DEDBF3DD
        DBF3DDDBF3DDDAF2DDDAF2DBDAF2DCDAF4E0DDFAE8E4FEF0ECFFF2EDFCECE7F4
        DCD7ECCDC9E6C2BFE6C2C0EBCBC9DBC0BFB1A1A1C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C7C7C7BBBBBBA3A3A3F2F2F2E1E1E1DEDEDEDEDE
        DEDDDDDDDEDEDEDEDEDEDDDDDDDCDCDCE0E0E0E8E8E8F0F0F0F1F1F1EBEBEBDC
        DCDCCECECEC3C3C3C4C4C4CDCDCDC1C1C1A1A1A1C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8AF9F9FE1D1CEFFF0EBF3DEDBF3DFDBF3DF
        DBF3DFDCF3DFDCF3DEDBF3DEDBF3DEDBF2DDDBF2DCDAF3DDDAF4E0DDF8E6E2FD
        EEE9FEF0ECFDEDE8F7E4E1F0D4D2DBC0BFB1A0A0C8C8C8C8C8C8C7C7C7C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C7C7C7A0A0A0D1D1D1EFEFEFDFDFDFDFDFDFDFDF
        DFE0E0E0DFDFDFDEDEDEDFDFDFDFDFDFDDDDDDDDDDDDDEDEDEE1E1E1E6E6E6EE
        EEEEF0F0F0EDEDEDE4E4E4D6D6D6C1C1C1A1A1A1C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C2BEBEB59D9DFDF2EDF8E4E1F5DFDDF5E0DDF5E0
        DEF4E0DDF4DFDDF4DFDCF4DFDCF3DFDCF3DFDCF3DFDBF3DFDBF3DEDBF2DDDAF2
        DDDAF4DFDCFDF2EEFFFCFAF3DEDDDFC4C4B09E9EC8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C7C7C7C7C7C7C7C7C7BEBEBE9E9E9EF2F2F2E4E4E4DFDFDFE0E0E0E1E1
        E1E0E0E0E0E0E0DFDFDFE0E0E0E0E0E0E0E0E0DFDFDFDFDFDFDEDEDEDDDDDDDE
        DEDEDFDFDFF1F1F1FCFCFCDFDFDFC6C6C69F9F9FC7C7C7C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8B0A0A0DCCCC9FFF4EFFDE9E7FBE7E5F8E4E2F6E2
        E0F5E1DFF5E1DFF5E2DFF5E1DEF4DFDDF4DFDDF4E0DDF4E0DDF4DFDDF4DFDCF3
        DEDBF5E2DEFFF8F5FAF0EEF0D6D5E3C9C8AF9D9DC8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C7C7C7C8C8C8C8C8C8A1A1A1CCCCCCF3F3F3EAEAEAE8E8E8E4E4E4E3E3
        E3E2E2E2E2E2E2E2E2E2E1E1E1DFDFDFE0E0E0E0E0E0E1E1E1DFDFDFE0E0E0DE
        DEDEE2E2E2F7F7F7F0F0F0D7D7D7CBCBCB9D9D9DC7C7C7C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C1BDBDB49E9DFEF4F0F5E5E1C3ACABD0BBB8EBD7D4FAE6
        E3FFEBE7F8E4E0F7E4E2FDEFEBFBEAE7F8E6E3F6E3E0F6E2DFF5E1DFF5E1DFF8
        E5E2FDF1EDFFFCFBF4E3E1F0D6D4E7CFCDAE9A9AC8C8C8C8C8C8C7C7C7C8C8C8
        C8C8C8C8C8C8C7C7C7BDBDBD9F9F9FF4F4F4E5E5E5ADADADBCBCBCD8D8D8E7E7
        E7EBEBEBE4E4E4E5E5E5EFEFEFEAEAEAE6E6E6E4E4E4E2E2E2E1E1E1E1E1E1E5
        E5E5F0F0F0FCFCFCE3E3E3D7D7D7D0D0D09B9B9BC7C7C7C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8AE9E9EE0D2CFFFF7F3F0DDDA917979A08D8D97807EAB90
        89C5AFAFF5E4E1FDEBE4FEF3EFFFF5F1FFF4F0FFF4F0FFF2EFFEF1ECFEF2EDFF
        F3EEFFF9F5FDF8F7F0D9D8F0D8D7EBD3D1AD9998C7C7C7C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C89E9E9ED2D2D2F6F6F6DEDEDE7A7A7A8E8E8E8181819090
        90B0B0B0E4E4E4EBEBEBF2F2F2F5F5F5F3F3F3F4F4F4F2F2F2F0F0F0F2F2F2F3
        F3F3F9F9F9F8F8F8DADADAD9D9D9D4D4D4999999C7C7C7C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8BFB9B9B8A2A1FFF8F4FCEDE9F7E5E1A99392EADEDCE3D9DB456F
        C5073BB05062BDEBDDE1FFFCF3FFF5F1FFF9F4FEF4F0FEF5F1FFFCF8FFF7F3FF
        F4F0FFFCFBF9EEEDEED7D4F1DAD8EDD6D5B09999C6C6C6C8C8C8C7C7C7C8C8C8
        C8C8C8C8C8C8B9B9B9A3A3A3F7F7F7EDEDEDE5E5E5949494DEDEDED9D9D98686
        866464647D7D7DDFDFDFFAFAFAF5F5F5F8F8F8F4F4F4F4F4F4FBFBFBF7F7F7F3
        F3F3FCFCFCEEEEEED8D8D8DBDBDBD7D7D79A9A9AC6C6C6C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8AC9999E7DCDAFFFDF9FFF5F1FFF7F3BCA7A6D3C3BD90B6FF0A5E
        FA5885DC0F43C02B49BAD7D4E7FFFFFBE0D3CF9E8987A08C8AC1AFACF7EFEAFF
        FAF7FEFCFCF3E2E0F0D8D6F2DBD9F0D9D7B39B9AC5C4C4C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C89A9A9ADCDCDCFCFCFCF4F4F4F6F6F6A8A8A8C2C2C2C8C8C89494
        949B9B9B6E6E6E6E6E6ED8D8D8FEFEFED3D3D38A8A8A8D8D8DAFAFAFEEEEEEF9
        F9F9FCFCFCE2E2E2D8D8D8DCDCDCDADADA9D9D9DC4C4C4C8C8C8C8C8C8C8C8C8
        C8C8C8BAB1B1C3AFAEFFFDFAFFF8F5FFF7F4FFFCF9EBDFDB94817D2B83EA055C
        FEBBBBCCC8BFBE4C69B91037B6B6BBE5C6B1A7A08D8CB3A7A88F7C7DA38E8DFB
        F6F4FBF9F9F0DBD9F1DAD8F2DCDAF3DDDBB9A09FC3C0C0C8C8C8C8C8C8C8C8C8
        C8C8C8B1B1B1B0B0B0FCFCFCF8F8F8F6F6F6FCFCFCDFDFDF8181819F9F9F9494
        94BFBFBFBFBFBF808080656565C5C5C5B0B0B08D8D8DA8A8A87D7D7D8F8F8FF6
        F6F6F9F9F9DCDCDCDBDBDBDDDDDDDDDDDDA1A1A1C0C0C0C7C7C7C8C8C8C8C8C8
        C6C4C4AC9696F2EAE8FFFCFAFFF8F6FFF8F5FFF8F5FFFFFAB3A0A41C67B10072
        FF3572F6D9D2D6E6D5C77D8EC20836BB5F6AB2BBAEAEEEE5DFE3DDDC948080D6
        CECEFBF3F2F0D9D6F2DCDAF2DDDAF7E1DFC1A7A6BEB8B9C8C8C8C8C8C8C8C8C8
        C4C4C4979797E9E9E9FBFBFBF7F7F7F7F7F7F8F8F8FDFDFDA2A2A27A7A7A9E9E
        9E9B9B9BD3D3D3D3D3D39B9B9B6868687E7E7EAFAFAFE3E3E3DDDDDD818181CE
        CECEF3F3F3DADADADDDDDDDDDDDDE2E2E2A8A8A8B8B8B8C8C8C8C8C8C8C8C8C8
        B2A4A4D3C4C3FFFFFDFFF9F7FFF9F7FFF9F7FFF8F6FFFBF7FFFBF86D7CC80061
        D5006AFF3C78FADDDCEAFFEEDB94A6D60037CB2A43AAA9A5B9C0ADA68F7876EB
        E7E7F6E9E8F2DBD9F3DDDBF3DEDBF9E4E2CBB2B0B9B0B0C8C8C8C8C8C8C7C7C7
        A5A5A5C5C5C5FEFEFEF8F8F8F9F9F9F8F8F8F8F8F8FBFBFBFAFAFA9090908585
        859A9A9A9F9F9FDFDFDFEBEBEBB1B1B16F6F6F656565A9A9A9ACACAC787878E7
        E7E7EAEAEADCDCDCDEDEDEDFDFDFE5E5E5B3B3B3B1B1B1C8C8C8C8C8C8BFBABA
        B59F9EFCF9F7FFFCFAFFF9F8FFF9F8FFFAF8FFFAF7FFF9F7FFFDF9FCF7F75A6E
        C40062DA0069FF236EFCB1C6F5FFFAED75A1F4003FE20A31B1555C9FA08986B4
        A19EE0CBCAF9E5E1F8E3E1F4E0DDF9E5E2D5BEBCB4A7A7C8C8C8C8C8C8BABABA
        A0A0A0F9F9F9FCFCFCF9F9F9F9F9F9FAFAFAFAFAFAF8F8F8FCFCFCF7F7F78686
        868787879A9A9A9B9B9BD0D0D0F7F7F7B6B6B67D7D7D6161616F6F6F898989A1
        A1A1CCCCCCE5E5E5E3E3E3E0E0E0E5E5E5BFBFBFA7A7A7C7C7C7C7C7C7AC9797
        E9E1E0FFFFFFFFFAF9FFFBF9FFFBF9FFFBF9FFFAF9FFFAF8FFFAF8FFFFFAF6F2
        F6556DC40067DC0075FF0261FE4D90F94B8FF80068FF005EF40044D45675B7A2
        9395A68B84B69D9BDDC6C4F6E1DEFFECE9E5CFCDB1A1A1C8C8C8C6C6C6999999
        E1E1E1FFFFFFFAFAFAFBFBFBFBFBFBFAFAFAFAFAFAFAFAFAFAFAFAFDFDFDF3F3
        F38585858A8A8A9F9F9F969696ACACACABABAB99999991919178787886868694
        94948B8B8B9E9E9EC7C7C7E2E2E2ECECECD0D0D0A1A1A1C7C7C7B2A3A3D0C1C0
        FFFFFFFFFCFAFFFCFAFFFCFAFFFBFAFFFBFAFFFBFAFFFBFAFFFBF9FFFAF9FFFF
        FCF6F3F7556CC40065D80087FF006BFF006DFF0073FF0074FF0076FF005FED23
        5EC58591B3B0A09FA48F8EA89190C2ABA9D4BEBCAF9B9BC8C8C8A4A4A4C1C1C1
        FFFFFFFCFCFCFCFCFCFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFAFAFAFEFE
        FEF4F4F4858585888888A9A9A99B9B9B9C9C9C9F9F9FA0A0A0A0A0A08E8E8E7D
        7D7D989898A0A0A0909090929292ACACACBFBFBF9C9C9CC7C7C7AC9999D1C2C2
        FFFFFFFFFEFCFFFCFBFFFCFBFFFCFBFFFCFBFFFCFBFFFBFBFFFBFAFFFCFAFFFC
        FAFFFFFCF7F4F86173C70061D20097FF0080FF007BFF007DFF007EFF007EFF00
        55DE0045CB5D7DBABAB0AFB7ABAAB4A4A4A891919A8282C6C5C59A9A9AC2C2C2
        FFFFFFFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFBFBFBFBFCFCFCFBFB
        FBFEFEFEF4F4F48B8B8B838383B2B2B2A4A4A4A2A2A2A3A3A3A4A4A4A4A4A483
        83837474748B8B8BB0B0B0ACACACA4A4A4929292848484C5C5C5C7C6C6AC9A9A
        D2C4C4FFFFFFFFFFFEFFFDFCFFFDFCFFFCFCFFFCFCFFFDFCFFFDFCFFFCFBFFFC
        FBFFFCFBFFFFFDFEFAFC7984CD0058CA00A3FA0197FF0085FF0086FF008AFF01
        67E56C88C7B8B4BCC4BABAC7BDBDD0C4C3CAB7B6967675C2BDBDC6C6C69B9B9B
        C5C5C5FFFFFFFFFFFFFCFCFCFDFDFDFCFCFCFCFCFCFDFDFDFCFCFCFCFCFCFBFB
        FBFCFCFCFEFEFEFBFBFB9797977B7B7BB7B7B7B1B1B1A8A8A8A8A8A8AAAAAA8E
        8E8E989898B6B6B6BABABABDBDBDC4C4C4B8B8B8787878BDBDBDC8C8C8C7C6C6
        AD9D9DCBBCBBFEFEFEFFFFFFFFFEFDFFFEFDFFFEFDFFFDFDFFFDFDFFFDFDFFFD
        FCFFFDFCFFFDFCFFFFFDFFFFFE9B9FD70B4FC2009FF103B4FF029DFF008FFF4B
        97E5DAC7C1CBBFBCCCC2C2E0CECCCFCED25796BC587391BCB1B0C8C8C8C5C5C5
        9E9E9EBDBDBDFEFEFEFFFFFFFDFDFDFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFCFCFCFFFFFFFFFFFFADADAD747474B1B1B1C3C3C3B6B6B6ADADADA9
        A9A9C6C6C6BFBFBFC3C3C3CFCFCFCFCFCF9D9D9D797979B1B1B1C8C8C8C8C8C8
        C8C8C8B1A3A3BEABABF7F5F5FFFFFFFFFFFFFFFEFEFFFEFEFFFEFEFFFEFEFFFE
        FDFFFDFDFFFDFDFFFEFDFFFFFDFFFFFFC4C3E62852C00083E102C3FF00BAFF98
        CEEEE1CCC7CEC4C4F2E5E3BEDDE920C5F700C2FE0192D2829AB0C7C7C7C8C8C8
        C8C8C8A3A3A3ADADADF5F5F5FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFCBCBCB7575759B9B9BCECECEC8C8C8D3
        D3D3CCCCCCC4C4C4E6E6E6DEDEDECDCDCDCCCCCC9F9F9F9E9E9EC8C8C8C8C8C8
        C8C8C8C8C8C8B9B0B0AF9999E6DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFFFFFEFFFEFEFFFEFEFFFFFEFFFFFFEAE7F55B6FC80053C900A5F3B3
        EFFEF1DEDBE4D9D9ECF4F626D7F800DAFF00E2FF13DFFA2C8DC2C8C8C8C7C7C7
        C7C7C7C8C8C8B0B0B09A9A9ADFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFDFDFDFEFEFEFFFFFFFFFFFFEAEAEA898989797979B6B6B6EF
        EFEFDEDEDEDADADAF4F4F4D9D9D9DDDDDDE2E2E2DFDFDF979797C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C2BFBFAB9898C7B6B6F6F4F4FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACA9CF1E43AD80
        A0CFFFFBF6FCECEBBDE9F420E6FE06F3FE06F9FF4BFDFF3398C8C8C8C8C8C8C8
        C7C7C7C7C7C7C8C8C8BFBFBF999999B7B7B7F4F4F4FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2666666AA
        AAAAFAFAFAEDEDEDE9E9E9E6E6E6EFEFEFF3F3F3F6F6F6A1A1A1C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8B9AFAFAD9797D4C7C7F9F7F7FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBBBA19AA9979C8C
        7984C1B2B1FFFEFDC6F7FC74F8FE86FFFF8EFFFF75E7F33A8CBDC7C7C7C7C7C7
        C8C8C8C7C7C7C8C8C8C8C8C8C8C8C8AFAFAF989898C7C7C7F7F7F7FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBA1A1A19999997C
        7C7CB3B3B3FEFEFEF5F5F5F4F4F4F9F9F9FAFAFAE4E4E4969696C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C5C4C4B5A8A8AD9898C6B6B6ECE7
        E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE5E5A68E8EC7C6C6C7
        C7C79C8F8FA79292B6C1C396E2EFE2F8FD9CE1F0248EC496B0C2C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C7C7C7C8C8C8C4C4C4A9A9A9999999B6B6B6E7E7
        E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E58F8F8FC6C6C6C7
        C7C7909090939393C1C1C1E1E1E1F7F7F7E1E1E1999999B3B3B3C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C6C6C6BBB3B3AD9B
        9BB8A3A3D4C6C6EFEBEBFEFDFDFFFFFFFFFFFFFFFFFFD8CDCDAB9898C8C8C8C8
        C8C8C8C8C8BBB6B69F9A9E5592BB418DBF5192BD9FB5C3C8C8C8C8C8C8C8C8C8
        C8C8C8C7C7C7C8C8C8C8C8C8C7C7C7C8C8C8C7C7C7C8C8C8C5C5C5B3B3B39C9C
        9CA4A4A4C6C6C6EBEBEBFDFDFDFFFFFFFFFFFFFFFFFFCDCDCD999999C8C8C8C7
        C7C7C7C7C7B6B6B69B9B9B9A9A9A9797979A9A9AB6B6B6C7C7C7C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
        C8C3C0C0B6ABABAE9C9CB49F9FC7B6B6D9CECEEDE8E8C3B1B1B5A9A9C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7C7C7C8C8C8C8C8
        C8C0C0C0ABABAB9D9D9DA0A0A0B7B7B7CFCFCFE8E8E8B2B2B2A9A9A9C8C8C8C8
        C8C8C7C7C7C8C8C8C7C7C7C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C5C4C4BEB7B7B5A9A9AE9C9CA79090C4C1C1C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7C7C7
        C8C8C8C7C7C7C8C8C8C7C7C7C8C8C8C8C8C8C7C7C7C7C7C7C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C4C4C4B7B7B7AAAAAA9E9E9E929292C0C0C0C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7C7C7C7C7C7C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8C7C7C7C8C8C8C8C8
        C8C8C8C8C8C8C8C7C7C7C8C8C8C7C7C7C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
        C8C8C8C8C8C8C8C8C7C7C7C8C8C8C8C8C8C7C7C7C8C8C8C7C7C7}
      NumGlyphs = 2
      OnClick = btn_DeviceFtpGradeClick
    end
    object btn_Close: TSpeedButton
      Left = 376
      Top = 24
      Width = 145
      Height = 41
      Caption = #45803#44592
      Glyph.Data = {
        360C0000424D360C000000000000360400002800000040000000200000000100
        08000000000000080000610B0000610B00000001000000000000000000003300
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
        E8E8E8E8E8E8E8EEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8EEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8EEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8EEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E3E8ACE8E3E3E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8ACE8E3E3E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8EEE3E3ACACACE3EEEEEEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8EEE3E8ACACACEEE3EEEEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E3
        ACACACAC8282E282DEACACE8ACE3E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        ACACACDEDEE2DEDEDEACACE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EEE3E3
        ACE2E2828157575781E2DEACACEEE3EEEEE8E8E8E8E8E8E8E8E8E8E8E8EEE3E8
        ACE2ED8181818181EDE2DEACACE8E8EEE3E8E8E8E8E8E8E8E8E8E8E3ACACDE82
        E282828282DE825757EDE2E2DEACACEEE3E8E8E8E8E8E8E8E8E8E8E8ACDEDEDE
        E2ED8181E2ACE28181EDE2E2DEACE8E8E8E8E8E8E8E8E8E8E8E8E3E3AC825857
        81828282ADD782578181818181E2ACE3E8E8E8E8E8E8E8E8E8E8E8E8DE818181
        81818181ACD7AC818181818181E2DEE8E8E8E8E8E8E8E8E8E8E882E28282825E
        82838883E3D7E257DF7A807A8080DEEEE3E8E8E8E8E8E8E8E8E8ACDEED81EDE2
        E2E2E2E2ACD7AC818181818181EDACE8E8E8E8E8E8E8E8E8E8E8575758828889
        8989ADADE3D7DE57EC7979797979A5EEE8E8E8E8E8E8E8E8E8E8DE818181E2E2
        DEDEDEACE3D7AC81818181818181DEEEEEE8E8E8E8E8E8E8E8E8575782828989
        898989ADE3D78257DFA380A37F9DAAEEEEEBE3E8E8E8E8E8E8E8DE81EDEDE2DE
        DEDEDEACE3D7AC8181E2EDE28181ACD7E8ACE8E8E8E8E8E8E8E857575E898989
        8989ADADE3D7DE5781AAAAAAA3A2CFD7E3ADE3E8E8E8E8E8E8E8DE81EDDEDEDE
        DEDEACACE3D7AC81EDDEDEDEE281ACD7E3ACACE8E8E8E8E8E8E8575782898989
        898989ADE3D7DE5780AAAACEA9A2ABE3895E89E8E8E8E8E8E8E8DE81E2DEDEDE
        DEDEDEACE3D7AC81E2DEDEDEE281DEE3ACE2ACE8E8E8E8E8E8E857575E898989
        8989ADADE3D7825781AAAACEA4A3A5AD5F105EE8E8E8E8E8E8E8DE81EDDEDEDE
        DEDEACACE3D7AC81E2DEDEACE281E2ACE281DEE8E8E8E8E8E8E8575782898982
        895E89ADE3D7DE5781AACFCEAAA4825F3A1082E8E8E8E8E8E8E8DE81EDDEE2E2
        E2EDDEACE3D7AC81EDACACACDE81E2E28181DEE8E8E8E8E8E8E857575E898282
        5E5E82ADE3D7DE5781ABABCFABE25E1111105EE8E8E8E8E8E8E8DE81E2DEE281
        8181E2ACE3D7AC81E2ACACACDEE281818181DEE8E8E8E8E8E8E857578289825E
        82ADE6ADE3D7825781ABABD0825E341010103A5E825E5E5EACE8DE81EDDE81DF
        81ACACACE3D7AC81E2ACACDEE2ED81818181EDDEDEDEDEDEACE857575E898257
        DED7E3ADE3D7DE5781ABABDE5E10101010101010101010105EE8DE81E2DE8156
        E2D7E3ACE3D7AC81E2ACDEDEE28181818181818181818181ABE857578289825E
        82E2ADADE3D7825781ACE25E341010101010101010101010E5E8DE81EDDE81DF
        81E2DEACE3D7AC81E2ACACE2818181818181818181818181DEE857575E898282
        575782ADE3D7DE57E2EE5E1010101010101010101010101082E8DE81E2DEE281
        DF5681ACE3D7AC81DEE3DE81818181818181818181818181DEE8575782898989
        828283ADE3D7DE5782E888581610101010101010101010105EE8DE81EDDEE2E2
        8181EDACE3D7AC81DEE3DE81818181818181818181818181DEE857575E898989
        898989ADE3D78257E2E8DE825810101010101010101010105EEEDE81E2DEDEDE
        DEDEDEACE3D7AC81DEE3DE81818181818181818181818181DEE8575782898989
        8989ADADE3D7DE5782E8ACAC5E5E341110103A5E5E825EE5ACE8DE81EDDEDEDE
        DEDEACACE3D7AC81E2ACACDEE28181818181EDDEDEDEDEE2ACE857575E898989
        898989ADE3D7DE5781ACE3E3EB82341110105EEEEEE8EEE8E8E8DE81E2DEDEDE
        DEDEDEACE3D7AC81E2ACE3E8DE8181818181DEE8E8E8E8E8E8E8575782898989
        898989EBE3D7825781DEACE8ACE2E55F35105EEEE8E8E8E8E8E8DE81EDDEDEDE
        DEDEDEACE3D7AC81E2ACACEEACE2E2ED8181DEE8E8E8E8E8E8E857575E898989
        8989ADADE3D7DE5781ABACD6ACABDE893A1082E8E8E8E8E8E8E8DE81EDDEDEDE
        DEDEACACE3D7AC81E2ACE3E3ACACACDEE281DEE8E8E8E8E8E8E8575782828989
        898989ADE3D7DE5781ACACD6ABA4ABE6893A89E8E8E8E8E8E8E8DE8181E2E2DE
        DEDEDEACE3D7AC81E2ACACE3ACE2DEACDEEDACE8E8E8E8E8E8E8575757828389
        8989ADADE3D7825782ACE8E8ABA3ABE8AD89E6E8E8E8E8E8E8E8DE818181E2DE
        DEDEACACE3D7AC81E2ACACEEDE81DEE8ACDEACE8E8E8E8E8E8E8E2E282DE88E5
        82898889E3D7DE5780A4AAAAC7A2AAE8E3ACE3E8E8E8E8E8E8E8ACDEE2E2EDE2
        EDE2E2DEE3D7AC8181E2DEDEE281DEE8E8ACE8E8E8E8E8E8E8E8E8E8ACDE825E
        82828288E3D7825780A2A2A2A2A2AAD0EEE8E8E8E8E8E8E8E8E8E8E8ACDEE281
        8181E2DEE3D7AC81818181818181DEE8E8E8E8E8E8E8E8E8E8E8E8E8E8ACAC88
        82DE828882DE825780A4CEAAAAC8ABEEE8E8E8E8E8E8E8E8E8E8E8E8E8ACDEDE
        E2E2E2EDDEACE281E2DEDEDEDEDEACE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E3ACDE825E575757E2E3E8E8E8EEEEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8ACE28181818181DEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
      OnClick = btn_CloseClick
    end
  end
  object AdoQuery: TADOQuery
    Connection = DataModule1.ADOConnection
    Parameters = <>
    Left = 40
    Top = 360
  end
end
