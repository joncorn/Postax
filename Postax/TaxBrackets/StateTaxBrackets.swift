//
//  StateTaxBrackets.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import Foundation

// State tax brackets, sorted alphabetically
struct StateTaxBrackets {
    
    // MARK: - Alabama
    struct Alabama {
        struct first {
            static let percent   = 0.02
            static let threshold = 500.0
        }
        struct second {
            static let percent   = 0.04
            static let threshold = 3000.0
        }
        struct third {
            static let percent   = 0.05
            static let threshold = 3000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed  : Double = 0
            var secondTaxed : Double = 0
            var thirdTaxed  : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax += annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual > third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
            }
            
            return stateTax
        }
    }
    
    // MARK: - Alaska
    struct Alaska {
        static let none = 0.0
    }
    
    // MARK: - Arizona
    struct Arizona {
        struct first {
            static let percent   = 0.0259
            static let threshold = 27808.0
        }
        struct second {
            static let percent   = 0.0334
            static let threshold = 55615.0
        }
        struct third {
            static let percent   = 0.0417
            static let threshold = 166843.0
        }
        struct fourth {
            static let percent   = 0.045
            static let threshold = 166843.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed  : Double = 0
            var secondTaxed : Double = 0
            var thirdTaxed  : Double = 0
            var fourthTaxed : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax += annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual <= third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            } else if annual > fourth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (annual - third.threshold) * fourth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Arkansas
    struct Arkansas {
        struct first {
            static let percent   = 0.02
            static let threshold = 4300.0
        }
        struct second {
            static let percent   = 0.04
            static let threshold = 8500.0
        }
        struct third {
            static let percent   = 0.055
            static let threshold = 8500.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed  : Double = 0
            var secondTaxed : Double = 0
            var thirdTaxed  : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax += annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual > third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - California
    struct California {
        struct first {
            static let percent   = 0.01
            static let threshold = 9325.0
        }
        struct second {
            static let percent   = 0.02
            static let threshold = 22107.0
        }
        struct third {
            static let percent   = 0.04
            static let threshold = 34892.0
        }
        struct fourth {
            static let percent   = 0.06
            static let threshold = 48435.0
        }
        struct fifth {
            static let percent   = 0.08
            static let threshold = 61214.0
        }
        struct sixth {
            static let percent   = 0.093
            static let threshold = 312686.0
        }
        struct seventh {
            static let percent   = 0.103
            static let threshold = 375221.0
        }
        struct eighth {
            static let percent   = 0.113
            static let threshold = 625369.0
        }
        struct ninth {
            static let percent   = 0.123
            static let threshold = 1000000.0
        }
        struct tenth {
            static let percent   = 0.133
            static let threshold = 1000000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            var fifthTaxed   : Double = 0
            var sixthTaxed   : Double = 0
            var seventhTaxed : Double = 0
            var eighthTaxed  : Double = 0
            var ninthTaxed   : Double = 0
            var tenthTaxed   : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax = annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual <= third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            } else if annual <= fourth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (annual - third.threshold) * fourth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
                
            } else if annual <= fifth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (annual - fourth.threshold) * fifth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
                
            } else if annual <= sixth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (annual - fifth.threshold) * sixth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed
                
            } else if annual <= seventh.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (annual - sixth.threshold) * seventh.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed
                
            } else if annual <= eighth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (seventh.threshold - sixth.threshold) * seventh.percent
                eighthTaxed  = (annual - seventh.threshold) * eighth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed
                
            } else if annual <= ninth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (seventh.threshold - sixth.threshold) * seventh.percent
                eighthTaxed  = (eighth.threshold - seventh.threshold) * eighth.percent
                ninthTaxed   = (annual - eighth.threshold) * ninth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed + ninthTaxed
                
            } else if annual > tenth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (seventh.threshold - sixth.threshold) * seventh.percent
                eighthTaxed  = (eighth.threshold - seventh.threshold) * eighth.percent
                ninthTaxed   = (ninth.threshold - eighth.threshold) * ninth.percent
                tenthTaxed   = (annual - ninth.threshold) * tenth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed + ninthTaxed + tenthTaxed
            }
            
            return stateTax
        }
    }
    
    // MARK: - Colorado
    struct Colorado {
        struct first {
            static let percent   = 0.0455
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            
            let stateTax = annual * first.percent
            
            return stateTax
        }
    }
    
    // MARK: - Connecticut
    struct Connecticut {
        struct first {
            static let percent   = 0.03
            static let threshold = 10000.0
        }
        struct second {
            static let percent   = 0.05
            static let threshold = 50000.0
        }
        struct third {
            static let percent   = 0.055
            static let threshold = 100000.0
        }
        struct fourth {
            static let percent   = 0.06
            static let threshold = 200000.0
        }
        struct fifth {
            static let percent   = 0.065
            static let threshold = 250000.0
        }
        struct sixth {
            static let percent   = 0.069
            static let threshold = 500000.0
        }
        struct seventh {
            static let percent   = 0.0699
            static let threshold = 500000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            var fifthTaxed   : Double = 0
            var sixthTaxed   : Double = 0
            var seventhTaxed : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax = annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual <= third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            } else if annual <= fourth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (annual - third.threshold) * fourth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
                
            } else if annual <= fifth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (annual - fourth.threshold) * fifth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
                
            } else if annual <= sixth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (annual - fifth.threshold) * sixth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed
                
            } else if annual > seventh.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (annual - sixth.threshold) * seventh.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed
            }
            
            return stateTax
        }
    }
    
    // MARK: - Delaware
    struct Delaware {
        struct first {
            static let percent   = 0.022
            static let threshold = 5000.0
        }
        struct second {
            static let percent   = 0.039
            static let threshold = 10000.0
        }
        struct third {
            static let percent   = 0.048
            static let threshold = 20000.0
        }
        struct fourth {
            static let percent   = 0.052
            static let threshold = 25000.0
        }
        struct fifth {
            static let percent   = 0.0555
            static let threshold = 60000.0
        }
        struct sixth {
            static let percent   = 0.066
            static let threshold = 60000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            var fifthTaxed   : Double = 0
            var sixthTaxed   : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax = annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual <= third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            } else if annual <= fourth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (annual - third.threshold) * fourth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
                
            } else if annual <= fifth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (annual - fourth.threshold) * fifth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
                
            } else if annual <= sixth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (annual - fifth.threshold) * sixth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Florida
    struct Florida {
        static let none = 0.0
    }
    
    // MARK: - Georgia
    struct Georgia {
        struct first {
            static let percent   = 0.01
            static let threshold = 750.0
        }
        struct second {
            static let percent   = 0.02
            static let threshold = 2250.0
        }
        struct third {
            static let percent   = 0.03
            static let threshold = 3750.0
        }
        struct fourth {
            static let percent   = 0.04
            static let threshold = 5250.0
        }
        struct fifth {
            static let percent   = 0.05
            static let threshold = 7000.0
        }
        struct sixth {
            static let percent   = 0.0575
            static let threshold = 7000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            var fifthTaxed   : Double = 0
            var sixthTaxed   : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax = annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual <= third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            } else if annual <= fourth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (annual - third.threshold) * fourth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
                
            } else if annual <= fifth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (annual - fourth.threshold) * fifth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
                
            } else if annual > sixth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (annual - fifth.threshold) * sixth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Hawaii
    struct Hawaii {
        struct first {
            static let percent   = 0.014
            static let threshold = 2400.0
        }
        struct second {
            static let percent   = 0.032
            static let threshold = 4800.0
        }
        struct third {
            static let percent   = 0.055
            static let threshold = 9600.0
        }
        struct fourth {
            static let percent   = 0.064
            static let threshold = 14400.0
        }
        struct fifth {
            static let percent   = 0.068
            static let threshold = 19200.0
        }
        struct sixth {
            static let percent   = 0.072
            static let threshold = 24000.0
        }
        struct seventh {
            static let percent   = 0.076
            static let threshold = 36000.0
        }
        struct eighth {
            static let percent   = 0.079
            static let threshold = 48000.0
        }
        struct ninth {
            static let percent   = 0.0825
            static let threshold = 150000.0
        }
        struct tenth {
            static let percent   = 0.09
            static let threshold = 175000.0
        }
        struct eleventh {
            static let percent   = 0.10
            static let threshold = 200000.0
        }
        struct twelfth {
            static let precent   = 0.11
            static let threshold = 200000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            var fifthTaxed   : Double = 0
            var sixthTaxed   : Double = 0
            var seventhTaxed : Double = 0
            var eighthTaxed  : Double = 0
            var ninthTaxed   : Double = 0
            var tenthTaxed   : Double = 0
            var eleventhTaxed: Double = 0
            var twelfthTaxed : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax = annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual <= third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            } else if annual <= fourth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (annual - third.threshold) * fourth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
                
            } else if annual <= fifth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (annual - fourth.threshold) * fifth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
                
            } else if annual <= sixth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (annual - fifth.threshold) * sixth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed
                
            } else if annual <= seventh.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (annual - sixth.threshold) * seventh.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed
                
            } else if annual <= eighth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (seventh.threshold - sixth.threshold) * seventh.percent
                eighthTaxed  = (annual - seventh.threshold) * eighth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed
                
            } else if annual <= ninth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (seventh.threshold - sixth.threshold) * seventh.percent
                eighthTaxed  = (eighth.threshold - seventh.threshold) * eighth.percent
                ninthTaxed   = (annual - eighth.threshold) * ninth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed + ninthTaxed
                
            } else if annual <= tenth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (seventh.threshold - sixth.threshold) * seventh.percent
                eighthTaxed  = (eighth.threshold - seventh.threshold) * eighth.percent
                ninthTaxed   = (ninth.threshold - eighth.threshold) * ninth.percent
                tenthTaxed   = (annual - ninth.threshold) * tenth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed + ninthTaxed + tenthTaxed
                
            } else if annual <= eleventh.threshold {
                firstTaxed    = first.threshold * first.percent
                secondTaxed   = (second.threshold - first.threshold) * second.percent
                thirdTaxed    = (third.threshold - second.threshold) * third.percent
                fourthTaxed   = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed    = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed    = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed  = (seventh.threshold - sixth.threshold) * seventh.percent
                eighthTaxed   = (eighth.threshold - seventh.threshold) * eighth.percent
                ninthTaxed    = (ninth.threshold - eighth.threshold) * ninth.percent
                tenthTaxed    = (tenth.threshold - ninth.threshold) * tenth.percent
                eleventhTaxed = (annual - tenth.threshold) * eleventh.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed + ninthTaxed + tenthTaxed + eleventhTaxed
                
            } else if annual > twelfth.threshold {
                firstTaxed    = first.threshold * first.percent
                secondTaxed   = (second.threshold - first.threshold) * second.percent
                thirdTaxed    = (third.threshold - second.threshold) * third.percent
                fourthTaxed   = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed    = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed    = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed  = (seventh.threshold - sixth.threshold) * seventh.percent
                eighthTaxed   = (eighth.threshold - seventh.threshold) * eighth.percent
                ninthTaxed    = (ninth.threshold - eighth.threshold) * ninth.percent
                tenthTaxed    = (tenth.threshold - ninth.threshold) * tenth.percent
                eleventhTaxed = (eleventh.threshold - tenth.threshold) * eleventh.percent
                twelfthTaxed  = (annual - eleventh.threshold) * twelfth.precent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed + ninthTaxed + tenthTaxed + eleventhTaxed + twelfthTaxed
            }
            
            return stateTax
        }
    }
    
    // MARK: - Idaho
    struct Idaho {
        struct first {
            static let percent   = 0.01
            static let threshold = 1588.0
        }
        struct second {
            static let percent   = 0.03
            static let threshold = 4763.0
        }
        struct third {
            static let percent   = 0.045
            static let threshold = 7939.0
        }
        struct fourth {
            static let percent   = 0.06
            static let threshold = 7939.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax = annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual <= third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            } else if annual > fourth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (annual - third.threshold) * fourth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Illinois
    struct Illinois {
        struct first {
            static let percent   = 0.0495
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var stateTax: Double = 0
            
            stateTax = annual * first.percent
            
            return stateTax
        }
    }
    
    // MARK: - Indiana
    struct Indiana {
        struct first {
            static let percent   = 0.0323
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var stateTax: Double = 0
            
            stateTax = annual * first.percent
            
            return stateTax
        }
    }
    
    // MARK: - Iowa
    struct Iowa {
        struct first {
            static let percent   = 0.0033
            static let threshold = 1743.0
        }
        struct second {
            static let percent   = 0.0067
            static let threshold = 3486.0
        }
        struct third {
            static let percent   = 0.0225
            static let threshold = 6972.0
        }
        struct fourth {
            static let percent   = 0.0414
            static let threshold = 15687.0
        }
        struct fifth {
            static let percent   = 0.0563
            static let threshold = 26145.0
        }
        struct sixth {
            static let percent   = 0.0593
            static let threshold = 34860.0
        }
        struct seventh {
            static let percent   = 0.0625
            static let threshold = 52290.0
        }
        struct eighth {
            static let percent   = 0.0744
            static let threshold = 78435.0
        }
        struct ninth {
            static let percent   = 0.0853
            static let threshold = 78435.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            var fifthTaxed   : Double = 0
            var sixthTaxed   : Double = 0
            var seventhTaxed : Double = 0
            var eighthTaxed  : Double = 0
            var ninthTaxed   : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax = annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual <= third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            } else if annual <= fourth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (annual - third.threshold) * fourth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
                
            } else if annual <= fifth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (annual - fourth.threshold) * fifth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
                
            } else if annual <= sixth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (annual - fifth.threshold) * sixth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed
                
            } else if annual <= seventh.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (annual - sixth.threshold) * seventh.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed
                
            } else if annual <= eighth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold)  * second.percent
                thirdTaxed   = (third.threshold - second.threshold)  * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold)  * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold)  * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)   * sixth.percent
                seventhTaxed = (seventh.threshold - sixth.threshold) * seventh.percent
                eighthTaxed  = (annual - seventh.threshold) * eighth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed
                
            } else if annual > ninth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold)    * second.percent
                thirdTaxed   = (third.threshold - second.threshold)    * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold)    * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold)    * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)     * sixth.percent
                seventhTaxed = (seventh.threshold - sixth.threshold)   * seventh.percent
                eighthTaxed  = (eighth.threshold  - seventh.threshold) * eighth.percent
                ninthTaxed   = (annual - eighth.threshold) * ninth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed + ninthTaxed
                
            }
            
            return stateTax
        }
    }
    
    
    // MARK: - Kansas
    struct Kansas {
        struct first {
            static let percent   = 0.031
            static let threshold = 15000.0
        }
        struct second {
            static let percent   = 0.0525
            static let threshold = 30000.0
        }
        struct third {
            static let percent   = 0.057
            static let threshold = 30000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed  : Double = 0
            var secondTaxed : Double = 0
            var thirdTaxed  : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax += annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual > third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Kentucky
    struct Kentucky {
        struct first {
            static let percent   = 0.05
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            
            return annual * first.percent
            
        }
    }
    
    // MARK: - Louisiana
    struct Louisiana {
        struct first {
            static let percent   = 0.0185
            static let threshold = 12500.0
        }
        struct second {
            static let percent   = 0.0350
            static let threshold = 50000.0
        }
        struct third {
            static let percent   = 0.0425
            static let threshold = 50000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed  : Double = 0
            var secondTaxed : Double = 0
            var thirdTaxed  : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax += annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual > third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Maine
    struct Maine {
        struct first {
            static let percent   = 0.058
            static let threshold = 23000.0
        }
        struct second {
            static let percent   = 0.0675
            static let threshold = 54450.0
        }
        struct third {
            static let percent   = 0.0715
            static let threshold = 54450.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed  : Double = 0
            var secondTaxed : Double = 0
            var thirdTaxed  : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax += annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual > third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Maryland
    struct Maryland {
        struct first {
            static let percent   = 0.02
            static let threshold = 1000.0
        }
        struct second {
            static let percent   = 0.03
            static let threshold = 2000.0
        }
        struct third {
            static let percent   = 0.04
            static let threshold = 3000.0
        }
        struct fourth {
            static let percent   = 0.0475
            static let threshold = 100000.0
        }
        struct fifth {
            static let percent   = 0.05
            static let threshold = 125000.0
        }
        struct sixth {
            static let percent   = 0.0525
            static let threshold = 150000.0
        }
        struct seventh {
            static let percent   = 0.055
            static let threshold = 250000.0
        }
        struct eighth {
            static let percent   = 0.0575
            static let threshold = 250000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            var fifthTaxed   : Double = 0
            var sixthTaxed   : Double = 0
            var seventhTaxed : Double = 0
            var eighthTaxed  : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax = annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual <= third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            } else if annual <= fourth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (annual - third.threshold) * fourth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
                
            } else if annual <= fifth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (annual - fourth.threshold) * fifth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
                
            } else if annual <= sixth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (annual - fifth.threshold) * sixth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed
                
            } else if annual <= seventh.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (annual - sixth.threshold) * seventh.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed
                
            } else if annual > eighth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold)  * second.percent
                thirdTaxed   = (third.threshold - second.threshold)  * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold)  * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold)  * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)   * sixth.percent
                seventhTaxed = (seventh.threshold - sixth.threshold) * seventh.percent
                eighthTaxed  = (annual - seventh.threshold) * eighth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Massachusetts
    struct Massachusetts {
        struct first {
            static let percent   = 0.05
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            
            return annual * first.percent
            
        }
    }
    
    // MARK: - Michigan
    struct Michigan {
        struct first {
            static let percent   = 0.045
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            
            return annual * first.percent
            
        }
    }
    
    // MARK: - Minnesota
    struct Minnesota {
        struct first {
            static let percent   = 0.0535
            static let threshold = 28080.0
        }
        struct second {
            static let percent   = 0.068
            static let threshold = 92230.0
        }
        struct third {
            static let percent   = 0.0785
            static let threshold = 171220.0
        }
        struct fourth {
            static let percent   = 0.0985
            static let threshold = 171220.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed  : Double = 0
            var secondTaxed : Double = 0
            var thirdTaxed  : Double = 0
            var fourthTaxed : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax += annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual <= third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            } else if annual > fourth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (annual - third.threshold) * fourth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Mississippi
    struct Mississippi {
        struct first {
            static let percent   = 0.058
            static let threshold = 23000.0
        }
        struct second {
            static let percent   = 0.0675
            static let threshold = 54450.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed  : Double = 0
            var secondTaxed : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax += annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Missouri
    struct Missouri {
        struct first {
            static let percent   = 0.015
            static let threshold = 1088.0
        }
        struct second {
            static let percent   = 0.02
            static let threshold = 2176.0
        }
        struct third {
            static let percent   = 0.025
            static let threshold = 3264.0
        }
        struct fourth {
            static let percent   = 0.03
            static let threshold = 4352.0
        }
        struct fifth {
            static let percent   = 0.035
            static let threshold = 5440.0
        }
        struct sixth {
            static let percent   = 0.04
            static let threshold = 6528.0
        }
        struct seventh {
            static let percent   = 0.045
            static let threshold = 7616.0
        }
        struct eighth {
            static let percent   = 0.05
            static let threshold = 8704.0
        }
        struct ninth {
            static let percent   = 0.054
            static let threshold = 8704.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            var fifthTaxed   : Double = 0
            var sixthTaxed   : Double = 0
            var seventhTaxed : Double = 0
            var eighthTaxed  : Double = 0
            var ninthTaxed   : Double = 0
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                
                stateTax = annual * first.percent
                
            } else if annual <= second.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (annual - first.threshold) * second.percent
                
                stateTax += firstTaxed + secondTaxed
                
            } else if annual <= third.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (annual - second.threshold) * third.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed
                
            } else if annual <= fourth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (annual - third.threshold) * fourth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed
                
            } else if annual <= fifth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (annual - fourth.threshold) * fifth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
                
            } else if annual <= sixth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (annual - fifth.threshold) * sixth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed
                
            } else if annual <= seventh.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold) * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)  * sixth.percent
                seventhTaxed = (annual - sixth.threshold) * seventh.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed
                
            } else if annual <= eighth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold)  * second.percent
                thirdTaxed   = (third.threshold - second.threshold)  * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold)  * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold)  * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)   * sixth.percent
                seventhTaxed = (seventh.threshold - sixth.threshold) * seventh.percent
                eighthTaxed  = (annual - seventh.threshold) * eighth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed
                
            } else if annual > ninth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold)    * second.percent
                thirdTaxed   = (third.threshold - second.threshold)    * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold)    * fourth.percent
                fifthTaxed   = (fifth.threshold - fourth.threshold)    * fifth.percent
                sixthTaxed   = (sixth.threshold - fifth.threshold)     * sixth.percent
                seventhTaxed = (seventh.threshold - sixth.threshold)   * seventh.percent
                eighthTaxed  = (eighth.threshold  - seventh.threshold) * eighth.percent
                ninthTaxed   = (annual - eighth.threshold) * ninth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed + sixthTaxed + seventhTaxed + eighthTaxed + ninthTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Montana
    struct Montana {
        
    }
    
    // MARK: - Nebraska
    struct Nebraska {
        
    }
    
    // MARK: - Nevada
    struct Nevada {
        
    }
    
    // MARK: - New Hampshire
    struct NewHampshire {
        
    }
    
    // MARK: - New Jersey
    struct NewJersey {
        
    }
    
    // MARK: - New Mexico
    struct NewMexico {
        
    }
    
    // MARK: - New York
    struct NewYork {
        
    }
    
    // MARK: - North Carolina
    struct NorthCarolina {
        
    }
    
    // MARK: - North Dakota
    struct NorthDakota {
        
    }
    
    // MARK: - Ohio
    struct Ohio {
        
    }
    
    // MARK: - Oklahoma
    struct Oklahoma {
        
    }
    
    // MARK: - Oregon
    struct Oregon {
        
    }
    
    // MARK: - Pennsylvania
    struct Pennsylvania {
        
    }
    
    // MARK: - Rhode Island
    struct RhodeIsland {
        
    }
    
    // MARK: - South Carolina
    struct SouthCarolina {
        
    }
    
    // MARK: - South Dakota
    struct SouthDakota {
        
    }
    
    // MARK: - Tennessee
    struct Tennessee {
        
    }
    
    // MARK: - Texas
    struct Texas {
        
    }
    
    // MARK: - Utah
    struct Utah {
        
    }
    
    // MARK: - Vermont
    struct Vermont {
        
    }
    
    // MARK: - Virginia
    struct Virginia {
        
    }
    
    // MARK: - Washington
    struct Washington {
        
    }
    
    // MARK: - West Virginia
    struct WestVirginia {
        
    }
    
    // MARK: - Wisconsin
    struct Wisconsin {
        
    }
    
    // MARK: - Wyoming
    struct Wyoming {
        
    }
    
    // MARK: - Methods
    
    
}

