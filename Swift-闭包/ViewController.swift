//
//  ViewController.swift
//  Swift-协议
//
//  Created by sen5labs on 14-10-11.
//  Copyright (c) 2014年 sen5labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var valueLabel: UILabel!
    
    
    var secVC:SecondController = SecondController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        secVC.myClosure = {(text:String) -> Void in
        
            println("\(text)")
            self.valueLabel.text = text
        }
    }
    
    @IBAction func push() {
        
        self.navigationController?.pushViewController(secVC, animated: true)
        
        
    }

}

