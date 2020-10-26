// 15. 열거형

// enum : 타입 => 대문자, case : 소문자
// case 그 자체가 고유값

enum Weekday {
  case mon
  case tue
  case wed
  case thu, fri, sat, sun
}

// day의 타입 = Weekday
var day: Weekday = Weekday.mon

// 축약형
day = .tue

// var noday = .tue : 컴파일러 무슨 타입인지 몰라 오류 발생

print(day)

// 모든 열거형 케이스를 포함하면 default 작성할 필요 없다.
switch day {
  case .mon, .tue, .wed, .thu:
    print("평일")
  case Weekday.fri:
    print("불금")
  case .sat, .sun:
    print("주말")
}


// 원시 값, case별로 다른 값 가져야 한다.
enum Fruit: Int {
  case apple = 0
  case grape = 1
  case peach // 자동으로 2 대입
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")


// Hashable 프로토콜을 따르는 모든 타입이 원시값으로 지정 가능
enum School: String {
  case elementary = "초등"
  case middle = "중등"
  case high = "고등"
  case university // case 이름이 문자열로 대입
}

print("School.middle.rawValue == \(School.middle.rawValue)")

print("School.university.rawValue == \(School.university.rawValue)")


// 원시값으로 초기화
let apple: Fruit? = Fruit(rawValue: 0) // case 없으면 생성안될 수 있어서 nil 반환될 수도 있다. => 원시값을 통해 초기화한 인스턴스는 옵셔널 타입

if let orange: Fruit = Fruit(rawValue:5) {
  print("rawValue 5에 해당하는 케이스는 \(orange)입니다.")
} else {
  print("rawValue 5에 해당하는 케이스가 없다")
}



// 메서드

enum Month {
  case dec, jan, feb
  case mar, apr, may
  case jun, jul, aug
  case sep, oct, nov

  func printMessage() {
    switch self {
      case .mar, .apr, .may:
        print("봄")
      case .jun, .jul, .aug:
        print("여름")
      case .sep, .oct, .nov:
        print("가을")
      case .dec, .jan, .feb:
        print("겨울")                
    }
  }
}

Month.mar.printMessage()
