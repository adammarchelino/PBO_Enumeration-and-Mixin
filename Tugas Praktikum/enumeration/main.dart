import 'pesanan.dart';
import 'status_pesanan.dart';

void main() {
  Pesanan p1 = Pesanan("Laptop gaming", statusPesanan.pending);
  p1.tampilInfo();

  p1.updateStatus(statusPesanan.diproses);
  p1.tampilInfo();

  p1.updateStatus(statusPesanan.dikirim);
  p1.tampilInfo();
}
