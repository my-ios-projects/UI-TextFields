//: Playground - noun: a place where people can play

import Foundation

let test = "0123Kello World"
let range = NSRange(location: 0, length: test.utf16.count)
let regax = try! NSRegularExpression(pattern: "[A-Z]ello")


let result = regax.matches(in: test, options: [], range: range)
print(result.first)

