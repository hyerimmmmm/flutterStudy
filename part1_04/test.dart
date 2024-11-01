// async* yield Stream 예시
void main() {
  Stream<int> todo() async* {
    int counter = 0;

    while(counter <= 5) {
      counter++;
      await Future.delayed(Duration(seconds: 1));
      print('TODO is Running $counter');
      yield counter;
    }
    print('TODO is Done');
  }

  todo().listen((event) {});
}
