// while 문에서 break 사용하기
void main() {
  int count = 0;

  while (true) {
    if (count >= 5) {
      break;
    }
    count++;
    print('While is Running $count');
  }
}
