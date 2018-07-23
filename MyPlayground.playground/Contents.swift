//: Playground - noun: a place where people can play

import UIKit
import Foundation



func matches(for regex: String, in text: String) -> [String] {
    
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

let string = "123"
let matched = matches(for: "^\\d+$", in: string)
print(matched)
