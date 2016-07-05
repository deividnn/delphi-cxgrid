object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 396
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 8
    Top = 80
    Width = 601
    Height = 313
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Blue'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dts_cliente
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView1id_cidade: TcxGridDBColumn
        DataBinding.FieldName = 'id_cidade'
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        DataBinding.FieldName = 'descricao'
      end
      object cxGrid1DBTableView1idade: TcxGridDBColumn
        DataBinding.FieldName = 'idade'
      end
      object cxGrid1DBTableView1id_produto: TcxGridDBColumn
        DataBinding.FieldName = 'id_produto'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxMemo1: TcxMemo
    Left = 8
    Top = 0
    Lines.Strings = (
      'customize>retrive fields;'
      'cxgriddbtable>datacontroller>datasource;'
      'cxgriddbtable>optionscustomize>columnsquickcustomization;'
      'cxgriddbtable>optionsdata>editing e inserting'
      'cxgrid>lookandfeel>natistyle=false e skinname')
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Blue'
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Blue'
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Blue'
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Blue'
    TabOrder = 1
    Height = 74
    Width = 598
  end
  object conexao: TSQLConnection
    ConnectionName = 'Devart MySQL Direct'
    DriverName = 'DevartMySQLDirect'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'HostName=localhost'
      'DataBase=delphi'
      'DriverName=DevartMySQLDirect'
      'User_Name=deivid'
      'Password=6291'
      'FetchAll=True'
      'EnableBoolean=False'
      'IPVersion=IPv4')
    Connected = True
    Left = 296
    Top = 136
  end
  object qry_cliente: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cliente')
    SQLConnection = conexao
    Left = 392
    Top = 136
    object qry_clienteid: TIntegerField
      FieldName = 'id'
    end
    object qry_clienteid_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
    object qry_clientedescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object qry_clienteidade: TIntegerField
      FieldName = 'idade'
    end
    object qry_clienteid_produto: TIntegerField
      FieldName = 'id_produto'
    end
  end
  object dsp_cliente: TDataSetProvider
    DataSet = qry_cliente
    Left = 288
    Top = 200
  end
  object cds_cliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_cliente'
    Left = 384
    Top = 200
    object cds_clienteid: TIntegerField
      FieldName = 'id'
    end
    object cds_clienteid_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
    object cds_clientedescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cds_clienteidade: TIntegerField
      FieldName = 'idade'
    end
    object cds_clienteid_produto: TIntegerField
      FieldName = 'id_produto'
    end
  end
  object dts_cliente: TDataSource
    DataSet = cds_cliente
    Left = 336
    Top = 264
  end
end
