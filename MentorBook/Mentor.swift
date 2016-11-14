//
//  Mentor.swift
//  MentorBook
//
//  Created by Aoi Sakaue on 2016/11/14.
//  Copyright © 2016年 Sakaue Aoi. All rights reserved.
//
//UIKit???
import UIKit

class Mentor {
    
    var name: String! //メンター名
    var course: String! //担当コース
    var imageName: String! //顔写真（画像の写真）
    
    //初期化　引数でメンター名、担当コース、顔写真をもらって設定している
    //selfはメンタークラス自身（self） 下で変数に代入
    init(name: String, imageName: String, course: String) {
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    //戻り値とは！
    //このメソッドでは何をしようとしているか
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
        
    }
    
    
}
