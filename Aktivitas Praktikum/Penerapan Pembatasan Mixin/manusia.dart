import 'makhluk-hidup.dart';
import 'mixin-aktivitas-umum.dart';

class Manusia extends MakhlukHidup
    with bisaBerjalan, BisaBerlari, BisaBerenang {
  String? _nama;

  Manusia(this._nama);

  @override
  void identitas() {
    print("Makhluk Manusia ini bernama ${this._nama}");
  }
}
