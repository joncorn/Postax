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
        static let threshold = 10275.0
    }
    struct second {
        static let percent   = 0.12
        static let threshold = 41775.0
    }
    struct third {
        static let percent   = 0.22
        static let threshold = 89075.0
    }
    struct fourth {
        static let percent   = 0.24
        static let threshold = 170050.0
    }
    struct fifth {
        static let percent   = 0.32
        static let threshold = 215950.0
    }
    struct sixth {
        static let percent   = 0.35
        static let threshold = 539900.0
    }
    struct seventh {
        static let percent   = 0.37
        static let threshold = 539900.0
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
            firstTaxed   = first.threshold * first.percent
            secondTaxed  = (annual - first.threshold) * second.percent
            
            fedTax += firstTaxed + secondTaxed
            
        } else if annual <= third.threshold {
            firstTaxed   = first.threshold * first.percent
            secondTaxed  = (second.threshold - first.threshold) * second.percent
            thirdTaxed   = (annual - second.threshold) * third.percent
            
            fedTax += firstTaxed + secondTaxed + thirdTaxed
            
        } else if annual <= fourth.threshold {
            firstTaxed   = first.threshold * first.percent
            secondTaxed  = (second.threshold - first.threshold) * second.percent
            thirdTaxed   = (third.threshold - second.threshold) * third.percent
            fourthTaxed  = (annual - third.threshold) * fourth.percent
            
            fedTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
            
        } else if annual <= fifth.percent {
            firstTaxed   = first.threshold * first.percent
            secondTaxed  = (second.threshold - first.threshold) * second.percent
            thirdTaxed   = (third.threshold - second.threshold) * third.percent
            fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
            fifthTaxed   = (annual - fourth.threshold) * fifth.percent
            
            fedTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
            
        } else if annual <= sixth.percent {
            firstTaxed   = first.threshold * first.percent
            secondTaxed  = (second.threshold - first.threshold) * second.percent
            thirdTaxed   = (third.threshold - second.threshold) * third.percent
            fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
            fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
            sixthTaxed   = (annual - fifth.threshold) * sixth.percent
            
            fedTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed
            
        } else if annual > seventh.threshold {
            firstTaxed   = first.threshold * first.percent
            secondTaxed  = (second.threshold - first.threshold) * second.percent
            thirdTaxed   = (third.threshold - second.threshold) * third.percent
            fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
            fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
            sixthTaxed   = (sixth.threshold - fifth.threshold) * sixth.percent
            seventhTaxed = (annual - sixth.threshold) * seventh.percent
            
            fedTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed
        }
        
        return fedTax
    }
}
