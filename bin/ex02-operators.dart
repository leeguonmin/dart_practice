
arithOpers() {
  print("Arithmetic Operators\t--------------------------------");

  // +, _, *, /
  int num1 = 7;
  int num2= 3;

  print("7 / 3 = ${num1 / num2}");     // 나눗셈은 항상 double
  print("7 ~/ 3 = ${num1 ~/ num2}");      // 정수 나눗셈의 몫
  print("7 % 3 = ${num1 % num2}");      // 정수 나눗셈의 나머지
}

condOper() {
  print("Conditional Operators\t--------------");

  // ? : 삼항 연산자
  // 조건 ? true 일때 : false 일 때
  var money = 9_000;
  var food = money >= 8_000 ? "김치찌개": "라면";
  print("가진 돈:$money -> 메뉴: $food");

  // ??: null 병합 연산자
  var name = "홍길동";
  // var nameToPrint = name != null ? name: "이름 없음";      *얘랑
  var nameToPrint = name ?? "이름 없음";                    // *얘랑 똑같은 코드임
  print("$name -> $nameToPrint");

}

main() {
  // arithOpers();     // 산술 연산자
  condOper();   // 조건 연산자
}