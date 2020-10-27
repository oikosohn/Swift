// 18. 클로저 고급


// 기본 클로저
func cal(a: Int, b: Int, method: (Int, Int)-> Int) -> Int {
  return method(a,b)
}



// 후행 클로저
var result: Int
result = cal(a:10, b:10) { (left: Int, right: Int) -> Int in
  return left + right
}

print(result)


// 반환 타입 생략형
result = cal(a: 10, b:10, method: {
  (left: Int, right: Int) //-> 타입 추론으로 Int 생략가능
  in
  return left + right
})


// 후행 + 반환타입 생략
result = cal(a:10, b:10) {(left: Int, right: Int) in
  return left + right
}



// 단축 인자 이름 : 매개변수 타입 컴파일러가 알아서 가능
result = cal(a:10, b:10, method: {
  return $0 + $1
})


// 암시적 반환 : 마지막 줄 암시적 반환값으로 취급
result = cal(a:10, b:10) {
  $0 + $1
}


// 한 줄 표현
result = cal(a:10,b:10) { $0 + $1 }

print(result)
