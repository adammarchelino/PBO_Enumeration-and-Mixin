import 'sivitas_akademika.dart';

mixin BisaMengikutiKuliah on SivitasAkademika {
  void ikutiKuliah(String mataKuliah) {
    print('Mengikuti kuliah: $mataKuliah');
  }
}

mixin BisaMengajar on SivitasAkademika {
  void ajarKuliah(String mataKuliah) {
    print('Mengajar mata kuliah: $mataKuliah');
  }
}

mixin BisaMeneliti on SivitasAkademika {
  String topikPenelitian = '';
  void teliti() {
    print('Melakukan penelitian: $topikPenelitian');
  }
}

mixin BisaMelayaniAdministrasi on SivitasAkademika {
  void layaniAdministrasi(String jenis) {
    print('Melayani administrasi: $jenis');
  }
}

mixin BisaMengikutiOrganisasi on SivitasAkademika {
  void ikutiOrganisasi(String namaOrganisasi) {
    print('Bergabung dalam organisasi: $namaOrganisasi');
  }
}

mixin BisaAksesPerpustakaan on SivitasAkademika {
  void aksesPerpus(String judulBuku) {
    print('Meminjam buku: $judulBuku');
  }
}
