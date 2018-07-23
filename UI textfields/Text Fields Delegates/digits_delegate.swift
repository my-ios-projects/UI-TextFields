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


    
    // Allow digits only
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        let test = textField.text! + string
        let matched = tools.matches(for: "^\\d{0,5}$",
                                    in: test)

        if matched.count == 0  {
            return false // Do not allow non-numbers to be writting in tge textField
        } else { return true }
        
    } // end shoudChangeCharactersIn()
    
    
    
    
    
    
} // end Digits
