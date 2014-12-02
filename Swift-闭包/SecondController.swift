//
//  SecondController.swift
//  Swift-协议
//
//  Created by sen5labs on 14-10-11.
//  Copyright (c) 2014年 sen5labs. All rights reserved.
//

import UIKit

// 闭包
typealias sendValueClosure = (text:String)->Void

class SecondController: UIViewController {

    var myClosure:sendValueClosure?
    
    var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.redColor()
        textField = UITextField(frame: CGRectMake(30, 100, 260, 30))
        textField.borderStyle = UITextBorderStyle.RoundedRect
        self.view.addSubview(textField)
        
      var btn = UIButton(frame: CGRectMake(30, 150, 260, 30))
        btn.setTitle("click", forState: UIControlState.Normal)
        btn.addTarget(self, action: Selector("click"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
    }

    
    // 点击这里传值过去
    func click() {

        let str:String = textField.text
        
        if (myClosure != nil){
            myClosure!(text:str)
        }
        
        self.navigationController?.popViewControllerAnimated(true)
        
        
    }
  

}
