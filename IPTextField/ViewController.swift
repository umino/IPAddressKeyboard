//
//  ViewController.swift
//  IPTextField
//
//  Created by M.Toshima on 2016/05/18.
//  Copyright © 2016年 M.Toshima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ipTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ipkey = IPAddressKeyboard()
        ipkey.activeTextField = ipTextField
        
        ipTextField.inputView = ipkey
        ipTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

