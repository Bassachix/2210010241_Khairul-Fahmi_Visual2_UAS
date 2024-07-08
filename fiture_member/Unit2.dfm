object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 129
  Height = 177
  Width = 176
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Project Delphi\fiture_member\libmysql.dll'
    Left = 24
    Top = 24
  end
  object qry_kustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM kustomer')
    Params = <>
    Left = 96
    Top = 24
  end
  object tbl_kustomer: TDataSource
    DataSet = qry_kustomer
    Left = 96
    Top = 80
  end
end
