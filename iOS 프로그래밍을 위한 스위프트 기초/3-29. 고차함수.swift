// 29. 고차함수
// 29. 고차함수 : 전달인자로 함수를 전달받거나 함수실행의 결과를 함수로 반환하는 함수

// 고차 함수(Higher-order function)는 '다른 함수를 전달인자로 받거나 함수실행의 결과를 함수로 반환하는 함수'를 뜻합니다
// 스위프트의 함수(클로저)는 일급시민(일급객체)이기 때문에 함수의 전달인자로 전달할 수 있으며, 함수의 결과값으로 반환할 수 있습니다
// 이번 파트에서는 스위프트 표준라이브러리에서 제공하는 유용한 고차함수[map, filter, reduce]에 대해 알아봅니다
// map, filter, reduce 함수는 스위프트 표준 라이브러리의 컨테이너 타입(Array, Set, Dictionary 등)에 구현되어 있습니다


// 1. map : map함수는 컨테이너 내부의 기존 데이터를 변형(transform)하여 새로운 컨테이너를 생성합니다.

let numbers: [Int] = [0,1,2,3,4]
var doubleNumbers: [Int]
var strings: [String]

// for 구문
doubleNumbers = [Int]()
strings = [String]()

for number in numbers {
  doubleNumbers.append(number*2)
  strings.append("\(number)")
}
print("for문")
print(doubleNumbers)
print(strings)
print("\n")



// map 메서드 사용
doubleNumbers = numbers.map({ (number: Int) -> Int in
  return number*2
})
strings = numbers.map({ (number: Int) -> String in
  return "\(number)"
})
print("map 메서드")
print(doubleNumbers)
print(strings)
print("\n")



// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
doubleNumbers = numbers.map{ $0 * 2 }
print("클로저")
print(doubleNumbers)
print("\n")


// 2. filter : filter함수는 컨테이너 내부의 값을 걸러서 새로운 컨테이너로 추출합니다.

// for 구문
var filterd: [Int] = [Int]()
for number in numbers {
  if number % 2 == 0 {
    filterd.append(number)
  }
}
print("for문")
print(filterd)
print("\n")


// filter 메서드를 이용해 상수로 가질 수 있음
let evenNumbers: [Int] = numbers.filter {
  (number: Int) -> Bool in
  return number % 2 == 0
}
print("filter 메서드")
print(evenNumbers)
print("\n")


// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
let oddNumbers: [Int] = numbers.filter {
  $0 % 2 != 0
}
print("클로저")
print(oddNumbers)
print("\n")



// 3. reduce, reduce함수는 컨테이너 내부의 콘텐츠를 하나로 통합합니다.

// 예 : array의 모든 요소의 합 구하기
let someNumbers: [Int] = [2,8,15]

// for 구문
var result: Int = 0
for number in someNumbers {
  result += number
}
print("for문")
print(result)
print("\n")


// reduce 메서드, 초기값이 0이고 someNumbers 내부의 모든 값을 더한다.
let sum: Int = someNumbers.reduce(0, {
  (first: Int, second: Int) -> Int in
  return first+second
})
print("reduce 메서드")
print(sum)


// 초기값이 0이고 someNumbers 내부의 모든 값을 뺀다.
let sum2: Int = someNumbers.reduce(0, {
  (first: Int, second: Int) -> Int in
  return first-second
})
print(sum2)


// 초기값이 3이고 someNumbers 내부의 모든 값을 더함
let sumFromThree = someNumbers.reduce(3) {
  $0 + $1
}
print(sumFromThree)

// 모든 값 곱하기
print(someNumbers.reduce(1) {$0 * $1})
