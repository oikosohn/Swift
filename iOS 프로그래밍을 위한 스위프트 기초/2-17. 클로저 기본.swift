// 17. 클로저 기본

// 클로저 : 코드의 블럭, 일급 시민이기 때문에 변수, 상수 등으로 저장, 전달인자로 전달 가능
// 함수 : 이름이 있는 클로저


// 함수 사용
func sumFunc(a: Int, b: Int) -> Int {
  return a+b
}
var sumResult: Int = sumFunc(a:1, b:2)
print(sumResult)


// 클로저 사용
var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
  return a+b
}

sumResult = sum(1,2)
print(sumResult)


// 함수 클로저의 일종 => sum 변수에 당연히 함수 할당 가능
sum = sumFunc(a:b:)
sumResult = sum(1,2)
print(sumResult) 


// 클로저 : 주로 함수의 전달인자로 많이 사용, 함수 동작 완료된 이후 코드 원할 때(콜백) 용도로도 사용

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) -> Int in
  return a+b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
  return a-b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in
  return a/b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
  return method(a,b)
}

var calculated: Int

calculated = calculate(a:50, b:10, method: add)
print(calculated)

calculated = calculate(a:50, b:10, method: substract)
print(calculated)

calculated = calculate(a:50, b:10, method: divide)
print(calculated)

calculated = calculate(a: 50, b:10, method: { (left: Int, right: Int) -> Int in 
  return left*right
})
print(calculated)
