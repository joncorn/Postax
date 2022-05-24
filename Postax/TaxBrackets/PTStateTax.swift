//
//  StateTaxBrackets.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import Foundation

// State tax brackets, sorted alphabetically
struct PTStateTax {
    
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
        
        static let bracketsDict: [String:Double] = ["firstRate":0.02, "firstCap":4300.0, "secondRate":0.04, "secondCap":8500.0, "thirdRate":0.055, "thirdCap":8500.0]
        
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
    
//    struct Hawaii2 {
//
//        static let bracketsTaxed: [Double] = [33.6, 76.8, 264, 307.2, 326.4, 345.6, 912, 948, 8415, 2250, 2500]
//
//        struct first {
//            static let percent   = 0.014
//            static let threshold = 2400.0
//        }
//        struct second {
//            static let percent   = 0.032
//            static let threshold = 4800.0
//        }
//        struct third {
//            static let percent   = 0.055
//            static let threshold = 9600.0
//        }
//        struct fourth {
//            static let percent   = 0.064
//            static let threshold = 14400.0
//        }
//        struct fifth {
//            static let percent   = 0.068
//            static let threshold = 19200.0
//        }
//        struct sixth {
//            static let percent   = 0.072
//            static let threshold = 24000.0
//        }
//        struct seventh {
//            static let percent   = 0.076
//            static let threshold = 36000.0
//        }
//        struct eighth {
//            static let percent   = 0.079
//            static let threshold = 48000.0
//        }
//        struct ninth {
//            static let percent   = 0.0825
//            static let threshold = 150000.0
//        }
//        struct tenth {
//            static let percent   = 0.09
//            static let threshold = 175000.0
//        }
//        struct eleventh {
//            static let percent   = 0.10
//            static let threshold = 200000.0
//        }
//        struct twelfth {
//            static let precent   = 0.11
//            static let threshold = 200000.0
//        }
//
//        static func TaxAmount(from annual: Double) -> Double {
//            var stateTax: Double = 0
//
//            switch annual {
//            case _ where annual <= first.threshold:
//                stateTax = annual * first.percent
//                return stateTax
//
//            case _ where annual <= second.threshold:
//                stateTax += Hawaii2.bracketsTaxed[0]
//                stateTax += (annual - first.threshold) * second.percent
//                return stateTax
//
//            case _ where annual <= third.threshold:
//                Hawaii2.bracketsTaxed[0...1].forEach { stateTax += $0 }
//                stateTax += (annual - second.threshold) * third.percent
//                return stateTax
//
//            case _ where annual <= fourth.threshold:
//                Hawaii2.bracketsTaxed[0...2].forEach { stateTax += $0 }
//                stateTax += (annual - third.threshold) * fourth.percent
//                return stateTax
//
//            case _ where annual <= fifth.threshold:
//                Hawaii2.bracketsTaxed[0...3].forEach { stateTax += $0 }
//                stateTax += (annual - fourth.threshold) * fifth.percent
//                return stateTax
//
//            case _ where annual <= sixth.threshold:
//                Hawaii2.bracketsTaxed[0...4].forEach { stateTax += $0 }
//                stateTax += (annual - fifth.threshold) * sixth.percent
//                return stateTax
//
//            case _ where annual <= seventh.threshold:
//                Hawaii2.bracketsTaxed[0...5].forEach { stateTax += $0 }
//                stateTax += (annual - sixth.threshold) * seventh.percent
//                return stateTax
//
//            case _ where annual <= eighth.threshold:
//                Hawaii2.bracketsTaxed[0...6].forEach { stateTax += $0 }
//                stateTax += (annual - seventh.threshold) * eighth.percent
//                return stateTax
//
//            case _ where annual <= ninth.threshold:
//                Hawaii2.bracketsTaxed[0...7].forEach { stateTax += $0 }
//                stateTax += (annual - eighth.threshold) * ninth.percent
//                return stateTax
//
//            case _ where annual <= tenth.threshold:
//                Hawaii2.bracketsTaxed[0...8].forEach { stateTax += $0 }
//                stateTax += (annual - ninth.threshold) * tenth.percent
//                return stateTax
//
//            case _ where annual <= eleventh.threshold:
//                Hawaii2.bracketsTaxed[0...9].forEach { stateTax += $0 }
//                stateTax += (annual - tenth.threshold) * eleventh.percent
//                return stateTax
//
//            case _ where annual > twelfth.threshold:
//                Hawaii2.bracketsTaxed[0...10].forEach { stateTax += $0 }
//                stateTax += (annual - eleventh.threshold) * twelfth.precent
//                return stateTax
//
//            default:
//                stateTax = 0
//                return stateTax
//            }
//        }
//    }
    
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
        struct first {
            static let percent   = 0.01
            static let threshold = 3100.0
        }
        struct second {
            static let percent   = 0.02
            static let threshold = 5500.0
        }
        struct third {
            static let percent   = 0.03
            static let threshold = 8400.0
        }
        struct fourth {
            static let percent   = 0.04
            static let threshold = 11400.0
        }
        struct fifth {
            static let percent   = 0.05
            static let threshold = 14600.0
        }
        struct sixth {
            static let percent   = 0.06
            static let threshold = 18800.0
        }
        struct seventh {
            static let percent   = 0.0675
            static let threshold = 18800.0
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
    
