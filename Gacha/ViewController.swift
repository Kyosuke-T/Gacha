//
//  ViewController.swift
//  Gacha
//
//  Created by 共田 恭輔 on 2016/02/18.
//  Copyright © 2016年 共田 恭輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gacha(){
        self.performSegueWithIdentifier("result", sender: nil)
    }

}

