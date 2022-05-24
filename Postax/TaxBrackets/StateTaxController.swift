//
//  StateTaxController.swift
//  Postax
//
//  Created by Jon Corn on 5/23/22.
//

import Foundation

class StateTaxController {
    
    static func TaxAmount(from annual: Double, brackets: [String:Double]?) -> Double {
        guard let brackets = brackets else {
            return 0
        }

        
        var stateTax: Double = 0
        
        switch annual {
        case _ where annual <= brackets["firstCap"]!:
            stateTax = annual * brackets["firstRate"]!
            return stateTax
            
        case _ where annual <= brackets["secondCap"]:
            stateTax += Hawaii2.bracketsTaxed[0]
            stateTax += (annual - first.threshold) * second.percent
            return stateTax
            
        case _ where annual <= third.threshold:
            Hawaii2.bracketsTaxed[0...1].forEach { stateTax += $0 }
            stateTax += (annual - second.threshold) * third.percent
            return stateTax
            
        case _ where annual <= fourth.threshold:
            Hawaii2.bracketsTaxed[0...2].forEach { stateTax += $0 }
            stateTax += (annual - third.threshold) * fourth.percent
            return stateTax
            
        case _ where annual <= fifth.threshold:
            Hawaii2.bracketsTaxed[0...3].forEach { stateTax += $0 }
            stateTax += (annual - fourth.threshold) * fifth.percent
            return stateTax
            
        case _ where annual <= sixth.threshold:
            Hawaii2.bracketsTaxed[0...4].forEach { stateTax += $0 }
            stateTax += (annual - fifth.threshold) * sixth.percent
            return stateTax
            
        case _ where annual <= seventh.threshold:
            Hawaii2.bracketsTaxed[0...5].forEach { stateTax += $0 }
            stateTax += (annual - sixth.threshold) * seventh.percent
            return stateTax
            
        case _ where annual <= eighth.threshold:
            Hawaii2.bracketsTaxed[0...6].forEach { stateTax += $0 }
            stateTax += (annual - seventh.threshold) * eighth.percent
            return stateTax
            
        case _ where annual <= ninth.threshold:
            Hawaii2.bracketsTaxed[0...7].forEach { stateTax += $0 }
            stateTax += (annual - eighth.threshold) * ninth.percent
            return stateTax
            
        case _ where annual <= tenth.threshold:
            Hawaii2.bracketsTaxed[0...8].forEach { stateTax += $0 }
            stateTax += (annual - ninth.threshold) * tenth.percent
            return stateTax
            
        case _ where annual <= eleventh.threshold:
            Hawaii2.bracketsTaxed[0...9].forEach { stateTax += $0 }
            stateTax += (annual - tenth.threshold) * eleventh.percent
            return stateTax
            
        case _ where annual > twelfth.threshold:
            Hawaii2.bracketsTaxed[0...10].forEach { stateTax += $0 }
            stateTax += (annual - eleventh.threshold) * twelfth.precent
            return stateTax
            
        default:
            stateTax = 0
            return stateTax
        }
    }
}
