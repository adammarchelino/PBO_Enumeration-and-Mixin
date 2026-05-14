enum WarnaResistor {
  Hitam('hitam', 0, 0, 1, 0),
  Cokelat('cokelat', 10, 1, 10, 0),
  Merah('merah', 20, 2, 100, 0),
  Oranye('oranye', 30, 3, 1000, 0),
  Kuning('kuning', 40, 4, 10000, 0),
  Hijau('hijau', 50, 5, 100000, 0),
  Biru('biru', 60, 6, 1000000, 0),
  Ungu('ungu', 70, 7, 10000000, 0),
  AbuAbu('abu-abu', 80, 8, 100000000, 0),
  Putih('putih', 90, 9, 1000000000, 0),
  Emas('emas', 0, 0, 0.1, 0.05),
  Perak('perak', 0, 0, 0.01, 0.1),
  TidakBerwarna('tidak berwarna', 0, 0, 0, 0.2);

  final String warna;
  final int puluhan;
  final int satuan;
  final double pengali;
  final double toleransi;

  const WarnaResistor(
    this.warna,
    this.puluhan,
    this.satuan,
    this.pengali,
    this.toleransi,
  );
}
