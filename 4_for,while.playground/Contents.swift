import UIKit

for i in 0...9{
    print(i)
}
// i는 루프 상수, in 을 통해 지정
// "..." 범위는 순회대상

var i = 1

while i<10{
    print(i)
    i+=1
}
// 조건에 맞을 때 까지 반복
// true를 넣으면 무한 반복

var a = 0

repeat {
    print(a)
    a+=1
} while a <= 5
// 1번은 조건 없이 실행 후 2번째부터 조건 확인
