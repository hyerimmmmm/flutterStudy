// try-catch 문 예시
void main() {
  int num1 = 10;

  try {
    print(10 ~/ 0);
  } catch(error, stack) {
    print(error);
    print(stack);
  } finally {
    print('예외처리 문이 종료되었습니다');
  }
}
