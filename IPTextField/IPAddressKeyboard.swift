//
//  IPAddressKeyboard.swift
//  IPTextField
//
//  Created by M.Toshima on 2016/05/18.
//  Copyright © 2016年 M.Toshima. All rights reserved.
//

import UIKit

@objc(IPAddressKeyboard)
class IPAddressKeyboard: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    var activeTextField : UITextField? = nil
    
    @IBOutlet var contentView: IPAddressKeyboard!
    @IBOutlet weak var backspaceButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var dotButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        commInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        commInit()
    }
    
    func commInit() {
//        let view = NSBundle.mainBundle().loadNibNamed("IPAddressKeyboard", owner: self, options: nil).first as! UIView
        NSBundle.mainBundle().loadNibNamed("IPAddressKeyboard", owner: self, options: nil)
        //大事
        contentView.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, 120)
        frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, contentView.frame.height)
        
        addSubview(contentView)
        
        //不要か
        translatesAutoresizingMaskIntoConstraints = true
//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        contentView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
//        autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
//        let bindings = ["view": contentView]
//        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[view]-0-|",
//            options: NSLayoutFormatOptions(rawValue: 0),
//            metrics: nil,
//            views: bindings))
//
//        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[view]-0-|",
//            options: NSLayoutFormatOptions(rawValue: 0),
//            metrics: nil,
//            views: bindings))
    }
    
    
    @IBAction func pushNumButton(sender: AnyObject) {
        guard let activeTextField = activeTextField else {return}
        do {
            let numtag = String(format: "%d", sender.tag!)
            activeTextField.text = activeTextField.text?.stringByAppendingString(numtag)
        }
    }
    
    @IBAction func pushDotButton(sender: AnyObject) {
        guard let activeTextField = activeTextField else {return}
        do {
            activeTextField.text = activeTextField.text?.stringByAppendingString(".")
        }
    }
    
    @IBAction func pushBackspaceButton(sender: AnyObject) {
        activeTextField?.deleteBackward()
    }
    
    @IBAction func pushCloseButton(sender: AnyObject) {
        activeTextField?.resignFirstResponder()
    }
}
