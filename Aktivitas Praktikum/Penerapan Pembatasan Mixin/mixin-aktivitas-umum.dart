import 'makhluk-hidup.dart';

mixin bisaBerjalan on MakhlukHidup {
  void berjalan() {
    print("Makhluk ini bisa berjalan!");
  }
}

mixin BisaBerlari on MakhlukHidup {
  double kecepatan = 0;

  void berlari() {
    print("Makhluk ini bisa berlari dengan kecepatan $kecepatan km/jam");
  }
}

mixin BisaTerbang on MakhlukHidup {
  void terbang() {
    print("Makhluk ini bisa terbang");
  }
}

mixin BisaBerenang on MakhlukHidup {
  void berenang() {
    print("Makhluk ini bisa berenang");
  }
}
