import 'sivitas_akademika.dart';
import 'mixin_akademik.dart';

class Tendik extends SivitasAkademika
    with
        BisaMelayaniAdministrasi,
        BisaMengikutiOrganisasi,
        BisaAksesPerpustakaan {
  String nama;
  String nip;

  Tendik(this.nama, this.nip);

  @override
  void identitas() {
    print('Tendik: $nama | NIP: $nip');
  }
}
