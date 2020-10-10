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


// 6장
// 익명함수(Anonymous Function) 혹은 클로저(Closer) : 함수 이름을 선언핮 않고 함수 몸체만 만들어 사용하는 일회용 함수이다. 효율적인 코드 작성에 도움이 된다.

// step1.
func completeWork(finished: Bool) -> () {
	// Bool 타입의 finished 매개변수를 받아 출력하는 리터 타입이 없는 함수
	print("complete: \(finished)")
}

// step2. 익명함수로 바꾸기
{	
	// (매개변수) -> 반환 타입 in 실행구문
	(finished: Bool) -> () in
	print("complete: \(finished)")
}

// step3. 컴파일러가 반환 타이ㅂ을 미리 알고 있다면 반화 타입 생략 가능
{
	// (매개변수) in 실행구문
	(finished: Bool) in
	print("complete: \(finished)")
}

// step4. 컴파일러가 매개변수의 파라미터 타입을 악 있다면 생략 가능. 만약 컴파일러가 finished 타입을 알 있다면 아래처럼 쓸 수 있음
{
	(finished) in
	print("complete: \(finished)")
}

// step5. 파라미터 타입이 생략된 경우 매개변수의 소괄호 생략 가능
{	
	// 매개변수 in 실행 구문
	finished in
	print("complete: \(finished)")
}

}






