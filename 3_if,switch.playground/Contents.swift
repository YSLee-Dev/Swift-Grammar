import UIKit

var tem:Int = 20

if tem <= 10{
    print("음.. 춥다.")
}else if tem <= 20{
    print("날씨가 괜찮네")
}else if tem <= 30{
    print("음 덥다.")
}else{
    print("워매")
}
// if, if else, else 사용

var hum:Int = 50

switch hum {
case 0...30:
    print("가습기 가동")
case 31...50:
    print("적정 습도")
case 51...99:
    print("제습기 가동")
default:
    print("이상기후")
}
// switch 사용
