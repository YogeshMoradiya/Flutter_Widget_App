

void main() {
      print(test());
      print(test1());
}

Future<int> test() async{
  print('Yogesh');
  await Future.delayed(const Duration(seconds: 3));

  return 1;
}

int test1() {
  print('hello');
  return 1;
}