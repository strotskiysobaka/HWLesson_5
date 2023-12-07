//
//  ViewController.swift
//  Ls_5_Optionals.Enums
//
//  Created by Strotskiysobaka on 03.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //HW
        //1.Написать функцию, которая принимает опциональное число и, если оно есть, умножает его на 2
        
        func optCheck(number: Int?) {
            if let vlu = number {
                print (vlu * 2)
            } else {
                print ("Sorry, значения нет")
            }
        }
        
        optCheck(number: 7)
        
        
        
        //2.Использовать force unwrap для извлечения значения из опциональной переменной. Затем добавьте условие, чтобы обработать случай, если значение равно nil.
        
        
        let optionalValue: Double? = 12.3
        let chk = optionalValue!
        if chk == nil {
            print ("it's nil")
        } else {
            print (chk * 4)
        }
        
        //тут наверное не совсем то что ты хотел, но в этом случае при получении nil он не крашается)
        let optionalValueO: Double? = nil
        let vlue = optionalValueO
        if vlue == nil {
            print ("oh, it's nil")
        } else {
            print (vlue! * 4)
        }
        
        
        //3.Написать функцию, использующую оператор guard для проверки опционального значения. Если значение равно nil, выведите сообщение об ошибке, в противном случае выполните операцию с извлеченным значением. 3-4 примера
        
        func optValueCheck(optValue: Int?) {
            guard let value = optValue else {
                print ("Warning: значения НЕТ!")
                return }
            let operWithNum = (value * 2)
            print (operWithNum)
        }
        
        //тут решил через перегрузку еще дополнительно попробовать
        func optValueCheck(optValue: String?) {
            guard let value = optValue else {
                print ("Warning: значения НЕТ!")
                return }
            let operWithNum = ("\(value) - это строка ")
            print (operWithNum)
        }
        
        func dividingOnlyEven(optValue: Int?) {
            guard let value = optValue else {
                print ("Warning: значения НЕТ!")
                return }
            
            guard value % 2 == 0 else {
                print ("оно нечётное")
                return
            }
            
            let valueOne = (value / 2)
            print (valueOne)
        }
        
        
        optValueCheck(optValue: 13)
        optValueCheck(optValue: "Word")
        dividingOnlyEven(optValue: nil)
        
        
        //4.Напишите функцию, которая принимает строку и пытается преобразовать ее в целое число. Если преобразование возможно, верните число, если нет - nil
        
        //как будто-то бы работает, но честно говоря вообще не уверен в этом коде)
        
        func stringToNum(string: String) -> Int? {
            let checking = Int(string)
            if Int(string) == checking {
                return Int(string)
            } else {
                return nil
            }
        }
        
        print (stringToNum(string: "453"))
        
        
        //5.Создать перечисление Book. Напишите функцию, которая принимает Book и выводит описание книги
        
        
        //это можно не смотреть, еще не разобрался)
        
        
        //        enum Book {
        //
        //            enum Joanne_Rowling {
        //                case HarryPotter(pubDate: Int, countOfPages: Int, rating: Int)
        //                case BlackHeart(pubDate: String, countOfPages: Int, rating: String)
        //            }
        //
        //            enum Stephen_King {
        //                case It(pubDate: Int, countOfPages: Int, rating: Int)
        //                case TheShining(pubDate: String, countOfPages: Int, rating: String)
        //            }
        //
        //
        //                }
        //
        //
        
        
    }
    
    
}



