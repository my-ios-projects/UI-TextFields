//
//  cash_delegate.swift
//  UI textfields
//
//  Created by Taha Magdy on 7/22/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import Foundation
import UIKit


class CashDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        
        return true
    } // end textField
    
    

} // end CashDelegate
