import 'gender.dart';

class Manusia {
  String? nama;
  Gender? jenisKelamin;

  Manusia(String nama, Gender jenisKelamin) {
    this.nama = nama;
    this.jenisKelamin = jenisKelamin;
  }

  Manusia.pria(String nama) {
    this.nama = nama;
    this.jenisKelamin = Gender.Pria;
  }

  Manusia.wanita(String nama) {
    this.nama = nama;
    this.jenisKelamin = Gender.Wanita;
  }
  String panggilan() {
    return this.jenisKelamin == Gender.Pria ? 'Pak' : 'Bu';
  }

  void berjalan() {
    print("${this.panggilan()} ${this.nama} sedang berjalan");
  }
  void berlari() {
    print("${this.panggilan()} ${this.nama} sedang berlari");
  }
}
