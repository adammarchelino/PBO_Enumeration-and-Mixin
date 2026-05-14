import 'mahasiswa.dart';
import 'dosen.dart';
import 'tendik.dart';

void main() {
  Mahasiswa mhs = Mahasiswa("Adam", "362558302044");
  mhs.identitas();
  mhs.ikutiKuliah("Pemrograman berorientasi Objek");
  mhs.topikPenelitian = 'Aplikasi Mobile Berbasis Flutter';
  mhs.teliti();
  mhs.ikutiOrganisasi("UKM Olahraga");
  mhs.aksesPerpus('Clean Code - Robert C. Martin');

  print('');

  Dosen dosen = Dosen('Pak Budi', '198501012010011001');
  dosen.identitas();
  dosen.ajarKuliah('Pemrograman Berorientasi Objek');
  dosen.topikPenelitian = 'Sistem Informasi Berbasis IoT';
  dosen.teliti();
  dosen.ikutiOrganisasi('Senat Akademik');
  dosen.aksesPerpus('Design Patterns - Gang of Four');

  print('');

  Tendik tendik = Tendik('Bu Sari', '199001012015012001');
  tendik.identitas();
  tendik.layaniAdministrasi('Legalisir Ijazah');
  tendik.ikutiOrganisasi('Dharma Wanita');
  tendik.aksesPerpus('Panduan Administrasi Akademik');
}
