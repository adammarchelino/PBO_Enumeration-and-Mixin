import 'eksplorasi.dart';
import 'planet.dart';

void main() {
  Eksplorasi e1 = Eksplorasi(Planet.bumi, 70);
  e1.tampilInfo();

  Eksplorasi e2 = Eksplorasi(Planet.mars, 70);
  e2.tampilInfo();
  Eksplorasi e3 = Eksplorasi(Planet.venus, 70);
  e3.tampilInfo();
  Eksplorasi e4 = Eksplorasi(Planet.merkurius, 70);
  e4.tampilInfo();
}
