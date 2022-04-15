//
//  TaxBrackets.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import Foundation

// Federal tax brackets, percent and threshold
struct FedTaxBrackets {
    
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
    func FedTaxAmount(from annual: Double) -> Double {
        
        var fedTax: Double = 0
        
        if annual <= first.threshold {
            fedTax = annual * first.percent
        } else if annual <= second.threshold {
            fedTax = annual * second.percent
        } else if annual <= third.threshold {
            fedTax = annual * third.percent
        } else if annual <= fourth.threshold {
            fedTax = annual * fourth.percent
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
