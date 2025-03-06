// List: 순서가 있고 중복을 허용한다, 인덱스로 접근 가능하다
testList() {
  // List 생성
  List<int> numbers = [1,2,3,3,4,5];
  print("원본: $numbers");

  // 요소 추가
  numbers.add(6);
  print("add 후: $numbers");

  // 여러개의 요소 추가
  numbers.addAll([7,8,9]);
  print("addAll 후: $numbers");

  // 중간에 삽입
  numbers.insert(0, 0);     // 0번 인덱스에 0을 추가
  print("insert 후: $numbers");

  // 객체 삭제
  numbers.remove(0);      // 0 삭제
  print("remove 이후: $numbers");

  // 특정 인덱스를 지우고자 한다
  // 특정 위치 요소 삭제
  numbers.removeAt(2);      // 2번 인덱스 요소 제거
  print("removeAt 후: $numbers");

  // 리스트의 길이
  print("길이: ${numbers.length}");

  // 비우기
  numbers.clear();
  print("clear 이후: $numbers");

}

testSet() {
  // Set 생성
  // 특징 : 순서가 없다(인덱스 없음), 중복 허용하지 않는다
  Set<int> numbers = {1,2,3,3,4,5};
  print("원본: $numbers");                // 원본의 순서가 맞게 나온건 우연이래

  // 요소 추가
  numbers.add(6);
  print("add 후: $numbers");

  // 여러개 요소 추가
  numbers.addAll({7,8,9});
  print("addAll 후: $numbers");

  // index 없음 -> insert 없음. 안됨. / removeAt 도 없음
  // 오로지 remove 만 있는게지

  // 요소 삭제
  numbers.remove(5);    // 요소 5 삭제
  print("remove 후: $numbers");

  // 요소 갯수
  print("요소 개수: ${numbers.length}");

  // set 비우기
  numbers.clear();
  print("clear 이후: $numbers");

}

testMap() {
  // Map: 순서 없음. key-value 쌍으로 관리, key는 중복될 수 없디
  // Map 생성
  Map<String, int> ages = {'Alice':25, 'Bob':30, 'Charlie':35};
  print("원본 맵: $ages");

  // Map에 요소 추가
  ages['David'] = 40;
  print("추가 이후: $ages");

  // Map에 여러 요소 추가
  ages.addAll({'Frank':50, 'Evan':45});
  print("addAll 후: $ages");

  // 요소 삭제&제거 (key 활용)
  ages.remove('Charlie');
  print("remove 이후: $ages");

  // 요소의 갯수
  print("요소의 갯수: ${ages.length}");

  // 비우기
  ages.clear();
  print("clear 이후: $ages");


}



main() {
  //testList();   // List 메서드 연습
  // testSet();
  testMap();
}