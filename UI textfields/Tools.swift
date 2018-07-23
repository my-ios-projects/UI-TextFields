//
//  Tools.swift
//  UI textfields
//
//  Created by Taha Magdy on 7/23/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import Foundation

class Tools {

static func matches(for regex: String, in text: String) -> [String] {
    
    do {
        let regex = try NSRegularExpression(pattern: regex)
        let results = regex.matches(in: text,
                                    range: NSRange(text.startIndex..., in: text))
        return results.map {
            String(text[Range($0.range, in: text)!])
        }
    }
        
    catch let error {
        print("invalid regex: \(error.localizedDescription)")
        return []
    }
}


}
