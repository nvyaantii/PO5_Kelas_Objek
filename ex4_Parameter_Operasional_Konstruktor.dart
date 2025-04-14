class Point {
  int? x;
  int? y;

  Point({this.x, this.y});

  void setLocation(int xValue, int yValue) {
    x = xValue;
    y = yValue;
  }
}

void main(List<String> args) {
  Point a = Point(x: 2);
  print('Sebelum diubah');
  print('Titik a terletak di koordinat (${a.x ?? 0}, ${a.y ?? 0})');

  a.setLocation(4, 5);

  print('\nSetelah diubah:');
  print('Titik a terletak di koordinat (${a.x ?? 0}, ${a.y ?? 0})');
}
