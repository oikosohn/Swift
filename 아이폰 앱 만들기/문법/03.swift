// 옵셔널 변수
var index: Int?

index = 1
if index != nil {
  print(index!)
}

var index2: Int!

index2 = 2
if index2 != nil {
  print(index2)
}


/*
1
Optional(2)
*/


// if 조건문

if num%2 == 1{
  print("\(num)는 홀수입니다.")
}
else {
  print("\(num)는 짝수입니다.")
}
