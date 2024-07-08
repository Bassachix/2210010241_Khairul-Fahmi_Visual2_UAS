unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    lbl7: TLabel;
    lbl8: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    lbl9: TLabel;
    edt6: TEdit;
    btn6: TButton;
    frxrprt1: TfrxReport;
    frxdbdtsKustomer: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);

    procedure posisiAwalKustomer;
    procedure bersihKustomer;
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure edt6Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.bersihKustomer;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  cbb1.Text := '';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;
  cbb1.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := True;
end;

procedure TForm1.posisiAwalKustomer;
begin
  bersihKustomer;
  edt1.Enabled := False;
  edt2.Enabled := False;
  edt3.Enabled := False;
  edt4.Enabled := False;
  edt5.Enabled := False;
  cbb1.Enabled := False;

  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := False;

  lbl8.Caption := '';
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  posisiAwalKustomer;

  cbb1.Items.Add('Yes');
  cbb1.Items.Add('No');

  lbl8.Caption := '';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  posisiAwalKustomer;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then // Validasi
    begin
      ShowMessage('NIK Tidak Boleh Kosong!');
    end
  else
    if DataModule2.qry_kustomer.Locate('nik', edt1.Text,[])then
      begin
        ShowMessage('NIK'+edt1.Text+' Sudah Ada di Dalam Sistem');
      end
    else
      begin // Simpan
        with DataModule2.qry_kustomer do
          begin
            SQL.Clear;
            SQL.Add('insert into kustomer values(null, "'+edt1.Text+'", "'+edt2.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'", "'+cbb1.Text+'")');
            ExecSQL;

            SQL.Clear;
            SQL.Add('select * from kustomer');
            Open;
          end;
          ShowMessage('Data Berhasil Disimpan!');
      end;
  posisiAwalKustomer;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if edt1.Text = '' then // Validasi
    begin
      ShowMessage('NIK Tidak Boleh Kosong!');
    end
  else
    begin // Ubah
      with DataModule2.qry_kustomer do
        begin
          SQL.Clear;
          SQL.Add('update kustomer set nik = "'+edt1.Text+'", nama = "'+edt2.Text+'", telp = "'+edt3.Text+'", alamat = "'+edt4.Text+'", member = "'+cbb1.Text+'" where id = "'+a+'"');
          ExecSQL;

          SQL.Clear;
          SQL.Add('select * from kustomer');
          Open;
        end;
        ShowMessage('Data Berhasil Diubah!');
        end;
  posisiAwalKustomer;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data Ini', mtWarning, [mbYes,mbNo], 0) = mrYes then
    begin  // Hapus
      with DataModule2.qry_kustomer do
        begin
          SQL.Clear;
          SQL.Add('delete from kustomer where id = "'+a+'"');
          ExecSQL;

          SQL.Clear;
          SQL.Add('select * from kustomer');
          Open;
        end;
        ShowMessage('Data Berhasil Dihapus!');
    end
  else
    begin
      ShowMessage('Data Batal Dihapus');
    end;
  posisiAwalKustomer;
end;

procedure TForm1.edt6Change(Sender: TObject);
begin
  with DataModule2.qry_kustomer do
    begin
      // Periksa apakah tabel kosong
      SQL.Clear;
      SQL.Add('select count(*) as jumlah from kustomer');
      Open;
      if Fields[0].AsInteger = 0 then
        begin
          ShowMessage('Database kosong');
          Close;
          Exit;
        end;

      // Jika tabel tidak kosong, jalankan query seperti biasa
      SQL.Clear;
      SQL.Add('select * from kustomer where nama like "%'+edt3.Text+'%"');
      Open;
    end;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
  if cbb1.Text = '' then
    lbl8.Caption := ''
  else
    if cbb1.Text = 'Yes' then
      lbl8.Caption := '10%'
    else
      if cbb1.Text = 'No' then
        lbl8.Caption := '5%';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  frxrprt1.ShowReport();
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule2.qry_kustomer.Fields[1].AsString;
  edt2.Text := DataModule2.qry_kustomer.Fields[2].AsString;
  edt3.Text := DataModule2.qry_kustomer.Fields[3].AsString;
  edt4.Text := DataModule2.qry_kustomer.Fields[4].AsString;
  edt5.Text := DataModule2.qry_kustomer.Fields[5].AsString;
  cbb1.Text := DataModule2.qry_kustomer.Fields[6].AsString;
  a := DataModule2.qry_kustomer.Fields[0].AsString;

  edt2.Text := UpperCase(edt2.Text);

  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;
  cbb1.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
end;

procedure TForm1.edt2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

end.
