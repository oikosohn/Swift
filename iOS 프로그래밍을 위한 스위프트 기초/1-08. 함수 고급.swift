// 1. 매개변수 기본값 : 기본값은 맨 뒤에 위치시키는 게 좋음
func greeting(friend: String, me: String="ya") {
  print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값 있으면 전달인자 생략가능
greeting(friend:"hana")
greeting(friend:"john",me:"eric")


// 2. 전달인자 레이블 : 매개변수의 역할을 좀 더 명확하게 하거나 함수 사용자 입장에서 표현하고자 할 때 사용
func greeting(to friend:String, from me: String) {
  print("Hello \(friend)! I'm \(me)")
}

// 전달인자 레이블 사용 필수
greeting(to:"hana", from:"ya")
 

// 3. 가변 매개변수 : 전달 받을 값의 개수를 알기 어려울 때 사용, 가변 매개변수는 함수당 하나만 가질 수 있음
func sayHelloFriends(me: String, friends: String...) -> String {
  return "Hello \(friends)! I'm \(me)!"
}

print(sayHelloFriends(me: "ya", friends: "hana","eric","wing"))

// 매개변수 0개여도 ok!
print(sayHelloFriends(me: "ya"))


// 1~3 모두 섞어서 사용 가능

// 4. 데이터 타입으로서 함수 : 스위프트 함수형 프로그래밍 포함하는 다중 패러다임 언어, 스위프트의 함수는 1급객체이므로 변수, 상수 등에 저장 가능, 매개변수를 통해 전달도 가능


// 5. 함수의 타입표현 : 반환타입을 생략할 수 없음
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric","ya") // 변수자체가 함수

someFunction = greeting(friend:me:)
someFunction("eric","ya")

// someFunction = sayHelloFriends(me: friends: ) : 타입이 다른 함수는 할당할 수 없다. friends 가변 매개변수 달라서 타입 다름

func runAnother(function: (String, String)->Void) {
  function("jen","mike")
}

runAnother(function:greeting(friend:me:))

runAnother(function: someFunction)
