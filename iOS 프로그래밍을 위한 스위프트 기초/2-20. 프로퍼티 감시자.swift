// 20. 프로퍼티 감시자

// 프로퍼티 감시자를 사용하면 프로퍼티의 값이 변경될 때 원하는 동작을 수행할 수 있습니다.

struct Money {
  // 프로퍼티 감시자 사용
  var currencyRate: Double = 1100 {
    willSet(newRate) { // 바뀌기 직전 호출 newRate = 바뀔 값
      print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다.")
    }
    didSet(oldRate) { // 바뀐 후 호출 oldRate = 바뀌기 이전 값
      print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다.")
    }
  }

  // 프로퍼티 감시자 사용
  var dollar: Double = 0 {
    // willSet의 암시적 매개변수 이름 newValue
    willSet { // willSet의 암시적 매개변수 newValue
      print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다.")
    }
    didSet { // didSet의 암시적 매개변수 oldValue
      print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다.")
    }
  }

  // 연산 프로퍼티의
  var won: Double {
    get {
      return dollar * currencyRate
    }
    set {
      dollar = newValue / currencyRate
    }

    // 연산 프로퍼티 안에 willSet, didSet 사용 불가 => willSet, didSet 저장되는 값이 변경되기 때문
  }
}

var moneyInMyPocket: Money = Money()

moneyInMyPocket.currencyRate = 1150

moneyInMyPocket.dollar = 10

print(moneyInMyPocket.won)