    // MARK: - Nebraska
    struct Nebraska {
        struct first {
            static let percent   = 0.0246
            static let threshold = 3440.0
        }
        struct second {
            static let percent   = 0.0351
            static let threshold = 20590.0
        }
        struct third {
            static let percent   = 0.0501
            static let threshold = 33180.0
        }
        struct fourth {
            static let percent   = 0.0684
            static let threshold = 33180.0
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
    
    // MARK: - Nevada
    struct Nevada {
        static let none = 0.0
    }
    
    // MARK: - New Hampshire
    struct NewHampshire {
        static let none = 0.0
    }
    
    // MARK: - New Jersey
    struct NewJersey {
        struct first {
            static let percent   = 0.014
            static let threshold = 20000.0
        }
        struct second {
            static let percent   = 0.0175
            static let threshold = 35000.0
        }
        struct third {
            static let percent   = 0.035
            static let threshold = 40000.0
        }
        struct fourth {
            static let percent   = 0.05525
            static let threshold = 75000.0
        }
        struct fifth {
            static let percent   = 0.0637
            static let threshold = 500000.0
        }
        struct sixth {
            static let percent   = 0.0897
            static let threshold = 1000000.0
        }
        struct seventh {
            static let percent   = 0.1075
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
    
    // MARK: - New Mexico
    struct NewMexico {
        struct first {
            static let percent   = 0.017
            static let threshold = 5500.0
        }
        struct second {
            static let percent   = 0.032
            static let threshold = 11000.0
        }
        struct third {
            static let percent   = 0.047
            static let threshold = 16000.0
        }
        struct fourth {
            static let percent   = 0.049
            static let threshold = 210000.0
        }
        struct fifth {
            static let percent   = 0.059
            static let threshold = 210000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            var fifthTaxed   : Double = 0
            
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
                
            } else if annual > fifth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (annual - fourth.threshold) * fifth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - New York
    struct NewYork {
        struct first {
            static let percent   = 0.04
            static let threshold = 8500.0
        }
        struct second {
            static let percent   = 0.045
            static let threshold = 11700.0
        }
        struct third {
            static let percent   = 0.0525
            static let threshold = 13900.0
        }
        struct fourth {
            static let percent   = 0.0585
            static let threshold = 80650.0
        }
        struct fifth {
            static let percent   = 0.0625
            static let threshold = 215400.0
        }
        struct sixth {
            static let percent   = 0.0685
            static let threshold = 1077550.0
        }
        struct seventh {
            static let percent   = 0.0965
            static let threshold = 5000000.0
        }
        struct eighth {
            static let percent   = 0.103
            static let threshold = 25000000.0
        }
        struct ninth {
            static let percent   = 0.109
            static let threshold = 25000000.0
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
    
    // MARK: - North Carolina
    struct NorthCarolina {
        struct first {
            static let percent   = 0.0499
        }
    }
    
    // MARK: - North Dakota
    struct NorthDakota {
        struct first {
            static let percent   = 0.011
            static let threshold = 40525.0
        }
        struct second {
            static let percent   = 0.0204
            static let threshold = 98100.0
        }
        struct third {
            static let percent   = 0.0227
            static let threshold = 204675.0
        }
        struct fourth {
            static let percent   = 0.0264
            static let threshold = 445000.0
        }
        struct fifth {
            static let percent   = 0.029
            static let threshold = 445000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            var fifthTaxed   : Double = 0
            
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
                
            } else if annual > fifth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (annual - fourth.threshold) * fifth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Ohio
    struct Ohio {
        struct first {
            static let percent   = 0.02765
            static let threshold = 44250.0
        }
        struct second {
            static let percent   = 0.03226
            static let threshold = 88450.0
        }
        struct third {
            static let percent   = 0.03688
            static let threshold = 110650.0
        }
        struct fourth {
            static let percent   = 0.0399
            static let threshold = 110650.0
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
    
    // MARK: - Oklahoma
    struct Oklahoma {
        struct first {
            static let percent   = 0.0025
            static let threshold = 1000.0
        }
        struct second {
            static let percent   = 0.0075
            static let threshold = 2500.0
        }
        struct third {
            static let percent   = 0.0175
            static let threshold = 3750.0
        }
        struct fourth {
            static let percent   = 0.0275
            static let threshold = 4900.0
        }
        struct fifth {
            static let percent   = 0.0375
            static let threshold = 7200.0
        }
        struct sixth {
            static let percent   = 0.0475
            static let threshold = 7200.0
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
    
