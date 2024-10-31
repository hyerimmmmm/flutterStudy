// do-while 문에서 continue 사용하기
void main() {
  int num = 0;

  do {
    num++;

    if (num == 4) {
      continue;
    }

    print('Running Do While $num');
  } while (num < 5);
}
