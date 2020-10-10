// 조건문

let someInterger = 100

// 1. if-else, 소괄호 생략가능
if (someInterger < 100) {
  print("100 미만")
} else if someInterger > 100 {
  print("100 초과")
} else {
  print("100")
} 

// 스위프트 조건에는 항상 Bool 타입이 들어와야 한다.
// if someInterger { } 는 오류 발생


// 2. switch
switch someInterger {
  case 0:
  print("zero")
  case 1..<100: // 1 이상 100 미만을 표현하는 범위 연산자
  print("1~99")
  case 1...Int.max: // 101 이상 정수 최대값 이상
  print("over 100")
  default:
  print("unknown")
}

// 정수 외의 대부분의 기본 타입을 사용할 수 있다
switch "na" {
  case "ja", "mi":
    print("ja and mi")
  case "na":
    print("na")
    fallthrough // break 없는 것처럼 동작 na와 ya 출력
  case "ya":
    print("ya!")
  default:
   print("unknown")
}
// 모든 경우의 수 다루지 않으면 default 구문 있어야 한다.
// 명시적으로 break하지 않아도 됨
