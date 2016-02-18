//
//  ResultViewController.swift
//  Gacha
//
//  Created by 共田 恭輔 on 2016/02/18.
//  Copyright © 2016年 共田 恭輔. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var haikeiImageview : UIImageView!
    @IBOutlet var monsterImageview : UIImageView!
    

    var monsterArray:[UIImage]!

    override func viewDidLoad(){
        super.viewDidLoad()
        
        let number = Int(rand() % 9)
        
        
        monsterArray = [UIImage(named: "monster001.png")!,
            UIImage(named: "monster002.png")!,
            UIImage(named: "monster003.png")!,
            UIImage(named: "monster004.png")!,
            UIImage(named: "monster005.png")!,
            UIImage(named: "monster006.png")!,
            UIImage(named: "monster007.png")!,
            UIImage(named: "monster008.png")!,
            UIImage(named: "monster009.png")!,
            UIImage(named: "monster010.png")!
        ]
        
        monsterImageview.image = monsterArray[number]
        
        if number == 9 {
            haikeiImageview.image = UIImage(named: "bg_gold.png")
        }
        else if number > 6{
            haikeiImageview.image = UIImage(named: "bg_red.png")
        }
        else{
             haikeiImageview.image = UIImage(named: "bg_blue.png")
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        
        animation.fromValue = NSNumber(double: 0)
        animation.toValue   = NSNumber(double: 2 * M_PI)
        animation.valueFunction = CAValueFunction(name: kCAValueFunctionRotateZ)
        animation.duration = 5
        animation.repeatCount = Float.infinity
        haikeiImageview.layer.addAnimation(animation, forKey: nil)
    }
    @IBAction func modoru() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

