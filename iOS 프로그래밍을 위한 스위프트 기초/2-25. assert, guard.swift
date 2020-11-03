// 25. assert / guard 

// 애플리케이션이 동작 도중에 생성하는 다양한 연산 결과값을 동적으로 확인하고 안전하게 처리할 수 있도록 확인하고 빠르게 처리할 수 있습니다.

// 1. Assertion

// assert(_:_:file:line:) 함수를 사용합니다.
// assert 함수는 디버깅 모드에서만 동작합니다.
// 배포하는 애플리케이션에서는 제외됩니다.
// 예상했던 조건의 검증을 위하여 사용합니다.

var someInt: Int = 0
assert(someInt==0, "someInt != 0") // 맞으면 pass, 그렇지 않으면 메서지 출력하고 동작 중지

someInt = 1

// assert(someInt == 0) // 동작 중지, 검증 실패

// assert(someInt == 0, "someInt != 0") // 동작 중지, 검증 실패
// assertion failed: someInt != 0: file guard_assert.swift, line 26

func functionWithAssert(age: Int?) {
  assert(age != nil, "age==nil")
  assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다.")
  print("당신의 나이는 \(age!)세입니다.")
}
functionWithAssert(age: 50)
// functionWithAssert(age: -1) // 동작 중지, 검증 실패
// functionWithAssert(age: nil) // 동작 중지, 검증 실패

// * assert(_:_:file:line:)와 같은 역할을 하지만 실제 배포 환경에서도 동작하는 precondition(_:_:file:line:) 함수도 있습니다. 함께 살펴보세요.


// 2. guard(빠른종료- Early Exit)

// guard를 사용하여 잘못된 값의 전달 시 특정 실행구문을 빠르게 종료합니다.
// 디버깅 모드 뿐만 아니라 어떤 조건에서도 동작합니다.
// guard의 else 블럭 내부에는 특정 코드블럭을 종료하는 지시어(return, break 등)가 꼭 있어야 합니다.
// 타입 캐스팅, 옵셔널과도 자주 사용됩니다.
// 그 외에도 단순 조건 판단 후 빠르게 종료할 때도 용이합니다.

func functionWithGuard(age: Int?) {
  guard let unwrappedAge = age, // 옵셔널 바인딩 : age가 nil이면 실행이 안됨
  unwrappedAge < 130,
  unwrappedAge >= 0 else {
    print("나이값 입력이 잘못되었습니다.")
    return
  }

  // 구문 축약 가능, 위 아래 코드 동일 기능
  // guard unwrappedAge < 100 else {
  //   return
  // }

  // if unwrappedAge < 100 {
  // } else {
  //   return
  // }

  print("당신의 나이는 \(unwrappedAge)세 입니다.")
}

var count = 1

while true {
  guard count < 3 else { // 3초과면 
    break
  }
  print(count)
  count += 1
}



// 딕셔너리에서 나오는 모든 것들 옵셔널
func someFunction(info: [String: Any]) {
  guard let name = info["name"] as? String else { // info 딕셔너리에서 name에 해당하는 key 꺼내서 캐스팅한다 -> Any 타입이기 때문
    return
  }
  guard let age = info["age"] as? Int, age >= 0 else {
    return
  }
  print("\(name): \(age)")
}

someFunction(info:["name":"jenny", "age":"10"]) // age 정수타입이 아니라서 return
someFunction(info:["name":"mike"]) // age 없어서 return
someFunction(info:["name":"yaom", "age":10]) // yaom: 10
