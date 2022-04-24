//
//  StateTaxBrackets.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import Foundation

// State tax brackets, sorted alphabetically
struct StateTaxBrackets {
    
    var someDict = [["CA", StateTaxBrackets.California.TaxAmount(from: 5000),
                    "AL", Alabama.TaxAmount(from: 5000)],
    ]
    
    
    
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
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                stateTax = annual * first.percent
            } else if annual <= second.threshold {
                stateTax = annual * second.percent
            } else if annual <= third.threshold {
                stateTax = annual * third.percent
            } else if annual > fourth.threshold {
                stateTax = annual * fourth.percent
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
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                stateTax = annual * first.percent
            } else if annual <= second.threshold {
                stateTax = annual * second.percent
            } else if annual > third.threshold {
                stateTax = annual * third.percent
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
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                stateTax = annual * first.percent
            } else if annual <= second.threshold {
                stateTax = annual * second.percent
            } else if annual <= third.threshold {
                stateTax = annual * third.percent
            } else if annual <= fourth.threshold {
                stateTax = annual * fourth.percent
            } else if annual <= fifth.threshold {
                stateTax = annual * fifth.percent
            } else if annual <= sixth.threshold {
                stateTax = annual * sixth.percent
            } else if annual <= seventh.threshold {
                stateTax = annual * seventh.percent
            } else if annual <= eighth.threshold {
                stateTax = annual * eighth.percent
            } else if annual <= ninth.threshold {
                stateTax = annual * ninth.percent
            } else if annual > tenth.threshold {
                stateTax = annual * tenth.percent
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
            
            var stateTax: Double = 0
            
            if annual <= first.threshold {
                stateTax = annual * first.percent
            } else if annual <= second.threshold {
                stateTax = annual * second.percent
            } else if annual <= third.threshold {
                stateTax = annual * third.percent
            } else if annual <= fourth.threshold {
                stateTax = annual * fourth.percent
            } else if annual <= fifth.threshold {
                stateTax = annual * fifth.percent
            } else if annual <= sixth.threshold {
                stateTax = annual * sixth.percent
            } else if annual > seventh.threshold {
                stateTax = annual * seventh.percent
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
            
            var stateTax: Double = 0
            
            if annual <= 2000 {
                stateTax = 0
            } else if annual <= first.threshold && annual > 2000 {
                stateTax = annual * first.percent
            } else if annual <= second.threshold {
                stateTax = annual * second.percent
            } else if annual <= third.threshold {
                stateTax = annual * third.percent
            } else if annual <= fourth.threshold {
                stateTax = annual * fourth.percent
            } else if annual <= fifth.threshold {
                stateTax = annual * fifth.percent
            } else if annual > sixth.threshold {
                stateTax = annual * sixth.percent
            }
            
            return stateTax
        }
        
    }
    
    // MARK: - Florida
    struct Florida {
        
    }
    
    // MARK: - Georgia
    struct Georgia {
        
    }
    
    // MARK: - Hawaii
    struct Hawaii {
        
    }
    
    // MARK: - Idaho
    struct Idaho {
        
    }
    
    // MARK: - Illinois
    struct Illinois {
        
    }
    
    // MARK: - Indiana
    struct Indiana {
        
    }
    
    // MARK: - Iowa
    struct Iowa {
        
    }
    
    // MARK: - Kansas
    struct Kansas {
        
    }
    
    // MARK: - Kentucky
    struct Kentucky {
        
    }
    
    // MARK: - Louisiana
    struct Louisiana {
        
    }
    
    // MARK: - Maine
    struct Maine {
        
    }
    
    // MARK: - Maryland
    struct Maryland {
        
    }
    
    // MARK: - Massachusetts
    struct Massachusetts {
        
    }
    
    // MARK: - Michigan
    struct Michigan {
        
    }
    
    // MARK: - Minnesota
    struct Minnesota {
        
    }
    
    // MARK: - Mississippi
    struct Mississippi {
        
    }
    
    // MARK: - Missouri
    struct Missouri {
        
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
    
    
}
