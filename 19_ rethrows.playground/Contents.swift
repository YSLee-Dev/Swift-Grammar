import UIKit

// Rethrows란?
// 파라미터로 받은 클로저가 throws를 내뱉을 때 그대로 전달하는(다시 던지는) 키워드
// 사용하려면, 파라미터에 하나 이상 throws를 내뱉은 클로저를 받아야함

enum MyError: Error {
    case 난_파라미터_에러야
    case 난_함수_에러야
}

func paramError() throws  {
    throw MyError.난_파라미터_에러야
}

func rethrowsFunction(param: () throws -> Void) rethrows {
    try param()
}

do {
    try rethrowsFunction(param: paramError)
} catch {
    print(error)
}

// rethrows로 그대로 throws를 내뱉을 수도 있지만, catch를 통해 변형하여 내뱉을 수도 있음
func transformFunction(param: () throws -> Void) rethrows {
    do {
        try param()
    } catch {
        throw MyError.난_함수_에러야
    }
}

do {
    try transformFunction(param: paramError)
} catch {
    print(error)
}

// 프로토콜, 클래스로 채택/상속 받는 경우 기존 rethrows 함수를 throws 함수로 변경할 수는 없지만, throws 함수를 rethrows 함수로 변경하여 사용할 수는 있음
protocol isProtocol {
    func throwsFunc(param: () throws -> Void) throws
    func rethrowsFunc(param: () throws -> Void) rethrows
}

struct thisIsStruct: isProtocol {
    func throwsFunc(param: () throws -> Void) rethrows {
    }
    func rethrowsFunc(param: () throws -> Void) rethrows {
        // throws로 변경 불가
    }
}
