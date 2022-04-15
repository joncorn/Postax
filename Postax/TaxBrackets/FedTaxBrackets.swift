//
//  TaxBrackets.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import Foundation

// Federal tax brackets, percent and threshold
struct FedTaxBrackets {
    
    // standard tax percent across all states
    static let SSPercent = 0.062
    static let medicarePercent = 0.0145
    
    struct first {
        static let percent   = 0.10
        static let threshold = 9950.0
    }
    struct second {
        static let percent   = 0.12
        static let threshold = 40525.0
    }
    struct third {
        static let percent   = 0.22
        static let threshold = 86375.0
    }
    struct fourth {
        static let percent   = 0.24
        static let threshold = 164925.0
    }
    struct fifth {
        static let percent   = 0.32
        static let threshold = 209425.0
    }
    struct sixth {
        static let percent   = 0.35
        static let threshold = 523600.0
    }
    struct seventh {
        static let percent   = 0.37
        static let threshold = 523600.0
    }
    
    // returns federal tax amount as Double
    static func FedTaxAmount(from annual: Double) -> Double {
        
        let SSTax = annual * SSPercent
        let medicareTax = annual * medicarePercent
        
        var firstTaxed   : Double = 0
        var secondTaxed  : Double = 0
        var thirdTaxed   : Double = 0
        var fourthTaxed  : Double = 0
        var fifthTaxed   : Double = 0
        var sixthTaxed   : Double = 0
        var seventhTaxed : Double = 0
        
        var fedTax = SSTax + medicareTax
        
        if annual <= first.threshold {
            fedTax = annual * first.percent
        } else if annual <= second.threshold {
            
            // first bracket, times it's tax percent
            firstTaxed = first.threshold * first.percent
            // annual minus first tax bracket, so you're left with what's in second tax bracket
            secondTaxed = annual - first.threshold
            secondTaxed = secondTaxed * second.percent
            
            fedTax += firstTaxed + secondTaxed
            
        } else if annual <= third.threshold {
            
            firstTaxed = first.threshold * first.percent
            secondTaxed = second.threshold - first.threshold
            secondTaxed = secondTaxed * second.percent
            
            thirdTaxed = annual - second.threshold
            thirdTaxed = thirdTaxed * third.percent
            
            fedTax += firstTaxed + secondTaxed + thirdTaxed
            
        } else if annual <= fourth.threshold {
            
            firstTaxed = first.threshold * first.percent
            secondTaxed = second.threshold * second.percent
            thirdTaxed = third.threshold * third.percent
            
            fourthTaxed = annual - third.threshold
            fourthTaxed = fourthTaxed * fourth.percent
            
            fedTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
            
        } else if annual <= fifth.percent {
            fedTax = annual * fifth.threshold
        } else if annual <= sixth.percent {
            fedTax = annual * sixth.percent
        } else if annual > seventh.threshold {
            fedTax = annual * seventh.percent
        }
        
        return fedTax
    }
}
