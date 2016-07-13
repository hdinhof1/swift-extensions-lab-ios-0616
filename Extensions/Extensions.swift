//
//  Extensions.swift
//  Extensions
//
//  Created by Henry Dinhofer on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    func whisper() -> String {
        return self.lowercaseString
    }
    
    func shout() -> String {
        return self.uppercaseString
    }
    
    var pigLatin : String {
        var word = self.whisper()
        if self.isEmpty { }
        else if self.characters.count == 1 { }
        else if self.characters.contains(" ") {
            let sentence = word.componentsSeparatedByString(" ")
            word = ""
            for currentWord in sentence {
                var currentWord = currentWord  //never knew I could do this!
                currentWord.append(currentWord.characters.first!)
                currentWord = String(currentWord.characters.dropFirst())
                currentWord += "ay"
                word += currentWord + " "
            }
            word = String(word.characters.dropLast()) //removes trailing space
        }
        else {
            //think this could be simplified with a closure, D.R.Y.
            word.append(word.characters.first!)
            word = String(word.characters.dropFirst())
            word += "ay"
        }
        word = word.capitalizedString
        
        return word
    }
    
    var points : Int {
        var count = 0
        let word = self.lowercaseString
        for letter in word.characters {
            switch letter {

            case "a", "e", "i", "o", "u":
                count += 2
            case " ", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
                break
            default:
                count += 1
                
            }
        }
        return count
    }
    var unicornLevel : String {
        let word = self.removeWhiteSpace()
        var phrase = ""
        for _ in word.characters {
            phrase += "🦄"
        }
        return phrase
    }
    
    func replace(string:String, replacement:String) -> String {
        return self.stringByReplacingOccurrencesOfString(string, withString: replacement, options: NSStringCompareOptions.LiteralSearch, range: nil)
    }

    func removeWhiteSpace() -> String {
        return self.replace(" ", replacement: "")
    }
}

extension Int {
    func half() -> Int {
        return self / 2
    }
    func isDivisibleBy(divisor: Int) -> Bool {
        var isAMultiple = false
        if (self % divisor == 0) {
            isAMultiple = true
        }
        return isAMultiple
        //#GRE lololl
    }
    var squared : Int {
        return self * self
    }
    mutating func square() {
        self = self * self
    }
//    var square : Int {
//        mutating get { return squared() }
//    }
    
    
    var halved : Int {
        return half()
    }
}