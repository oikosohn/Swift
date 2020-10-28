// 19. 프로퍼티 


// 프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있습니다.
// 다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있습니다.

struct Student {
  // 인스턴스 저장 프로퍼티
  var name: String = ""
  var `class`: String = "Swift"
  var koreanAge: Int = 0

  // 인스턴스 연산 프로퍼티 : 연산 프로퍼티는 var로만 선언할 수 있습니다.
  var westernAge: Int {
    get { // 읽기 전용
      return koreanAge - 1
    }
    set(inpurtValue) { // 쓰기 전용
      koreanAge = inpurtValue + 1
    }
  }

  // 타입 저장 프로퍼티
  static var typeDescription: String = "학생"


  // 읽기전용 인스턴스 연산 프로퍼티
  var selfIntroduction: String {
    get {
      return "저는 \(self.class)반 \(name)입니다."
    }
  }

  // 읽기 전용 타입 연산 프로퍼티는/
  // 읽기 전용에서 get 생략가능
  static var selfIntroduction: String {
    return "학생 타입"
  }
}


// 타입 연산 프로퍼티 사용
print(Student.selfIntroduction)

// 인스턴스 생성
var yagom: Student = Student()
yagom.koreanAge = 10

// 인스턴스 저장 프로퍼티 사용
yagom.name = "yagom"
print(yagom.name)

// 인스턴스 연산 프로퍼티 사용
print(yagom.selfIntroduction)

print("제 한국나이는 \(yagom.koreanAge)살이고, 미쿡나이는 \(yagom.westernAge)살입니다.")


// 응용

struct Money {
  var currentRate: Double = 1100
  var dollar: Double = 0
  var won: Double {
    get {
      return dollar * currentRate
    }
    set { // newValue :  암시적 매개변수
      dollar = newValue / currentRate
    }
  }
}

var moneyInMyPocket = Money()

moneyInMyPocket.won = 11000
print(moneyInMyPocket.won)

moneyInMyPocket.dollar = 12
print(moneyInMyPocket.won)



// 지역변수, 전연변수 모두 사용 가능
// 저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역/전역 변수에도 모두 사용 가능합니다.

var a: Int = 100
var b: Int = 200
var sum: Int {
  return a+b
}
print(sum)

