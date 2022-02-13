import 'dart:io';

import 'student.dart';

List ogrenciler = [];

void main() {
  print("1) Öğrenci ekle");
  print("2) Öğrenci ara");
  String? secim = stdin.readLineSync();

  if (secim == "1") {
    print("Öğrenci ismi:");
    String? isim = stdin.readLineSync();
    print("Öğrenci soyismi:");
    String? soyisim = stdin.readLineSync();
    ogrenciEkle(isim, soyisim, null);
  } else if (secim == "2") {
    print("Öğrenci Numarası:");
    String? aramaNumarasi = stdin.readLineSync();

    ogrenciAra(aramaNumarasi);
  }

  /* print("Öğrenci numarası giriniz:");
  var aramaNumarasi = stdin.readLineSync();
  ogrenciAra(aramaNumarasi); */
}

void ogrenciEkle(isim, soyisim, numara) {
  numara = ogrenciler.length + 1;
  ogrenciler.add(Student(isima: isim, soyisima: soyisim, numaraa: numara));

  for (int i = 0; i < ogrenciler.length; i++) {
    print(ogrenciler[i].isim);
  }
  main();
}

void ogrenciAra(aramaNumarasi) {
  var intAramaNum = int.parse(aramaNumarasi);

  List numList = [];

  for (int i = 0; i < ogrenciler.length; i++) {
    numList.add(ogrenciler[i].numara);
  }

  print(numList);

  for (int i in numList) {
    if (intAramaNum == i) {
      ogrenciGoster(i);
    }
  }
}

void ogrenciGoster(index) {
  print(ogrenciler[index - 1].isim);
  print(ogrenciler[index - 1].soyisim);
  print(ogrenciler[index - 1].numara);
}
