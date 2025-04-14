class Point {
  int _x = 0;
  int _y = 0;

  static int counter = 0;
  Point() {
    counter++;
  }

  Point.createInstance(this._x, this._y) {
    counter++;
  }

  void setLocation(int xValue, int yValue) {
    _x = xValue;
    _y = yValue;
  }

  set x(int value) => _x = value;
  set y(int value) => _y = value;

  int get x => _x;
  int get y => _y;
}

void main() {
  Point a = Point();
  print('Pada saat a dibuat, counter bernilai: ${Point.counter}');

  Point b = Point();
  print('Pada saat b dibuat, counter bernilai: ${Point.counter}');

  Point c = Point.createInstance(2, 3);
  print('Pada saat c dibuat, counter bernilai: ${Point.counter}');
}
