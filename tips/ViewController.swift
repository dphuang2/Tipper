//
//  ViewController.swift
//  tips
//
//  Created by Dylan Huang on 12/6/15.
//  Copyright © 2015 Dylan Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    let defaults = NSUserDefaults.standardUserDefaults()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated)
        
        var tipPercentages = [0.18,0.2,0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        let billFieldDefault = defaults.valueForKey("billDefault")
        billField.text = billFieldDefault as? String
        [billField .becomeFirstResponder()]
        let intValue = defaults.integerForKey("integerDefault")
        defaults.synchronize()
        tipControl.selectedSegmentIndex = intValue
        var fontSizes = [18,23,28]
        let fontSize = fontSizes[tipControl.selectedSegmentIndex]
        let fontSizeFloat = CGFloat(fontSize)
        tipLabel.font = UIFont(name: tipLabel.font.fontName, size: fontSizeFloat)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func fontChange(sender: AnyObject) {
        var fontSizes = [18,23,28]
        let fontSize = fontSizes[tipControl.selectedSegmentIndex]
        let fontSizeFloat = CGFloat(fontSize)
        tipLabel.font = UIFont(name: tipLabel.font.fontName, size: fontSizeFloat)
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        let billDefault = billField.text
        defaults.setValue(billDefault, forKey: "billDefault")
        
        var tipPercentages = [0.18,0.2,0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
}
