object FDM: TFDM
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 292
  Width = 224
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\'#1050#1091#1088#1089#1086#1074#1072' ('#1052#1080#1094#1072#1081')\' +
      'Database1.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 88
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 152
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 120
    Top = 176
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1056#1077#1081#1089#1099
    Left = 88
    Top = 104
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1055#1072#1089#1089#1072#1078#1080#1088#1099
    Left = 32
    Top = 176
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 104
  end
end
