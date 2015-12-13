//
//  SettingsViewController.swift
//  tips
//
//  Created by Dylan Huang on 12/12/15.
//  Copyright © 2015 Dylan Huang. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {
    

    let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var tipControl: UISegmentedControl!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let intValue = defaults.integerForKey("integerDefault")
        tipControl.selectedSegmentIndex = intValue
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipValueChange(sender: AnyObject) {
    
        defaults.setInteger(tipControl.selectedSegmentIndex, forKey:"integerDefault")
        defaults.synchronize()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
