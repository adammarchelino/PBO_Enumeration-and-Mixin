# 📦 PBO - Enumeration dan Mixin

Repositori ini berisi implementasi praktikum **Pemrograman Berorientasi Objek** pada topik **Enumeration dan Mixin** menggunakan bahasa pemrograman **Dart**.

---

## 📁 Struktur Folder

```
PBO_Enumeration-and-Mixin/
├── Aktivitas Praktikum/
│   ├── Enumeration pada Gender Manusia/
│   │   ├── gender.dart
│   │   ├── manusia.dart
│   │   └── main.dart
│   ├── Enumeration pada Komponen Resistor/
│   │   ├── warna-resistor.dart
│   │   ├── resistor.dart
│   │   └── main.dart
│   ├── Penerapan Mixin/
│   │   ├── mixin-aktivitas-umum.dart
│   │   ├── manusia.dart
│   │   ├── kucing.dart
│   │   ├── burung.dart
│   │   ├── ikan.dart
│   │   └── main.dart
│   └── Penerapan Pembatasan Mixin/
│       ├── makhluk-hidup.dart
│       ├── mixin-aktivitas-umum.dart
│       ├── manusia.dart
│       └── main.dart
└── Tugas Praktikum/
    ├── enumeration/
    │   ├── status_pesanan.dart
    │   ├── pesanan.dart
    │   └── main.dart
    ├── enhanced enumeration/
    │   ├── planet.dart
    │   ├── eksplorasi.dart
    │   └── main.dart
    └── mixin-aktivitas-kampus/
        ├── sivitas_akademika.dart
        ├── mixin_akademik.dart
        ├── mahasiswa.dart
        ├── dosen.dart
        ├── tendik.dart
        └── main.dart
```

---

## 🔬 Aktivitas Praktikum

### 1. Enumeration pada Gender Manusia

#### Pembahasan

Aktivitas ini mengimplementasikan enum sederhana bernama `Gender` dengan dua konstanta: `Pria` dan `Wanita`. Enum tersebut digunakan sebagai tipe data properti `jenisKelamin` pada class `Manusia`, sehingga nilai yang dapat diterima hanya terbatas pada dua konstanta tersebut.

Class `Manusia` memiliki tiga konstruktor: konstruktor utama yang menerima nama dan gender secara eksplisit, serta dua named constructor `Manusia.pria()` dan `Manusia.wanita()`. Method `panggilan()` memanfaatkan nilai enum untuk menentukan sapaan yang sesuai secara otomatis menggunakan ternary operator. Pada `main.dart`, objek `Adam` dibuat menggunakan konstruktor utama dengan `Gender.Pria`, kemudian memanggil method `berjalan()` dan `berlari()`.

#### Analisa

Penggunaan enum `Gender` memastikan nilai `jenisKelamin` selalu valid dan konsisten. Tanpa enum, properti tersebut bisa diisi sembarang string seperti `"L"`, `"laki-laki"`, atau `"pria"` yang berpotensi menimbulkan bug. Dengan enum, compiler langsung mendeteksi jika nilai yang diberikan tidak terdaftar.

Named constructor `Manusia.pria()` dan `Manusia.wanita()` menunjukkan pola desain yang baik karena menyembunyikan detail enum dari sisi pemanggil, sehingga kode di `main.dart` menjadi lebih bersih dan mudah dibaca.

---

### 2. Enumeration pada Komponen Resistor

#### Pembahasan

Aktivitas ini menggunakan **enhanced enumeration** `WarnaResistor` untuk merepresentasikan kode warna gelang resistor. Setiap anggota enum menyimpan lima nilai sekaligus: `warna` (String), `puluhan` (int), `satuan` (int), `pengali` (double), dan `toleransi` (double), yang didefinisikan melalui konstruktor `const`.

Class `Resistor` menerima empat parameter bertipe `WarnaResistor` yang merepresentasikan empat gelang. Nilai hambatan dihitung melalui getter `hambatan` dengan rumus `(puluhan + satuan) * pengali`, sementara toleransi diambil langsung dari gelang keempat. Pada `main.dart`, dua resistor dibuat sebagai berikut:
- `r1`: Biru-Hijau-Merah-Emas
- `r2`: Ungu-Hitam-Hijau-TidakBerwarna

#### Analisa

Enhanced enumeration sangat efektif pada kasus ini karena setiap anggota enum menjadi satu sumber data yang lengkap dan konsisten. Tanpa enhanced enum, data ini kemungkinan akan disimpan dalam `Map` atau array terpisah yang lebih rentan terhadap kesalahan indeks.

