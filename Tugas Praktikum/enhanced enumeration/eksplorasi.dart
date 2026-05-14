import 'planet.dart';

class Eksplorasi {
  Planet tujuan;
  double massaKg;

  Eksplorasi(this.tujuan, this.massaKg);

  double get beratDiPlanet => massaKg * tujuan.gravitasi;

  void tampilInfo() {
    print("Planet tujuan: ${tujuan.nama}");
    print('Jarak dari Matahari : ${tujuan.jarakAU} AU');
    print('Berat objek di sana : ${beratDiPlanet.toStringAsFixed(2)} N');
    print('');
  }
}
