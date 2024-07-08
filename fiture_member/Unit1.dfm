object Form1: TForm1
  Left = 531
  Top = 207
  Width = 432
  Height = 445
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 16
    Width = 25
    Height = 18
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 16
    Top = 48
    Width = 40
    Height = 18
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 16
    Top = 80
    Width = 33
    Height = 18
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 16
    Top = 112
    Width = 42
    Height = 18
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 16
    Top = 144
    Width = 56
    Height = 18
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 16
    Top = 176
    Width = 58
    Height = 18
    Caption = 'MEMBER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 168
    Top = 176
    Width = 69
    Height = 18
    Caption = 'DISKON  :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 248
    Top = 176
    Width = 129
    Height = 18
    Caption = 'TERISI OTOMATIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 16
    Top = 376
    Width = 121
    Height = 18
    Caption = 'MASUKKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 96
    Top = 16
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 96
    Top = 48
    Width = 313
    Height = 21
    TabOrder = 1
    OnKeyPress = edt2KeyPress
  end
  object edt3: TEdit
    Left = 96
    Top = 80
    Width = 313
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 96
    Top = 112
    Width = 313
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 96
    Top = 144
    Width = 313
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 96
    Top = 176
    Width = 65
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = cbb1Change
  end
  object btn1: TButton
    Left = 16
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 96
    Top = 216
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 176
    Top = 216
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 256
    Top = 216
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 336
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 248
    Width = 393
    Height = 120
    DataSource = DataModule2.tbl_kustomer
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt6: TEdit
    Left = 152
    Top = 376
    Width = 177
    Height = 21
    TabOrder = 12
    OnChange = edt6Change
  end
  object btn6: TButton
    Left = 336
    Top = 376
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 13
    OnClick = btn6Click
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45481.765517291700000000
    ReportOptions.LastChange = 45481.765517291700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Datasets = <
      item
        DataSet = frxdbdtsKustomer
        DataSetName = 'frxdbdtsKustomer'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 287.244280000000000000
          Top = 18.897650000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA KUSTOMER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 98.267780000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 113.385900000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 226.771800000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TELP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 491.338900000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 680.315400000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MEMBER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtsKustomer
        DataSetName = 'frxdbdtsKustomer'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          DataField = 'id'
          DataSet = frxdbdtsKustomer
          DataSetName = 'frxdbdtsKustomer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtsKustomer."id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 113.385900000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DataField = 'nik'
          DataSet = frxdbdtsKustomer
          DataSetName = 'frxdbdtsKustomer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtsKustomer."nik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 226.771800000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          DataField = 'nama'
          DataSet = frxdbdtsKustomer
          DataSetName = 'frxdbdtsKustomer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtsKustomer."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DataField = 'telp'
          DataSet = frxdbdtsKustomer
          DataSetName = 'frxdbdtsKustomer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtsKustomer."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 491.338900000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          DataField = 'alamat'
          DataSet = frxdbdtsKustomer
          DataSetName = 'frxdbdtsKustomer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtsKustomer."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 680.315400000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          DataField = 'member'
          DataSet = frxdbdtsKustomer
          DataSetName = 'frxdbdtsKustomer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtsKustomer."member"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbdtsKustomer: TfrxDBDataset
    UserName = 'frxdbdtsKustomer'
    CloseDataSource = False
    DataSet = DataModule2.qry_kustomer
    Left = 64
    Top = 48
  end
end
