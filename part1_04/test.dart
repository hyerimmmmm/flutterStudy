// async await Future 예시
void main() {
  Future<void> todo(int second) async {
    await Future.delayed(Duration(seconds: second));
    print('TODO Done in $second seconds');
  }

  todo(3);
  todo(1);
  todo(5);
}
