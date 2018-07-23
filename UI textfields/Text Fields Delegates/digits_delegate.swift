//
//  digits_delegate.swift
//  UI textfields
//
//  Created by Taha Magdy on 7/22/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import Foundation
import UIKit



class DigitsDelegate : NSObject, UITextFieldDelegate {
    

    let tools = Tools()
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textField.text = ""
        return true
    }


    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        let test = textField.text! + string
        let matched = tools.matches(for: "^\\d+$",
                                    in: test)
        print(matched)
        
        if matched.count == 0 {
            return false } else { return true }
        
    } // end shoudChangeCharactersIn()
    
    
    
    
    
    
} // end Digits
