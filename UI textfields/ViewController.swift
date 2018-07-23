//
//  ViewController.swift
//  UI textfields
//
//  Created by Taha Magdy on 7/22/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI objects
    @IBOutlet weak var tfDigitsOnly: UITextField!
    @IBOutlet weak var tfCash: UITextField!
    @IBOutlet weak var tfLockable: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!
    
    // Delegates
    let digits_delegate = DigitsDelegate()
    let cash_delegate = CashDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tfDigitsOnly.delegate = self.digits_delegate
        self.tfCash.delegate = self.cash_delegate
    }

    
    @IBAction func lockableAction(_ sender: Any) {
        
        
        if lockSwitch.isOn {
            tfLockable.isEnabled = true
        } else {
            tfLockable.isEnabled = false
        }
        
        
    } // end lockableAction
    
    
    
    
    

} // end ViewController