Perlu dicatat bahwa anggota seperti `Emas`, `Perak`, dan `TidakBerwarna` memiliki nilai `puluhan` dan `satuan` bernilai `0` karena keduanya tidak digunakan untuk gelang ke-1 dan ke-2, melainkan hanya untuk gelang ke-3 dan ke-4. Pemilihan tipe `double` untuk `pengali` juga penting karena nilai seperti `0.1` (Emas) dan `0.01` (Perak) tidak dapat direpresentasikan oleh `int`.

---

### 3. Penerapan Mixin

#### Pembahasan

Aktivitas ini mendefinisikan empat mixin di `mixin-aktivitas-umum.dart`: `bisaBerjalan`, `BisaBerlari`, `BisaTerbang`, dan `BisaBerenang`. Masing-masing mixin menyediakan satu kemampuan yang dapat digunakan oleh class berbeda sesuai kebutuhannya.

Distribusi mixin pada setiap class:
- `Manusia` menggunakan `bisaBerjalan`, `BisaBerlari`, `BisaBerenang`
- `Kucing` menggunakan `bisaBerjalan`, `BisaBerlari`
- `Burung` menggunakan `bisaBerjalan`, `BisaTerbang`
- `Ikan` menggunakan `BisaBerenang`

#### Analisa

Aktivitas ini menunjukkan fleksibilitas mixin dibandingkan inheritance. Class-class di atas tidak memiliki hierarki pewarisan yang sama, namun bisa berbagi fungsionalitas tertentu dengan mudah melalui mixin.

Terdapat dua hal yang perlu diperhatikan pada kode ini. Pertama, pada `manusia.dart` mixin `bisaBerjalan` didaftarkan dua kali (`with bisaBerjalan, bisaBerjalan, ...`). Dart tidak mengizinkan hal ini dan akan menghasilkan error; baris duplikat tersebut perlu dihapus. Kedua, terdapat inkonsistensi penamaan antara `bisaBerjalan` (huruf kecil) dan mixin lainnya yang menggunakan `UpperCamelCase`. Konvensi Dart mewajibkan nama class dan mixin menggunakan `UpperCamelCase`, sehingga `bisaBerjalan` idealnya ditulis `BisaBerjalan`.

---

### 4. Penerapan Pembatasan Mixin

#### Pembahasan

Aktivitas ini memperkenalkan keyword `on` untuk membatasi penggunaan mixin. Abstract class `MakhlukHidup` dideklarasikan dengan satu method abstrak `identitas()`. Semua mixin di `mixin-aktivitas-umum.dart` ditambahkan constraint `on MakhlukHidup`, artinya mixin tersebut hanya dapat digunakan oleh class yang meng-extend `MakhlukHidup`.

Class `Manusia` meng-extend `MakhlukHidup` dan meng-override method `identitas()`, kemudian menggunakan mixin `bisaBerjalan`, `BisaBerlari`, dan `BisaBerenang`. Pada `main.dart`, objek `Manusia` dibuat lalu method `berjalan()` dan `identitas()` dipanggil.

#### Analisa

Pembatasan mixin dengan `on MakhlukHidup` memberikan jaminan bahwa mixin hanya diterapkan pada konteks yang semantis benar. Jika ada class yang bukan turunan `MakhlukHidup` mencoba menggunakannya, compiler langsung mengeluarkan error sebelum program dijalankan.

Dibandingkan aktivitas 9.3.3, versi ini jauh lebih aman dan terstruktur. Pola ini juga memungkinkan mixin memanggil method milik `MakhlukHidup` secara aman jika diperlukan, karena compiler sudah menjamin class penggunanya pasti memiliki method tersebut.

---

## 📝 Tugas Praktikum

### Tugas 1a - Enumeration: Status Pesanan

#### Pembahasan

Implementasi enum `statusPesanan` dengan lima konstanta: `pending`, `diproses`, `dikirim`, `selesai`, dan `dibatalkan`. Enum ini digunakan pada class `Pesanan` untuk merepresentasikan alur status pemesanan secara bertahap.

Method `updateStatus()` menerima parameter bertipe `statusPesanan` sehingga status hanya bisa diperbarui ke nilai yang valid. Pada `main.dart`, pesanan `"Laptop gaming"` dibuat dengan status awal `pending`, kemudian statusnya diperbarui ke `diproses` lalu `dikirim`, dan setiap perubahan ditampilkan melalui `tampilInfo()`.

#### Analisa

