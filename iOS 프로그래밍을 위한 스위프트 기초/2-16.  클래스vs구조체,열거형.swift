// Class, 클래스
// 단일상속
// 참조타입
// Apple 프레임워크의 대부분의 큰 뼈대 모두 클래스로 구성
// Apple 프레임워크에서 프로그래밍할 때 주로 클래스 사용


// Struct, 구조체
// C보다 다양한 기능, 상속 불가
// 값 타입
// Swift 대부분 큰 뼈대는 모두 구조체로 구성
// 연관된 데이터 값들을 하나의 데이터 타입으로 표현할 때, 참조가 아닌 복사를 원할 때, 상속받을 필요 없을 때 사용



// Enum, 열거형
// 상속 불가
// 값 타입
// 유사한 종류의 여러 값을 유의미한 이름으로 한 곳에 모아 정의
// 열거형 자체가 하나의 데이터 타입, 열거형의 case 하나하나 전부 하나의 유의미한 값으로 취급


// 값 vs 참조
// 값 : 값을 복사해 전달
// 참조 : 값의 메모리 위치 전달


struct ValueType {
  var property = 1
}

class ReferenceType {
  var property = 1
}


// 구조체
let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2 // 구조체 인스턴스 생성

print("firstStructInstance: \(firstStructInstance.property)") // 1

print("secondStructInstance: \(secondStructInstance.property)") // 2


// 클래스로
let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("firstClassReference: \(firstClassReference.property)") // 2

print("secondClassReference: \(secondClassReference.property)") // 2


// 스위프트 자료형 구조체로 선언되어있음
// 스위프트 구조체, 열거형 사용 선호
