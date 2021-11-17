import UIKit


class Mac{
    var name:String
    init(name:String) {
        self.name = name
    }
}
// 상속받는 프로퍼티의 초기값이 세팅이 안되있으면, 상속받을 때 해줘야함
class Imac:Mac{
    var inch:Int
    init(name:String, inch:Int) {
        self.inch = inch
        super.init(name: name)
    }
}

class Mini:Mac{
    var cpu:String
    init(name:String, cpu:String) {
        self.cpu = cpu
        super.init(name: name)
    }
}
// 배열에 인스턴스를 넣는 것
// 같은 부모를 상속받고 있는 경우 배열에 넣을 수 있고, 타입은 슈퍼클래스 타입이다.
var applestore = [ // mac 타입
    Imac(name: "2021년 아이맥", inch: 21),
    Mini(name: "2020년 맥미니", cpu: "M1"),
    Imac(name: "2020년 아이맥", inch: 27)
]

// is라는 키워드를 통해 인스턴스의 타입을 알 수 있다.
for mac in applestore{
    if mac is Imac{
        print("\(mac)은 아이맥 타입입니다.")
    }else if mac is Mini{
        print("\(mac)은 맥미니 타입입니다.")
    }
}

print(applestore)
// 슈퍼 클래스의 변수, 상수는 서브 클래스의 인스턴스 타입으로 바꿀 수 있다.
// as라는 키워드를 통해 다운캐스팅이 가능하다.
// -> 인스턴스 타입을 바꿀 수 있다.
// as!는 강제로 해제, as?는 옵셔널 값으로 반환
for mac in applestore{
    if let imac = mac as? Imac{
        print("\(imac.inch)인치의 아이맥")
    }else if let mini = mac as? Mini{
        print("\(mini.cpu)의 맥미니")
    }
}


// 슈퍼클래스는 서브클래스 타입으로 형변환이 가능하다.
var su = Mac(name: "super")
var susu = su as? Imac
print(susu)

// 서브클래스는 슈퍼클래스로 형변환을 할 수 있다.
var sub = Imac(name: "sub", inch: 0)
var subsub = sub as? Mac
print(sub.inch)
print ((subsub as! Imac).name)
