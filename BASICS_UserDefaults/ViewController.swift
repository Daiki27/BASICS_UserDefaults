//
//  ViewController.swift
//  BASICS_UserDefaults
//
//  Created by 樋口大樹 on 2021/06/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        //let myColor: UIColor = UIColor.red
        let rValue = 1
        let gValue = 0
        let bValue = 0
        //defaults.set(myColor, forKey: "mainColor")
        defaults.set(rValue,forKey: "R")
        defaults.set(gValue,forKey: "G")
        defaults.set(bValue,forKey: "B")
        
        let R = defaults.float(forKey: "R")
        let G = defaults.float(forKey: "G")
        let B = defaults.float(forKey: "B")
        print(CGFloat(R))
        let myColor = UIColor(red: CGFloat(R), green: CGFloat(G), blue: CGFloat(B), alpha: 1.0)
        let myColor2 = UIColor(red: 1, green: 0, blue: 0, alpha: 1.0)
        view.backgroundColor = myColor
        //let mainColor = defaults.string(forKey: "mainColor")
        //view.backgroundColor = mainColor
    }


}

