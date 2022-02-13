class Student {
  String? _isim;
  String? _soyisim;
  int? _numara;

  String? get isim => _isim;
  String? get soyisim => _soyisim;
  int? get numara => _numara;

  Student({isima, soyisima, numaraa})
      : _isim = isima,
        _soyisim = soyisima,
        _numara = numaraa;
}
