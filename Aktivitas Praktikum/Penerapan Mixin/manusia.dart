import 'mixin-aktivitas-umum.dart';

class Manusia with bisaBerjalan, bisaBerjalan, BisaBerlari, BisaBerenang {
  String? _nama;

  Manusia(this._nama);

  void identitas() {
    print("Makhluk manusia ini bernama ${this._nama}");
  }
}
