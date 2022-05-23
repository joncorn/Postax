//
//  TaxBrackets.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import Foundation
import SwiftUI

// Federal tax brackets, percent and threshold
struct PTFedTax {
    
    // Social security rate
    static let socialSecurityRate = 0.062
    // Medicare rate
    static let medicareRate = 0.0145
    
    // Maximum tax amount per tax bracket
    static let bracketsTaxed: [Double] = [1027.5, 3780, 10406, 19434, 14688, 113382]
    
    // Federal tax rates and cap for each bracket
    struct firstBracket {
        static let rate  = 0.10
        static let cap   = 10275.0
    }
    struct secondBracket {
        static let rate  = 0.12
        static let cap   = 41775.0
    }
    struct thirdBracket {
        static let rate  = 0.22
        static let cap   = 89075.0
    }
    struct fourthBracket {
        static let rate  = 0.24
        static let cap   = 170050.0
    }
    struct fifthBracket {
        static let rate  = 0.32
        static let cap   = 215950.0
    }
    struct sixthBracket {
        static let rate  = 0.35
        static let cap   = 539900.0
    }
    struct seventhBracket {
        static let rate  = 0.37
    }

    // Returns total tax amount calculated from specified income
    static func FedTaxAmount(from income: Double) -> Double {
        let socialTax = income * socialSecurityRate
        let medicareTax = income * medicareRate
        
        var totalFedTax = socialTax + medicareTax
        
        switch income {
        case _ where income <= firstBracket.cap:
            totalFedTax += income * firstBracket.rate
            return totalFedTax
            
        case _ where income <= secondBracket.cap:
            totalFedTax += PTFedTax.bracketsTaxed[0]
            totalFedTax += (income - firstBracket.cap) * secondBracket.rate
            return totalFedTax
            
        case _ where income <= thirdBracket.cap:
            PTFedTax.bracketsTaxed[0...1].forEach { totalFedTax += $0 }
            totalFedTax += (income - secondBracket.cap) * thirdBracket.rate
            return totalFedTax
            
        case _ where income <= fourthBracket.cap:
            PTFedTax.bracketsTaxed[0...2].forEach { totalFedTax += $0 }
            totalFedTax += (income - thirdBracket.cap) * fourthBracket.rate
            return totalFedTax
            
        case _ where income <= fifthBracket.cap:
            PTFedTax.bracketsTaxed[0...3].forEach { totalFedTax += $0 }
            totalFedTax += (income - fourthBracket.cap) * fifthBracket.rate
            return totalFedTax
            
        case _ where income <= sixthBracket.cap:
            PTFedTax.bracketsTaxed[0...4].forEach { totalFedTax += $0 }
            totalFedTax += (income - fifthBracket.cap) * sixthBracket.rate
            return totalFedTax
            
        case _ where income > sixthBracket.cap:
            PTFedTax.bracketsTaxed[0...5].forEach { totalFedTax += $0 }
            totalFedTax += (income - sixthBracket.cap) * seventhBracket.rate
            return totalFedTax
            
        default:
            print("no tax")
            totalFedTax = 0
            return totalFedTax
        }
    }
}
