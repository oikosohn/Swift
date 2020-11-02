// 24. 타입 캐스팅

// 인스턴스의 타입을 확인 하는 용도  
// 클래스의 인스턴스를 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지 확인 하는 용도
// is, as를 사용합니다.
// * 형변환은 'ex. let someDouble = Double(2)'  타입 캐스팅이 아니라 새로운 값을 생성하는 것입니다.


// 아래 코드는 스위프트에서는 타입 캐스팅이 아니라 Double 타입의 인스턴스 생성하는 것
let someInt: Int = 100
let someDouble: Double = Double(someInt)


// 1. 타입 캐스팅을 위한 클래스 정의
class Person {
  var name: String = ""
  func breath() {
    print("숨을 쉽니다.")
  }
}

class Student: Person {
  var school: String = ""
  func goToSchool() {
    print("등교를 합니다.")
  }
}

class UniversityStudent: Student {
  var major: String = ""
  func goToMT() {
    print("멤버십 트레이닝")
  }
}

var yagom: Person = Person()
var hana: Student = Student()
var jason: UniversityStudent = UniversityStudent()


// 2. 타입 확인 : is
var result: Bool
result = yagom is Person // true
result = yagom is Student // false
result = yagom is UniversityStudent // false

result = hana is Person // true
result = hana is Student // true
result = hana is UniversityStudent //false

result = jason is Person // true
result = jason is Student // true
result = jason is UniversityStudent // true

if yagom is UniversityStudent {
  print("대학생")
} else if yagom is Student {
  print("학생")
} else if yagom is Person {
  print("사람")
}

switch jason { 
  case is Person:
    print("Person")
  case is Student:
    print("Student")
  case is UniversityStudent:
    print("UniversityStudent")
  default:
    print("Nothing")        
}

switch jason { // 스위치 case 순차 접근
  case is UniversityStudent:
    print("UniversityStudent")  
  case is Person:
    print("Person")
  case is Student:
    print("Student")
  default:
    print("Nothing")        
}



// 3. 업 캐스팅(Up Casting) : as, 사용빈도 적음

// as를 사용하여 부모클래스의 인스턴스로 사용할 수 있도록 컴파일러에게 타입정보를 전환해줍니다.
// Any 혹은 AnyObject로도 타입정보를 변환할 수 있습니다.
// 암시적으로 처리되므로 꼭 필요한 경우가 아니라면 생략해도 무방합니다.

var mike: Person = UniversityStudent() as Person
//var jina: UniversityStudent = Person() as UniversityStudent // 컴파일 오류
var jenny: Student = Student()
var jina: Any = Person() // as Any 생략가능




// 4. 다운 캐스팅(Down Casting) : as?, as!, 사용빈도 업 캐스팅보다 많음

// as? 또는 as!를 사용하여 자식 클래스의 인스턴스로 사용할 수 있도록 컴파일러에게 인스턴스의 타입정보를 전환해줍니다.


// A. 조건부 다운 캐스팅

// as?를 사용합니다.
// 캐스팅에 실패하면, 즉 캐스팅하려는 타입에 부합하지 않는 인스턴스라면 nil을 반환하기 때문에 결과의 타입은 옵셔널 타입입니다.
var optionalCated: Student?
optionalCated = mike as? UniversityStudent // 캐스팅 성공하면 옵셔널로 반환
optionalCated = jenny as? UniversityStudent // nil
optionalCated = jina as? UniversityStudent // nil
optionalCated = jina as? Student // nil



// B. 강제 다운 캐스팅

// as!를 사용합니다.
// 캐스팅에 실패하면, 즉 캐스팅하려는 타입에 부합하지 않는 인스턴스라면 런타임 오류가 발생합니다.
// 캐스팅에 성공하면 옵셔널이 아닌 일반 타입을 반환합니다.
var forcedCasted: Student
optionalCated = mike as! UniversityStudent 
// optionalCated = jenny as! UniversityStudent // 런타임 오류
// optionalCated = jina as! UniversityStudent // 런타임 오류
// optionalCated = jina as! Student // 런타임 오류



// 5. 활용
func doSomthingWithSwitch(someone: Person) {
  switch someone {
    case is UniversityStudent:
      (someone as! UniversityStudent).goToMT()
    case is Student:
      (someone as! Student).goToSchool()
    case is Person:
      (someone as! Person).breath()            
  }
}

doSomthingWithSwitch(someone: mike as Person)
doSomthingWithSwitch(someone: mike)
doSomthingWithSwitch(someone: jenny)
doSomthingWithSwitch(someone: yagom)



func doSomthing(someone: Person) { // 캐스팅과 동시에 반환해서 언래핑할 수 있음
  if let UniversityStudent = someone as? UniversityStudent {
    UniversityStudent.goToMT()
  } else if let student = someone as? Student {
    student.goToSchool()
  } else if let person = someone as? Person {
    person.breath()
  }
}

doSomthing(someone: mike as Person)
doSomthing(someone: mike)
doSomthing(someone: jenny)
doSomthing(someone: yagom)
