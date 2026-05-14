import 'sivitas_akademika.dart';
import 'mixin_akademik.dart';

class Dosen extends SivitasAkademika
    with
        BisaMengajar,
        BisaMeneliti,
        BisaMengikutiOrganisasi,
        BisaAksesPerpustakaan {
  String nama;
  String nip;

  Dosen(this.nama, this.nip);

  @override
  void identitas() {
    print('Dosen: $nama | NIP: $nip');
  }
}
