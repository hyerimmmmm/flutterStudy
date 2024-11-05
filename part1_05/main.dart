import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  // 유저가 무엇을 낼 것인지 물어보는 질의 창
  print('가위, 바위, 보 중 하나를 정해서 입력해 주세요.');
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';

  // 컴퓨터가 어떤 것을 낼 것인지 결정하는 함수
  const selectList = ['가위', '바위', '보'];
  final cpuInput = selectList[Random().nextInt(3)];

  print(cpuInput);

  // 유저와 컴퓨터의 승패를 계산할 함수
  final result = getResult(userInput, cpuInput);
  print(result);
}

String getResult(String userInput, String cpuInput) {
  const cpuWin = '컴퓨터가 승리했습니다';
  const userWin = '사용자가 승리했습니다';
  const draw = '비겼습니다';

  String result = draw;

  switch (userInput) {
    case '가위':
      if (cpuInput == '바위') {
        result = cpuWin;
      } else if (cpuInput == '보') {
        result = userWin;
      }
    case '바위':
      if (cpuInput == '보') {
        result = cpuWin;
      } else if (cpuInput == '가위') {
        result = userWin;
      }
    case '보':
      if (cpuInput == '가위') {
        result = cpuWin;
      } else if (cpuInput == '바위') {
        result = userWin;
      }
    default:
      result = '올바른 값을 입력해 주세요';
  }
  return result;
}
