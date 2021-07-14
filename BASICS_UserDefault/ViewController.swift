//
//  ViewController.swift
//  BASICS_UserDefault
//
//  Created by 樋口大樹 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    let defaults = UserDefaults.standard
    
    @IBOutlet weak var setGreenButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 背景色の初期値を設定する.
        // すでに値が設定してある場合は, この処理で上書きされることはない.
        defaults.colorRegister(UIColor.red, forKey:"myColor")
        
        //UserDefaultsから色情報を取得する.
        let backgroundColor = defaults.colorObject(forKey: "myColor")
        if let backgroundColor = backgroundColor{
            print(backgroundColor)
        }else{
            print("Failed to load the color from UserDefaults.")
        }
        view.backgroundColor = backgroundColor
    }
    
    @IBAction func setGreenColor() {
        print("save green by SserDefaults")
        let myColor = UIColor.green
        //保存したい色をUserDefaultsに保存する.
        defaults.setColor(myColor, forKey: "myColor")
        self.viewDidLoad()
    }
}

