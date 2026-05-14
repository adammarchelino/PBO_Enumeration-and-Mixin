import 'manusia.dart';
import 'kucing.dart';
import 'burung.dart';
import 'ikan.dart';

void main() {
  Manusia manusia = Manusia("Fulan");
  Kucing kucing = Kucing("Persian");
  Burung burung = Burung();
  Ikan ikan = Ikan();

  manusia.identitas();
  manusia.kecepatan = 13;
  manusia.berjalan();
  manusia.berlari();
  manusia.berenang();
  print('');

  kucing.identifikasi();
  kucing.kecepatan = 48;
  kucing.berjalan();
  kucing.berlari();
  print('');

  burung.info();
  burung.berjalan();
  burung.terbang();

  ikan.informasi();
  ikan.berenang();
}
