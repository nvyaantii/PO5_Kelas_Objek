class Point {
  int x;
  int y;

  Point() : x = 0, y = 0;

  Point.createInstance(this.x, this.y);

  void setLocation(int xValue, int yValue) {
    x = xValue;
    y = yValue;
  }

  Point clone() {
    return Point.createInstance(x, y);
  }
}

void main(List<String> args) {
  Point a = Point();
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');

  Point b = Point.createInstance(2, 3);
  print('Titik b terletak di koordinat (${b.x}, ${b.y})');

  Point c = b.clone();
  print('Titik c terletak di koordinat (${c.x}, ${c.y})');
}
