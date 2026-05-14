import 'resistor.dart';
import 'warna-resistor.dart';

void main() {
  Resistor r1 = Resistor(
    WarnaResistor.Biru,
    WarnaResistor.Hijau,
    WarnaResistor.Merah,
    WarnaResistor.Emas,
  );
  Resistor r2 = Resistor(
    WarnaResistor.Ungu,
    WarnaResistor.Hitam,
    WarnaResistor.Hijau,
    WarnaResistor.TidakBerwarna,
  );

  r1.display();
  r2.display();
}
