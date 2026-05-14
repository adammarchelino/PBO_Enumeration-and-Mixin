import 'mixin-aktivitas-umum.dart';

class Kucing with bisaBerjalan, BisaBerlari {
  String? _ras;

  Kucing(this._ras);

  void identifikasi() {
    print("Makhluk ini merupakan kucing dengan ras ${_ras}");
  }
}
