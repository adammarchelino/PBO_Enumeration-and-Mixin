import 'warna-resistor.dart';

class Resistor {
  WarnaResistor _gelang1;
  WarnaResistor _gelang2;
  WarnaResistor _gelang3;
  WarnaResistor _gelang4;

  Resistor(this._gelang1, this._gelang2, this._gelang3, this._gelang4);

  double get hambatan {
    int puluhan = this._gelang1.puluhan;
    int satuan = this._gelang2.satuan;
    double pengali = this._gelang3.pengali;

    return (puluhan + satuan) * pengali;
  }

  double get toleransi => this._gelang4.toleransi;

  void display() {
    print(
      "Resistor dengan warna gelang ${this._gelang1.warna}, ${this._gelang2.warna}, ${this._gelang3.warna}, & ${this._gelang4.warna} memiliki hambatan sebesar ${this.hambatan} ohm ± ${this.toleransi}",
    );
  }
}
