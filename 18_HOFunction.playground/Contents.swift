import UIKit

// 고차함수란?
// 함수의 리턴 값이 될 수도 있고, 파라미터 값으로 들어갈 수 있는 함수를 말한다.
// map, filter, reduce가 있다.

// map
// 기존 컨테이너 값을 변형하여 새로운 컨테이너에 넣는 함수이다.
// 매개변수는 현재 값을 뜻하며 타입은 Int, 반환 값은 Int 타입
var list = [1,2,3,4,5]
var newList = list.map{ (number:Int) -> Int in
    return number * 2
}
/*
 var newList = list.map{
    $0 * 2
 }
 // 간소화
 */
print(newList)

// filter
// 기존 컨테이너 값을 걸러서 새로운 컨테이너에 넣는 함수이다.
// 매개변수는 현재 값을 뜻하며, 타입은 String, 반환 값은 bool 타입
var oldValue = ["짜장면", "짬뽕", "탕수육", "마라탕", "마라샹궈"]
var newValue = oldValue.filter({ (value:String) -> Bool in
    return value.count == 3
})
/*
 var newValue = oldValue.filter{
    $0.count == 3
 }
 // 간소화
 */
print(newValue)

// reduce
// 기존 컨테이너 값을 더해서 새로운 컨테이너에 넣는 함수이다.
// 첫 번째 매개변수는 초기값, 두 번째 클로저의 첫 번째 매개변수는 합계 값 Int 타입, 두 번째 매개변수는 현재 값 Int 타입, 반환 값은 Int 타입
var math = [1,2,3,4,5,6,7,8,9,10]

var total = math.reduce(0, { (total:Int, now:Int) -> Int in
    print(total, now)
    return total + now
})
/*
 var total = math.reduce(0){
    print($0, $1)
    return $0 + $1
 }
 // 간소화
 */
print(total)
