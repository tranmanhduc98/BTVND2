//
//  main.swift
//  BTVNDAY2
//
//  Created by Trần Thanh Nguyên on 20/05/2021.
//

import Foundation

//1. Cho 3 số nguyên a, b c. Viết hàm trả về số nhỏ nhất và số lớn nhất.
//
//2. Cho 3 số nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của một tam giác không.
//
//- Nếu là 3 cạnh của một tam giác. Hãy tính diện tích của tam giác đó (sử dụng công thức Hê-rông).
//
//- Nếu không phải là 3 cạnh của một tam giác thì in ra a, b c không phải là 3 cạnh của một tam giác.
//
//3. Cho một năm công lịch bất kỳ, kiểm tra xem năm đó có phải là năm nhuận hay không.
//
//4. Cho số nguyên dương n. Tính tổng các số từ 1 đến n.
//
//5. Cho thời điểm T theo dạng: "giờ:phút:giây" và 1 số nguyên X <= 10000.
//
//- Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu?
//
//- Hãy in kết quả theo dạng "giờ:phút:giây"
//
//Ví dụ: Thời gian cho trước là 10:20:05, giá trị X = 300 => Thời gian kể từ thời điểm T sau 300 giây là: 10:25:05

//MARK:- bài 1
func findMax(a: Float,b: Float,c:Float)
{
    if a > b && a > c
    {
        print("a là sô lơn nhất ")
    }
    else if b>a && b > c
    {
        print("b là so lớn nhất")
    }
    else if c > a && c > b
    {
        print("c là so lon nhat ")
    }
}
findMax(a: 3, b: 4, c: 5)

func findMin(a: Float,b: Float,c:Float)
{
    if a < b && a < c
    {
        print("a là sô nhỏ nhất ")
    }
    else if b < a && b < c
    {
        print("b là so nhỏ nhất")
    }
    else if c < a && c < b
    {
        print("c là so nhỏ nhat ")
    }
}
findMin(a: 3, b: 4, c: 5)
//MARK: - bài 2
//2. Cho 3 số nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của một tam giác không.
//
//- Nếu là 3 cạnh của một tam giác. Hãy tính diện tích của tam giác đó (sử dụng công thức Hê-rông).
//
//- Nếu không phải là 3 cạnh của một tam giác thì in ra a, b c không phải là 3 cạnh của một tam giác.
func checkTrip(a : Float , b: Float , c: Float)

{
    if a == 0 || b == 0 || c == 0
    {
        print("a b c ko là cạnh của 1 tam giac")
        return
    }
    if a+b > c || b + c > a || c + a > b
    {
        print("a b c là 3 cạnh của 1 tam giac")
        let p : Float = (a + b + c)/2
        let s : Float = sqrtf(p*(p-a)*(p-b)*(p-c))
        print("dien tich của tam giac là \(s)")
    }
    else
    {
        print("a b c ko là cạnh của 1 tam giac")
    }
    
    
}
checkTrip(a: 0, b: 4, c: 5)

//MARK: - bài 3
// kiểm tra năm Nhuận
func checkYear( year : Int)
{
    if year < 0
    {
        print("năm ko hợp lệ")
    }
    else
    {
        let soDu = year % 4
        if soDu == 0
        {
            print("năm \(year) là năm nhuận")
        }
        else
        {
            print("năm \(year) ko là năm nhuận")
        }
    }
}
checkYear(year: 0)

//MARK: - bài 4
//4. Cho số nguyên dương n. Tính tổng các số từ 1 đến n.
func mathSum(n : Int)
{
    var sum : Int = 0
    if n <= 0
    {
        print("so n ko hợp lệ")
     
        return
    }
    else {
    for i in 1...n
    {
        
    sum = sum + i

    }
    print("tổng từ 1 đến \(n) la : \(sum)")
}
}
mathSum(n: 3)

//MARK: -bài 5
//5. Cho thời điểm T theo dạng: "giờ:phút:giây" và 1 số nguyên X <= 10000.
//
//- Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu?
//
//- Hãy in kết quả theo dạng "giờ:phút:giây"
//Ví dụ: Thời gian cho trước là 10:20:05, giá trị X = 300 => Thời gian kể từ thời điểm T sau 300 giây là: 10:25:05
func mathTime(h : Int , m : Int ,s: Int ,time : Int)
{
    if time < 0 || time >= 100000   || h < 0 || m < 0 || s < 0
    {
        print("X không hợp lệ")
    }
    else
    {
        let sumTime : Int = h * 3600 + m * 60 + s + time - 24 * 3600
        let soGio : Int = sumTime / 3600
        let soPhut : Int = (sumTime % 3600) / 60
        let soGiay : Int = (sumTime % 3600) % 60
         print("\(soGio) giờ : \(soPhut) phút: \(soGiay) giây")
    }
}
       
mathTime(h: 23, m: 59, s: 56, time: 66)
mathTime(h: 23, m: 59, s: 56, time: 3666)
