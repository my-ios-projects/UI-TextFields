//: Playground - noun: a place where people can play

import UIKit

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




let string1 = "1"
var newString = ""
for char in string1 {
    char
}

// From Numbers to String
let x: Float = 132/1000
String(x)

// From String to numbers
let x1: String = "123"
Float(x1)




