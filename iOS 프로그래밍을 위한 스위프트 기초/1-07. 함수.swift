// 함수

// 함수의 선언
// 1. 함수 선언의 기본 형태 : 
// func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//     /* 함수 구현부 */
//     return 반환값
// }

// 예)
// sum이라는 이름을 가지고 
// a와 b라는 Int 타입의 매개변수를 가지며 
// Int 타입의 값을 반환하는 함수
func sum(a: Int, b: Int) -> Int {
    return a + b
}
// 2. 반환 값 없는 함수 선언
// func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> Void {
//     /* 함수 구현부 */
//     return
// }

// 예)
func printMyName(name: String) -> Void {
    print(name)
}


// 반환 값이 없는 경우, 반환 타입(Void)을 생략해 줄 수 있습니다
func printYourName(name: String) {
    print(name)
}


// 3. 매개변수가 없는 함수
// func 함수이름() -> 반환타입 {
//     /* 함수 구현부 */
//     return 반환값
// }
func maximumIntegerValue() -> Int {
    return Int.max
}


// 4. 매개변수와 반환 값이 없는 함수
// func 함수이름() -> Void {
//     /* 함수 구현부 */
//     return
// }

func hello() -> Void { print("hello") }

func bye() { print("bye") }

// 5. 함수의 호출
print(sum(a: 3, b: 5)) // 8
printMyName(name:"yo")
printYourName(name: "gom")
print(maximumIntegerValue()) // Int의 최댓값
hello()
bye()

