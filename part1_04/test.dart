// while 문 예시
void main() {
  bool isRunning = true;
  int count = 0;

  while (isRunning) {
    if (count >= 5) {
      isRunning = false;
    }
    count++;
    print('While is Running $count');
  }
}
