import UIKit

func Isname(name:String) -> String{
    return "\(name)씨 안녕하세요."
}
// 매개변수 name:String, 반환 String
Isname(name: "이윤수")

func Isold(now_old old:Int) -> String{
    return "아 넌 벌써 \(old)구나"
}
// 매개변수 레이블 사용
Isold(now_old: 21)

func Isfriend(friend:String...) -> String{
    return "너는 친구가 \(friend.count)명 이구나 \n\(friend)"
}
// 가변매개변수 사용
Isfriend(friend: "이예슬", "이승민")