Kasus status pesanan merupakan salah satu use case paling relevan untuk enum karena nilainya bersifat terbatas dan sudah pasti. Penggunaan enum mencegah status tidak valid masuk ke sistem, misalnya string `"proses"` yang tidak sesuai dengan konstanta `diproses`. Dibandingkan contoh gender pada aktivitas praktikum, enum status pesanan menunjukkan bahwa enum juga efektif untuk merepresentasikan alur proses (workflow), bukan hanya kategori statis.

---

### Tugas 1b - Enhanced Enumeration: Planet

#### Pembahasan

Implementasi enhanced enum `Planet` yang menyimpan data empat planet tata surya: `merkurius`, `venus`, `bumi`, dan `mars`. Setiap anggota menyimpan tiga nilai: `nama` (String), `jarakAU` (double, jarak dari matahari dalam satuan AU), dan `gravitasi` (double, percepatan gravitasi dalam m/s²).

Class `Eksplorasi` menerima planet tujuan dan massa objek dalam kg, kemudian menghitung berat objek tersebut di planet tujuan melalui getter `beratDiPlanet` dengan rumus `massaKg * gravitasi`. Pada `main.dart`, berat objek sebesar 70 kg dihitung di keempat planet.

#### Analisa

Contoh ini menunjukkan keunggulan enhanced enum untuk data yang bersifat tetap dan saling berkaitan. Data planet seperti gravitasi dan jarak dari matahari merupakan konstanta ilmiah yang tidak berubah, sehingga sangat tepat disimpan sebagai nilai dalam enum.

Getter `beratDiPlanet` langsung memanfaatkan nilai `gravitasi` dari enum tanpa perlu tabel lookup atau kondisi `if-else`, sehingga kode menjadi ringkas dan efisien. Dibandingkan kasus resistor pada aktivitas praktikum, kasus planet lebih sederhana karena kalkulasinya hanya bergantung pada satu nilai (gravitasi), sedangkan resistor menggabungkan beberapa nilai sekaligus dalam satu rumus.

---

### Tugas 2 - Mixin Aktivitas Kampus

#### Pembahasan

Implementasi mixin untuk lingkungan akademik kampus dengan abstract class `SivitasAkademika` sebagai pembatas. Terdapat enam mixin yang didefinisikan di `mixin_akademik.dart`:

| Mixin | Method |
|---|---|
| `BisaMengikutiKuliah` | `ikutiKuliah()` |
| `BisaMengajar` | `ajarKuliah()` |
| `BisaMeneliti` | `teliti()` + properti `topikPenelitian` |
| `BisaMelayaniAdministrasi` | `layaniAdministrasi()` |
| `BisaMengikutiOrganisasi` | `ikutiOrganisasi()` |
| `BisaAksesPerpustakaan` | `aksesPerpus()` |

Distribusi mixin pada setiap class:
- `Mahasiswa`: `BisaMengikutiKuliah`, `BisaMeneliti`, `BisaMengikutiOrganisasi`, `BisaAksesPerpustakaan`
- `Dosen`: `BisaMengajar`, `BisaMeneliti`, `BisaMengikutiOrganisasi`, `BisaAksesPerpustakaan`
- `Tendik`: `BisaMelayaniAdministrasi`, `BisaMengikutiOrganisasi`, `BisaAksesPerpustakaan`

#### Analisa

Implementasi ini mencerminkan kondisi nyata di lingkungan kampus dengan baik. Setiap kelompok sivitas memiliki kombinasi aktivitas yang berbeda, namun mixin seperti `BisaMengikutiOrganisasi` dan `BisaAksesPerpustakaan` digunakan bersama oleh ketiganya tanpa perlu dideklarasikan ulang di masing-masing class.

Penggunaan constraint `on SivitasAkademika` memastikan mixin akademik ini tidak dapat digunakan pada class yang tidak relevan. Pola ini menegaskan bahwa aktivitas kampus hanya bisa dilakukan oleh entitas yang memang merupakan bagian dari sivitas akademika.

Dibandingkan aktivitas 9.3.3, tugas ini lebih terstruktur karena menggabungkan pembatasan mixin sekaligus menerapkannya pada kasus yang lebih kompleks dengan tiga class berbeda dan enam mixin yang terdistribusi secara tepat sesuai peran masing-masing.

---

## 🛠️ Cara Menjalankan

Pastikan [Dart SDK](https://dart.dev/get-dart) sudah terinstall, lalu jalankan file `main.dart` pada masing-masing folder:

```bash
dart run main.dart
```
