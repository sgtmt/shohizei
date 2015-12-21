//
//  ViewController.swift
//  shohizei
//
//  Created by 長沢　遼 on 2015/12/21.
//  Copyright © 2015年 Sxil. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate,UITextFieldDelegate {
    @IBOutlet weak var atai: UITextField!

    @IBOutlet weak var dataText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        atai.delegate = self
    }
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        var tmp = textField.text! as NSString
        tmp = tmp.stringByReplacingCharactersInRange(range, withString: string)
        if tmp == ""{
           dataText.text=""
        }else{
            let num = Int(tmp as String)
            dataText.text=String(num! * 25)
        }
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