    // MARK: - Oregon
    struct Oregon {
        struct first {
            static let percent   = 0.0475
            static let threshold = 3650.0
        }
        struct second {
            static let percent   = 0.0675
            static let threshold = 9200.0
        }
        struct third {
            static let percent   = 0.0875
            static let threshold = 125000.0
        }
        struct fourth {
            static let percent   = 0.0990
            static let threshold = 125000.0
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
    
    // MARK: - Pennsylvania
    struct Pennsylvania {
        struct first {
            static let percent   = 0.0307
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            return annual * first.percent
        }
    }
    
    // MARK: - Rhode Island
    struct RhodeIsland {
        struct first {
            static let percent   = 0.0375
            static let threshold = 68200.0
        }
        struct second {
            static let percent   = 0.0475
            static let threshold = 155050.0
        }
        struct third {
            static let percent   = 0.0599
            static let threshold = 155050.0
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
    
    // MARK: - South Carolina
    struct SouthCarolina {
        struct first {
            static let percent   = 0.0
            static let threshold = 3200.0
        }
        struct second {
            static let percent   = 0.03
            static let threshold = 6410.0
        }
        struct third {
            static let percent   = 0.04
            static let threshold = 9620.0
        }
        struct fourth {
            static let percent   = 0.05
            static let threshold = 12820.0
        }
        struct fifth {
            static let percent   = 0.06
            static let threshold = 16040.0
        }
        struct sixth {
            static let percent   = 0.07
            static let threshold = 16040.0
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
    
    // MARK: - South Dakota
    struct SouthDakota {
        struct first {
            static let none = 0.0
        }
    }
    
    // MARK: - Tennessee
    struct Tennessee {
        struct first {
            static let none = 0.0
        }
    }
    
    // MARK: - Texas
    struct Texas {
        struct first {
            static let none = 0.0
        }
    }
    
    // MARK: - Utah
    struct Utah {
        struct first {
            static let percent  = 0.0495
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            return annual * first.percent
        }
    }
    
    // MARK: - Vermont
    struct Vermont {
        struct first {
            static let percent   = 0.0335
            static let threshold = 40950.0
        }
        struct second {
            static let percent   = 0.0660
            static let threshold = 99200.0
        }
        struct third {
            static let percent   = 0.0760
            static let threshold = 206950.0
        }
        struct fourth {
            static let percent   = 0.0875
            static let threshold = 206950.0
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
    
    // MARK: - Virginia
    struct Virginia {
        struct first {
            static let percent   = 0.02
            static let threshold = 3000.0
        }
        struct second {
            static let percent   = 0.03
            static let threshold = 5000.0
        }
        struct third {
            static let percent   = 0.05
            static let threshold = 17000.0
        }
        struct fourth {
            static let percent   = 0.0575
            static let threshold = 17000.0
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
    
    // MARK: - Washington
    struct Washington {
        struct first {
            static let none = 0.0
        }
    }
    
    // MARK: - West Virginia
    struct WestVirginia {
        struct first {
            static let percent   = 0.03
            static let threshold = 10000.0
        }
        struct second {
            static let percent   = 0.04
            static let threshold = 25000.0
        }
        struct third {
            static let percent   = 0.045
            static let threshold = 40000.0
        }
        struct fourth {
            static let percent   = 0.06
            static let threshold = 60000.0
        }
        struct fifth {
            static let percent   = 0.065
            static let threshold = 60000.0
        }
        
        static func TaxAmount(from annual: Double) -> Double {
            var firstTaxed   : Double = 0
            var secondTaxed  : Double = 0
            var thirdTaxed   : Double = 0
            var fourthTaxed  : Double = 0
            var fifthTaxed   : Double = 0
            
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
                
            } else if annual > fifth.threshold {
                firstTaxed   = first.threshold * first.percent
                secondTaxed  = (second.threshold - first.threshold) * second.percent
                thirdTaxed   = (third.threshold - second.threshold) * third.percent
                fourthTaxed  = (fourth.threshold - third.threshold) * fourth.percent
                fifthTaxed   = (annual - fourth.threshold) * fifth.percent
                
                stateTax += firstTaxed + secondTaxed + thirdTaxed + fourthTaxed + fifthTaxed
                
            }
            
            return stateTax
        }
    }
    
    // MARK: - Wisconsin
    struct Wisconsin {
        struct first {
            static let percent   = 0.02
            static let threshold = 3000.0
        }
        struct second {
            static let percent   = 0.03
            static let threshold = 5000.0
        }
        struct third {
            static let percent   = 0.05
            static let threshold = 17000.0
        }
        struct fourth {
            static let percent   = 0.0575
            static let threshold = 17000.0
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
    
    // MARK: - Wyoming
    struct Wyoming {
        struct first {
            static let none = 0.0
        }
    }
    
    // MARK: - Methods
    
    
}

