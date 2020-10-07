// Mark: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12
// let someDouble: Double = someAny 오류 발생 : Any는 Double 타입이 아니기 때문에 명시적 형변환 해야한다.


// Mark: - AnyObject

class SomeClass {}
var someAnyObject: AnyObject = SomeClass()
// someAnyObject = 123.12 오류 발생 : 클래스이 인스턴스만 슈용 가능
// String, Int, Double 모두 구조체로 되어있어

// Mark: -nil
// someAny = nil : 빈 값은 할당 불가
// someAnyObject = nil : 빈 값은 할당 불가
