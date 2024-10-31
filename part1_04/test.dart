// throw 문 예시
void main() {
  int num1 = 10;

  try {
    throw Exception('Unknown Error');
    print(10 ~/ 0);

  } on UnsupportedError catch(e, s) {
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch(e, s) {
    print('Null 값이 참조되었습니다.');
  } catch(e, s) {
    print('모르는 에러가 발생했습니다.');
  }
}
