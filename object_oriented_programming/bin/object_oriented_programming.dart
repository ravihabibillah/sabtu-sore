void main() {
  var sapi = Animal('Sapi', 1, 720);

  sapi.makan();
  sapi.tidur();

  sapi.makan();
  sapi.berak();

  print(sapi.);
}

class Animal {
  String  _nama;
  int _umur;
  double _berat;

  Animal(this._nama, this._umur, this._berat);

  void makan() {
    print('$_nama makan..');
    _berat = _berat + 0.2;
  }

  void tidur() {
    print('$_nama tidur..');
  }

  void berak() {
    print('$_nama mulai berak...');
    _berat = _berat - 0.2;
  }
}
