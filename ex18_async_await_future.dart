import 'konstruktor_super/person.dart';

void main(List<String> args) async {
  var p = Person();
  print('Job 1');
  print('Job 2');
  p.getData();
  print('Job 3 : ' + p.name);
  print('Job 4');
  int mode = 2;
  if (mode == 1) {
    await p.getDataAsync();
    print('Job 5 :' + p.name);
    print('Job 6');
  } else if (mode == 2) {
    p.getDataAsync().then((_) {
      print('Job 5 : ' + p.name);
    });
    print('Job 6');
  }
}

class Person {
  String name = 'default name';

  void getData() {
    name = 'Joko';
    print('get data [done]');
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'Badu';
    print('get data async [done]');
  }
}
