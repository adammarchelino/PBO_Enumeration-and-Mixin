import 'status_pesanan.dart';

class Pesanan {
  String namaProduk;
  statusPesanan status;

  Pesanan(this.namaProduk, this.status);

  void updateStatus(statusPesanan statusBaru) {
    status = statusBaru;
  }

  void tampilInfo() {
    print('Pesanan: $namaProduk | Status: $status');
  }
}
