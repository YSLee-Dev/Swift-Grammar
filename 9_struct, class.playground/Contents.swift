import UIKit

// 클래스와 구조체의 차이점

class Cperson {
    var name:String = "이윤수"
}

struct Sperson {
    var name:String = "이윤수"
}

var class1 = Cperson()
var class2 = class1
class2.name = "이예슬"
class1.name
class2.name
// 클래스는 참조 타입이다.
// 변수를 복사하더라도 같은 인스턴스를 가르키고 있다.
// class2와 class1은 같은 인스턴스에 "참조"하기 때문에 값이 변경된다.

var struct1 = Sperson()
var struct2 = struct1
struct2.name = "이예슬"
struct1.name
struct2.name
// 구조체는 값 타입이다.
// 같은 구조체를 할당하더라도 값이 복사되기 때문에 새로운 메모리를 할당한다.
