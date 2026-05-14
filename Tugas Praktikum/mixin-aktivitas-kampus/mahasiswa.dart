import 'sivitas_akademika.dart';
import 'mixin_akademik.dart';

class Mahasiswa extends SivitasAkademika
    with
        BisaMengikutiKuliah,
        BisaMeneliti,
        BisaMengikutiOrganisasi,
        BisaAksesPerpustakaan {
  String nama;
  String nim;

  Mahasiswa(this.nama, this.nim);

  @override
  void identitas() {
    print('Mahasiswa: $nama | NIM: $nim');
  }
}
