class Point {
  int x;
  int y;

  Point(this.x, this.y);
}

void main(List<String> args) {
  Point a = Point(2, 3);
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
