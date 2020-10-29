// 21. 상속

// 상속은 클래스, 프로토콜 등에서 가능합니다.
// 열거형, 구조체는 상속이 불가능합니다.
// 스위프트의 클래스는 단일상속으로, 다중상속을 지원하지 않습니다.

class Person {
  var name: String = ""
  func selfIntroduce() {
    print("저는 \(name)입니다.")
  }

  // final 키워드 사용 재정의 방지 == override 방지
  final func sayHello() {
    print("hello")
  }

  // 타입 메서드
  // 재정의 불가 타입 메서드 - static
  static func typeMethod() {
    print("typeMethod-static")
  }

  // 재정의 가능 타입 메서드 - class
  class func classMethod() {
    print("classMethod - final class")
  }

  // 재정의 가능한 class 메서드라도 final 키워드 사용하면 재정의 불가능합니다
  // static == final class : 둘은 같은 역할을 한다.
  final class func finalClassMethod() {
    print("typeMethod - final class")
  }
}

// Person 상속
class Student: Person {
  // 저장 프로퍼티 override(재정의) 불가
  // var name: String = "" : 상속받은 상태, 쓰지 않아도 됨
  var major: String = ""

  override func selfIntroduce() {
    print("저는 \(name)이고, 전공은 \(major)입니다.")
    super.selfIntroduce() // 상속받은 메서드 출력
  }

  // class 재정의 가능
  override class func classMethod() {
    print("overriden type method - class")
  }

  // static, final을 사용한 타입 메서드 재정의 불가능합니다
  // override static func typeMethod() { }
  // override func sayHello() { }
  // override class func finalClassMethod() { }
}

let yagom: Person = Person()
let hana: Student = Student()

yagom.name = "yagom"
hana.name = "hana"
hana.major = "Swift"

yagom.selfIntroduce()
hana.selfIntroduce()
Person.classMethod()
Person.classMethod()
Person.typeMethod()
Person.finalClassMethod()

Student.classMethod()
Student.typeMethod()
Student.finalClassMethod()
