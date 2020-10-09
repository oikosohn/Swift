// 3장

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


// 5장

// 1. 변수 선언과 할당
var name: [String] = ["슈퍼맨","배트맨"]
var score: [Int] = [100, 40]

// 2. 빈 배열 선언후 추가
var name = [String]()
var score = [Int]()
name.append("치킨")
score.append(100)

let someoneName = name[0]
name[1] = "홍길동"

let someScore = score[2]
score[3] = 60

// 3. for문
for i in 0..<10 {
	print(i)
}
