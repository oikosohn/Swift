// 22. 인스턴스 생성 / 소멸 (init / deinit)

// 스위프트의 모든 인스턴스는 초기화와 동시에 모든 프로퍼티에 유효한 값이 할당되어 있어야 합니다.
// 프로퍼티에 미리 기본값을 할당해두면 인스턴스가 생성됨과 동시에 초기값을 지니게 됩니다.

class PersonA {
  // 모든 저장 프로퍼티에 기본값 할당
  var name: String = "unknown"
  var age: Int = 0
  var nickName: String = "nikc"
}

let jason: PersonA = PersonA()
jason.name = "jason"
jason.age = 30
jason.nickName = "j"



// 이니셜라이저 : 프로퍼티 초기값을 지정하기 어려운 경우에는 이니셜라이저 init을 통해 인스턴스가 가져야 할 초기값을 전달할 수 있습니다.

class PersonB {
  var name: String
  var age: Int
  var nickName: String

  // 이니셜라이저
  init(name: String, age:Int, nickName:String) {
    self.name = name
    self.age = age
    self.nickName = nickName
  }
}

let hana: PersonB = PersonB(name: "hana", age: 20, nickName: "하나")



// 프로퍼티의 초기값이 필수가 아닐 때 옵셔널 사용!
class PersonC {
  var name: String
  var age: Int
  var nickName: String?

  // convenience : 이니셜라이저 호출 시 사용
  convenience init(name: String, age: Int, nickName: String) {
    // 코드 중복 줄어듦
    self.init(name: name, age: age)
    self.nickName = nickName
  }
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
}

let jenny: PersonC = PersonC(name: "jenny", age: 10)
let mike: PersonC = PersonC(name: "mike", age: 15, nickName: "m")


// 암시적 추출 옵셔널 : 인스턴스 사용에 꼭 필요하지만 초기 값을 할당하지 않고자 할 때 사용
class Puppy {
  var name: String
  var owner: PersonC! // owner가 반드시 필요할 때 ! 사용

  init(name: String) {
    self.name = name
  }
  
  func goOut() {
    print("\(name)가 주인\(owner.name)와 산책을 합니다.")
  }
}

let happy: Puppy = Puppy(name: "happy")
// happy.goOut() 런타임 오류 owner == nil인 상태
happy.owner = jenny
happy.goOut()



// 실패 가능한 이니셜라이저

// 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우 인스턴스 생성에 실패할 수 있습니다.
// 인스턴스 생성에 실패하면 nil을 반환합니다.
// 실패가능한 이니셜라이저의 반환타입은 옵셔널 타입입니다.
// init?을 사용합니다.

class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    
    init?(name: String, age: Int) {
        if (0...120).contains(age) == false {
            return nil
        }
        
        if name.count == 0 {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}

let john: PersonD? = PersonD(name: "john", age:23)
let joker: PersonD? = PersonD(name: "joker", age:123)
let batman: PersonD? = PersonD(name: "", age:10)

print(john!)
print(joker)
print(batman)



// 디이니셜라이저 : 인스턴스가 해제되는 시점 호출되고 해야할 일 구현

// deinit은 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출됩니다.
// 인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있습니다.
// deinit은 매개변수를 지닐 수 없습니다.
// 자동으로 호출되므로 직접 호출할 수 없습니다.
// 디이니셜라이저는 클래스 타입에만 구현할 수 있습니다.
// 인스턴스가 메모리에서 해제되는 시점은 ARC(Automatic Reference Counting) 의 규칙에 따라 결정됩니다.
// ARC에 대해 더 자세한 사항은 아래 ARC 문서를 참고하세요. 

class PersonE {
  var name: String
  var pet: Puppy?
  var child: PersonC

  init(name: String, child: PersonC) {
    self.name = name
    self.child = child
  }
  
  deinit { // 매개변수 없음, 사람이 없을 때 강아지 인도
    if let petName = pet?.name {
      print("\(name)가 \(child.name)에게 \(petName)를 인도합니다.")
      self.pet?.owner = child
    }
  }
}

var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil // donal 인스턴스가 더 이상 필요 없으므로 메모리에서 해제
