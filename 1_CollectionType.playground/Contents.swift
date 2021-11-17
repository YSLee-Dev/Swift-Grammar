import UIKit


// Array
var array : [String] = [] // 선언
array.append("0. 이윤수") // 값 추가
array.append("1. 이예슬") // 값 추가
array[0] // 값에 접근
array.insert("2. 이예슬", at: 2) // 원하는 위치에 값 추가
array.insert("3. 이예슬", at: 3) // 원하는 위치에 값 추가
array.remove(at: 3) // 값 제거

// 응용 (사이트 참고)
array[1...2] = ["1. 이승민", "2. 김정한"] // 범위를 통해 한번에 값 수정
/*
array.removeAll()
array.removeFirst/Last() 배열 첫번째/마지막 데이터 삭제
()안에 파라미터를 넣으면 파라미터로 받은 개수만큼 삭제
removeSubrange()  파라미터로 받은 범위만큼 삭제
 */

array.dropFirst() // 첫번째 데이터만 빼고 반환
array.dropLast() // 마지막 데이터만 빼고 반환
array.startIndex // 첫번째 인덱스를 뜻함
array.endIndex // 마지막 인덱스를 뜻함(endIndex는 +1되서 나오니 주의)
array.first // 첫번째/마지막 데이터에 접근
array.last // 첫번째/마지막 데이터에 접근
array.max() // 배열의 가장 큰 값을 반환
array.min() // 배열의 가장 작은 값을 반환
array.sort() // 배열의 오름차 정렬
array.reverse() // 배열의 내림차 정렬
array.sorted() // 오름차 정렬 후 반환
// array.sorted(by: >)를 통해 내림차 정렬 후 반환도 가능
array.count // 배열 개수
array.isEmpty // 배열 비었는지 여부
array.contains("1. 이승민") // 배열에 해당 값이 존재하는지 여부를 반환
array.contains { num in
    num == "0. 이윤수" // 클로저를 통해 작업 가능
}


// Dictionary
var dic:[String:Int] = [:] // 선언
// 선언과 동시에 값을 넣을 수 있음 ["키":값]
dic["이윤수"] = 0 // 값 을 통해 값을 추가&수정
dic["이예슬"] = 1
dic.removeValue(forKey: "이예슬") // 값 제거
dic
/*
Set
var set: Set = Set<Int>()를 통해 선언
set.insert(값) 를 통해 값 추가
set.remove(값) 를 통해 값 제거
*/
