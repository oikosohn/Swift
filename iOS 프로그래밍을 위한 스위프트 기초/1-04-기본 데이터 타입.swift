
// Swift의 기본 데이터 타입

// Bool
var someBool: Bool = true
someBool = false
// someBool = 0 
// someBool = 1
// Bool 타입에 정수값 할당해서 컴파일 오류 발생


// Int
var someInt: Int = 100


// UInt : 양의 정수
var someUInt: UInt = 100
// someUInt = -100
// someUInt =  someInt : 데이터 타입 달라서 오류발생


// Float
var someFloat: Float = 3.14
someFloat = 3 // OK


// Double
var someDouble: Double = 3.14
someFloat = 3 // OK
// someDouble = someFloat 데이터 타입 달라서 오류발생


// Character 유니코드로 표현 가능한 모든 문자 사용가능
var someCharacter: Character = "🇰🇷"
someCharacter = "😄"
someCharacter = "가"
someCharacter = "A"
// someCharacter = "하하하" 문자열 타입이라 오류 발생
print(someCharacter)


// String
var someString: String = "하하하 😄 "
someString = someString + "웃으면 복이와요"
print(someString)
// someString = someCharacter 컴파일 오류 발생

// 다른 자료형과 자료교환 암시적으로 불가해서 변수에 다른 자료형을 할당하기 위해서는 자료형을 변환시켜야 한다.


// 생각해보기
let integer = 100
let floatingPoint = 12.34
let apple = "A"
print(type(of: integer))
print(type(of: floatingPoint))
print(type(of: apple))