mixin bisaBerjalan {
  void berjalan() {
    print("Makhluk ini bisa berjalan!");
  }
}

mixin BisaBerlari {
  double kecepatan = 0;

  void berlari() {
    print("Makhluk ini bisa berlari dengan kecepatan $kecepatan km/jam");
  }
}

mixin BisaTerbang {
  void terbang() {
    print("Makhluk ini bisa terbang");
  }
}

mixin BisaBerenang {
  void berenang() {
    print("Makhluk ini bisa berenang");
  }
}
