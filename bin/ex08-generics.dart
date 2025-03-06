// Generics: 내부 데이터 타입을 미정 상태로 두고(템플릿화)
//          객체화 시점에서 내부 데이터 타입을 확정해서 컴파일하는 방식
// 타입 안정성을 위해서 가장 우선해야 할 방식

// Generic 클래스 선언
class GenericBox<T> {
  // 필드 데이터
  T _value;   // 타입이 정해지지 않은 private 멤버

  // 생성자
  GenericBox(this._value);

  // getter
  T get value => _value;

  // setter
  set value(T newValue) {
    _value = newValue;
  }
}

testGenericBox() {
  GenericBox<int> intBox = GenericBox<int>(42);
  print("intBox: ${intBox.value}");
  GenericBox<double> dBox = GenericBox<double>(3.14159);
  print("dBox: ${dBox.value}");
  GenericBox<String> strBox = GenericBox<String>("Dart");
  print("strBox: ${strBox.value}");
  // strBox.value = 2025;   (얘는 오류 나)
}

// Generics extends, super를 이용한 타입 제한
class NumberBox<T extends num> {    // num를 extends
  T value;
  NumberBox(this.value);
  double square() {
    return value.toDouble() * value.toDouble();
  }
}

testNumberBox() {
  NumberBox<int> intBox = NumberBox<int>(5);
  print(intBox.square());
  NumberBox<double> dBox = NumberBox<double>(3.14159);
  print(dBox.square());
  // NumberBox<String> strBox = NumberBox<String>("5");
  // String은 num를 확장하지 않음 (그래서 오류 나)
}

main() {
  // testGenericBox();
  testNumberBox();
}


