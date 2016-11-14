//
//  ViewController.swift
//  MentorBook
//
//  Created by Aoi Sakaue on 2016/11/14.
//  Copyright © 2016年 Sakaue Aoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    //表示するメンターの番号
    var index : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //配列にメンターのインスタンスを追加
        mentorArray.append(Mentor(name: "はしお", imageName: "hashio.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "あぐり", imageName: "aguri.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS,WebD"))
        
        //setUiメソッドを呼び出す
        setUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setUI() {
        //index番目のメンターの情報が表示されるように
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae() {
        index = index - 1
        if index < 0  {
            index = index + 1
        }
        setUI()
    }
    
    @IBAction func tugi(){
        index = index + 1
        if index > 2 {
            index = index - 1
        }
        setUI()
    }

}

