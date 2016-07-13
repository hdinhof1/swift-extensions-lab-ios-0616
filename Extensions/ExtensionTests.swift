//
//  tests.swift
//  ExtensionsTests
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import Extensions

class StringExtensions: QuickSpec {
    override func spec() {
        
        let name = "Joseph Gingle Heimer Schmitt"
        
        describe("whisper:") {
            
            it("whisper function should return a lower case string") {
                let whisperName = name.whisper()
                expect(whisperName).to(equal("joseph gingle heimer schmitt"))
            }
        }
        describe("shout:") {
            
            it("shout function should return an upper case string") {
                let shoutName = name.shout()
                expect(shoutName).to(equal("JOSEPH GINGLE HEIMER SCHMITT"))
            }
        }
        
        describe("piglatin:") {
            
            it("pigLatin computed property should have ay appended to the string" ) {

                expect(name.pigLatin).to(equal("Osephjay Inglegay Eimerhay Chmittsay"))
            }
        }
        
        describe("points:") {
            
            it("points computed property should add 1 point for consonants") {
                let consts = "zdbmn"
                expect(consts.points).to(equal(5))
            }
        }
        
        describe("points:") {
            
            it("points computed property should add 2 point for vowels") {
                let vowels = "aeiouy"
                expect(vowels.points).to(equal(11))
            }
        }
        
        describe("points:") {
            
            it("points computed property should not be effected by case") {
                
                let mixed = "HellOoO"
                expect(mixed.points).to(equal(11))
            }
        }
    }
}


class IntExtensions: QuickSpec {
    override func spec() {
        
        var sampleNumber = 123456
        let smallSampleNumber = 200
        
        describe("halved:") {
            
            it("halved computed property should return half") {
                expect(sampleNumber.halved).to(equal(61728))
            }
        }
        describe("squared:") {
            
            it("squared computed property should return the square of itself") {
                expect(sampleNumber.squared).to(equal(15241383936))
            }
        }
        describe("square:") {
            
            it("square function should square itself") {
                sampleNumber.square()
                expect(sampleNumber).to(equal(15241383936))
            }
        }
        describe("half:") {
            
            it("half function should return half of itself") {
                let halfSampleNumber = sampleNumber.half()
                expect(halfSampleNumber).to(equal(7620691968))
            }
        }
        describe("isDivisibleBy:") {
            
            it("isDivisibleBy function should return true if divisible") {
                
                let sampleNumberDiv = smallSampleNumber.isDivisibleBy(10)
                
                expect(sampleNumberDiv).to(beTrue())
            }
        }
        describe("isDivisibleBy:") {
            
            it("isDivisibleBy function should return false if not divisible") {
                let sampleNumberDiv = smallSampleNumber.isDivisibleBy(3)
                
                expect(sampleNumberDiv).to(beFalse())
            }
        }
    }
}

class EmojiFun: QuickSpec {
    override func spec() {
        describe("unicornLevel:") {
            
            it("unicornLevel computed property should return unicorns") {
                let name = "Joseph Gingle Heimer Schmitt"
                expect(name.unicornLevel).to(equal("🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄")) //25
            }
        }
    }
}
