//
//  ++UserDefaults.swift
//  BASICS_UserDefaults
//
//  Created by 樋口大樹 on 2021/06/15.
//

import UIKit
import Foundation

extension UserDefaults {
    func setColor(_ color: UIColor, forKey key: String){
        //UIColorをUserDefaultsに保存するための関数.
        //保存したい色をエンコードする.
        let colorEncoded = try? NSKeyedArchiver.archivedData(withRootObject: color, requiringSecureCoding: false)
        if let colorEncoded = colorEncoded{
            //エンコードした色をUserDefaultsに保存する.
            set(colorEncoded, forKey: key)
        }else{
            print("Failed to encode the color.")
        }
    }
    
    func colorObject(forKey key: String) -> UIColor?{
        //UserDefaultsからUIColorを取得するための関数.
        var colorReturned: UIColor?
        let colorFromUD = object(forKey: "myColor") as? Data
        //シャドーイング, OptionalBindingのときのみ使える. 変数多くなるからこう書けると便利.
        if let colorFromUD = colorFromUD{
            let colorDecoded = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(colorFromUD) as? UIColor
            if let colorDecoded = colorDecoded{
                colorReturned = colorDecoded
            }else{
                print("Failed to decode the color.")
            }
        }else{
            print("Failed to load the color.")
        }
        return colorReturned
    }
    
    //UserDefaultsを用いたカラー初期値の登録用の関数.
    func colorRegister(_ color: UIColor, forKey key: String){
        let colorEncoded = try? NSKeyedArchiver.archivedData(withRootObject: color, requiringSecureCoding: false)
        if let colorEncoded = colorEncoded{
            //エンコードした色をUserDefaultsに保存する.
            register(defaults: [key: colorEncoded])
        }else{
            print("Failed to encode the color.")
        }
    }
}
