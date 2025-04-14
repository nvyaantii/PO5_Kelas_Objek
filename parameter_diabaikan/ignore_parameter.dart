class Mahasiswa {
  String name;
  void Function(String)? doingHobby;

  Mahasiswa(this.name, {this.doingHobby});

  void takeARest() {
    doingHobby?.call(name);
  }
}
