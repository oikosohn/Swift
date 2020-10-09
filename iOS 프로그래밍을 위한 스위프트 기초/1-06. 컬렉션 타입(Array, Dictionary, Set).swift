/*
Array - 순서가 있는 리스트 컬렉션
Dictionary - 키와 값이 쌍으로 이루어진 컬렉션
Set - 순서가 없고, 멤버가 유일한 컬렉션
*/

// Mark: - Array

// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
integers.append(101)
// intergers.append(101.1) 자료형 int가 아니라서 추가안 됨
print(integers)

print(integers.contains(100)) // true
print(integers.contains(99)) // false

integers.remove(at:0)
integers.removeLast()
integers.removeAll()

print(integers.count)

// integers[0] : 비어있는 index 전급하면 exception 런타임 오류 발생

// Array<Double>와 [Double]는 동일한 표현
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]() // ():인스턴스 생성

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
// []는 새로운 빈 Array
var characters: [Character] = []

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1,2,3]

// immutableArray.append(4)
// immutableArray.removeAll() 변경 불가능해서 둘다 오류 발생


// Mark: - Dictionary
// key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String:Any]()
anyDictionary["someKey"]="value"
anyDictionary["anotherKey"]=100
print(anyDictionary)

anyDictionary["someKey"]="dictionary"
print(anyDictionary)


// 둘다 키와 밸류 사라짐
anyDictionary.removeValue(forKey: "anotherKey")
print(anyDictionary)

anyDictionary["someKey"]=nil
print(anyDictionary)


let emptyDictionary: [String:String] = [:]
let initializedDictionary: [String:String] = ["name":"ya","gender":"M"]

// 불변 Dictionary이므로 값 변경 불가
//emptyDictionary["key"] = "value"

// 키에 해당하는 값을 다른 변수나 상수에 할당하고자 할 때는 옵셔널과 타입 캐스팅 파트에서 다룹니다
// "name"이라는 키에 해당하는 값이 없을 수 있으므로 String 타입의 값이 나올 것이라는 보장이 없습니다.
// 컴파일 오류가 발생합니다
// let someValue: String = initalizedDictionary["name"]



// Mark: - Set : 축약문법 없음
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(10)
integerSet.insert(10)
integerSet.insert(10)
print(integerSet)

integerSet.remove(10)
integerSet.removeFirst()

print(integerSet.count)

let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

// 합집합
let union: Set<Int> = setA.union(setB)
print(union)
let sortedUnion: [Int] = union.sorted()
print(sortedUnion)

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection)

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting)