//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Int {
        // 問題1: 3の倍数かどうか調べる
        if number % 3 == 0 {
            return 1
        }
        
        // 問題2: 1の位が3かどうか調べる
//        if number % 10 == 3 {
//            return true
//        }
        
        // 問題3: 10の位が3かどうか調べる
//        if number / 10 % 10 == 3 {
//            return true
//        }

        // 問題4: 3がつくかどうか調べる
        // 問題4をやるときは問題3と問題2の答えを消してから書こう
        var checkNum: Int = number
        while checkNum != 0 {
            if checkNum % 10 == 3 {
                return 1
            } else {
                checkNum = checkNum / 10
            }
        }
        
        //オリジナル機能: 5の倍数の時は犬っぽくなる
        if number % 5 == 0 {
            return 2
        }

        
        return 0
    }
    
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == 1 {
            
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
            
        } else if isAho() == 0 {
            
            faceLabel.text = "(゜o゜)"
        } else if isAho() == 2 {
            
            faceLabel.text = "∪･ω･∪"
        }
    }
    
    @IBAction func clear() {
        number = 0
        countLabel.text = String(number)
    }


}

