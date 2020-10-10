// 반복문

var integers = [1,2,3]
let people = ["ya":10, "eric":15, "mike":12]

// 1. for-in 구문
for integer in integers {
  print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입
for (name, age) in people {
  print("\(name): \(age)")
}


// 2. while : 조건에 bool값만 허용, 숫자 안됨
while integers.count > 1 {
  integers.removeLast()
}
print(integers)


// 3. repeat-wile == dowhile과 유사, 스위프트에서 do는 오류처리 구문에서 사용됨
repeat {
  integers.removeLast()
} while integers.count>0

print(integers)
