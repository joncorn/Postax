//
//  PTStateTax.swift
//  Postax
//
//  Created by Jon Corn on 5/24/22.
//

import Foundation

// State tax brackets, sorted alphabetically
struct PTStateTax {
    
    // MARK: - Alabama
    struct Alabama {
        
        // State tax rates and cap for each bracket
        struct firstBracket {
            static let rate  = 0.02
            static let cap   = 500.0
        }
        struct secondBracket {
            static let rate  = 0.04
            static let cap   = 3000.0
        }
        struct thirdBracket {
            static let rate  = 0.05
        }
        
        
        // Maximum tax amount per tax bracket
        static let bracketsTaxed: [Double] = [10, 100]
        
        
        // Returns total state tax amount calculated from specified income
        static func TaxAmount(from grossIncome: Double) -> Double {
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax += grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome > secondBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Alaska
    struct Alaska {
        static let none = 0.0
    }
    
    // MARK: - Arizona
    struct Arizona {
        
        // State tax rates and cap for each bracket
        struct firstBracket {
            static let rate  = 0.0259
            static let cap   = 27808.0
        }
        struct secondBracket {
            static let rate  = 0.0334
            static let cap   = 55615.0
        }
        struct thirdBracket {
            static let rate  = 0.0417
            static let cap   = 166843.0
        }
        struct fourthBracket {
            static let rate  = 0.045
        }
        
        
        // Maximum tax amount per tax bracket
        static let bracketsTaxed: [Double] = [720.22, 928.75, 4638.20]
        
        
        // Returns total state tax amount calculated from specified income
        static func TaxAmount(from grossIncome: Double) -> Double {
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax += grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome > thirdBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Arkansas
    struct Arkansas {
        
        // State tax rates and cap for each bracket
        struct firstBracket {
            static let rate  = 0.02
            static let cap   = 4300.0
        }
        struct secondBracket {
            static let rate  = 0.04
            static let cap   = 8500.0
        }
        struct thirdBracket {
            static let rate  = 0.055
        }
        
        
        // Maximum tax amount per tax bracket
        static let bracketsTaxed: [Double] = [86, 168]
        
        
        // Returns total state tax amount calculated from specified income
        static func TaxAmount(from grossIncome: Double) -> Double {
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax += grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome > secondBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - California
    struct California {
        
        struct firstBracket {
            static let rate  = 0.01
            static let cap   = 9325.0
        }
        struct secondBracket {
            static let rate  = 0.02
            static let cap   = 22107.0
        }
        struct thirdBracket {
            static let rate  = 0.04
            static let cap   = 34892.0
        }
        struct fourthBracket {
            static let rate  = 0.06
            static let cap   = 48435.0
        }
        struct fifthBracket {
            static let rate  = 0.08
            static let cap   = 61214.0
        }
        struct sixthBracket {
            static let rate  = 0.093
            static let cap   = 312686.0
        }
        struct seventhBracket {
            static let rate  = 0.103
            static let cap   = 375221.0
        }
        struct eighthBracket {
            static let rate  = 0.113
            static let cap   = 625369.0
        }
        struct ninthBracket {
            static let rate  = 0.123
            static let cap   = 1000000.0
        }
        struct tenthBracket {
            static let rate  = 0.133
        }
        
        
        static let bracketsTaxed: [Double] = [93.25, 255.64, 511.4, 812.58, 1022.32, 23386.90, 6441.11, 28266.72, 46079.61]
        
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome <= sixthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            case _ where grossIncome <= seventhBracket.cap:
                bracketsTaxed[0...5].forEach { stateTax += $0 }
                stateTax += (grossIncome - sixthBracket.cap) * seventhBracket.rate
                return stateTax
                
            case _ where grossIncome <= eighthBracket.cap:
                bracketsTaxed[0...6].forEach { stateTax += $0 }
                stateTax += (grossIncome - seventhBracket.cap) * eighthBracket.rate
                return stateTax
                
            case _ where grossIncome <= ninthBracket.cap:
                bracketsTaxed[0...7].forEach { stateTax += $0 }
                stateTax += (grossIncome - eighthBracket.cap) * ninthBracket.rate
                return stateTax
                
            case _ where grossIncome > ninthBracket.cap:
                bracketsTaxed[0...8].forEach { stateTax += $0 }
                stateTax += (grossIncome - ninthBracket.cap) * tenthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Colorado
    struct Colorado {
        struct firstBracket {
            static let rate = 0.0455
        }
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            let stateTax = grossIncome * firstBracket.rate
            return stateTax
        }
    }
    
    // MARK: - Connecticut
    struct Connecticut {
        
        struct firstBracket {
            static let rate  = 0.03
            static let cap   = 10000.0
        }
        struct secondBracket {
            static let rate  = 0.05
            static let cap   = 50000.0
        }
        struct thirdBracket {
            static let rate  = 0.055
            static let cap   = 100000.0
        }
        struct fourthBracket {
            static let rate  = 0.06
            static let cap   = 200000.0
        }
        struct fifthBracket {
            static let rate  = 0.065
            static let cap   = 250000.0
        }
        struct sixthBracket {
            static let rate  = 0.069
            static let cap   = 500000.0
        }
        struct seventhBracket {
            static let rate  = 0.0699
        }
        
        static let bracketsTaxed: [Double] = [300, 2000, 2750, 6000, 3250, 17250]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome <= sixthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            case _ where grossIncome > sixthBracket.cap:
                bracketsTaxed[0...5].forEach { stateTax += $0 }
                stateTax += (grossIncome - sixthBracket.cap) * seventhBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Delaware
    struct Delaware {
        struct firstBracket {
            static let rate  = 0.022
            static let cap   = 5000.0
        }
        struct secondBracket {
            static let rate  = 0.039
            static let cap   = 10000.0
        }
        struct thirdBracket {
            static let rate  = 0.048
            static let cap   = 20000.0
        }
        struct fourthBracket {
            static let rate  = 0.052
            static let cap   = 25000.0
        }
        struct fifthBracket {
            static let rate  = 0.0555
            static let cap   = 60000.0
        }
        struct sixthBracket {
            static let rate  = 0.066
        }
        
        static let bracketsTaxed: [Double] = [110, 195, 480, 260, 1942.5]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome > fifthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Florida
    struct Florida {
        static let none = 0.0
    }
    
    // MARK: - Georgia
    struct Georgia {
        struct firstBracket {
            static let rate  = 0.01
            static let cap   = 750.0
        }
        struct secondBracket {
            static let rate  = 0.02
            static let cap   = 2250.0
        }
        struct thirdBracket {
            static let rate  = 0.03
            static let cap   = 3750.0
        }
        struct fourthBracket {
            static let rate  = 0.04
            static let cap   = 5250.0
        }
        struct fifthBracket {
            static let rate  = 0.05
            static let cap   = 7000.0
        }
        struct sixthBracket {
            static let rate  = 0.0575
        }
        
        static let bracketsTaxed: [Double] = [7.5, 30, 45, 60, 87.5]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome > fifthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Hawaii
    struct Hawaii {
        struct firstBracket {
            static let rate  = 0.014
            static let cap   = 2400.0
        }
        struct secondBracket {
            static let rate  = 0.032
            static let cap   = 4800.0
        }
        struct thirdBracket {
            static let rate  = 0.055
            static let cap   = 9600.0
        }
        struct fourthBracket {
            static let rate  = 0.064
            static let cap   = 14400.0
        }
        struct fifthBracket {
            static let rate  = 0.068
            static let cap   = 19200.0
        }
        struct sixthBracket {
            static let rate  = 0.072
            static let cap   = 24000.0
        }
        struct seventhBracket {
            static let rate  = 0.076
            static let cap   = 36000.0
        }
        struct eighthBracket {
            static let rate  = 0.079
            static let cap   = 48000.0
        }
        struct ninthBracket {
            static let rate  = 0.0825
            static let cap   = 150000.0
        }
        struct tenthBracket {
            static let rate  = 0.09
            static let cap   = 175000.0
        }
        struct eleventhBracket {
            static let rate  = 0.10
            static let cap   = 200000.0
        }
        struct twelfthBracket {
            static let rate  = 0.11
            static let cap   = 200000.0
        }
        
        static let bracketsTaxed: [Double] = [33.6, 76.8, 264, 307.2, 326.4, 345.6, 912, 948, 8415, 2250, 2500]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome <= sixthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            case _ where grossIncome <= seventhBracket.cap:
                bracketsTaxed[0...5].forEach { stateTax += $0 }
                stateTax += (grossIncome - sixthBracket.cap) * seventhBracket.rate
                return stateTax
                
            case _ where grossIncome <= eighthBracket.cap:
                bracketsTaxed[0...6].forEach { stateTax += $0 }
                stateTax += (grossIncome - seventhBracket.cap) * eighthBracket.rate
                return stateTax
                
            case _ where grossIncome <= ninthBracket.cap:
                bracketsTaxed[0...7].forEach { stateTax += $0 }
                stateTax += (grossIncome - eighthBracket.cap) * ninthBracket.rate
                return stateTax
                
            case _ where grossIncome <= tenthBracket.cap:
                bracketsTaxed[0...8].forEach { stateTax += $0 }
                stateTax += (grossIncome - ninthBracket.cap) * tenthBracket.rate
                return stateTax
                
            case _ where grossIncome <= eleventhBracket.cap:
                bracketsTaxed[0...9].forEach { stateTax += $0 }
                stateTax += (grossIncome - tenthBracket.cap) * eleventhBracket.rate
                return stateTax
                
            case _ where grossIncome > eleventhBracket.cap:
                bracketsTaxed[0...10].forEach { stateTax += $0 }
                stateTax += (grossIncome - eleventhBracket.cap) * twelfthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Idaho
    struct Idaho {
        struct firstBracket {
            static let rate  = 0.01
            static let cap   = 1588.0
        }
        struct secondBracket {
            static let rate  = 0.03
            static let cap   = 4763.0
        }
        struct thirdBracket {
            static let rate  = 0.045
            static let cap   = 7939.0
        }
        struct fourthBracket {
            static let rate  = 0.06
        }
        
        static let bracketsTaxed: [Double] = [15.88, 95.25, 142.92, 59523.66]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome > thirdBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Illinois
    struct Illinois {
        struct firstBracket {
            static let rate   = 0.0495
        }
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            return grossIncome * firstBracket.rate
        }
    }
    
    // MARK: - Indiana
    struct Indiana {
        struct firstBracket {
            static let rate   = 0.0323
        }
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            return grossIncome * firstBracket.rate
        }
    }
    
    // MARK: - Iowa
    struct Iowa {
        struct firstBracket {
            static let rate  = 0.0033
            static let cap   = 1743.0
        }
        struct secondBracket {
            static let rate  = 0.0067
            static let cap   = 3486.0
        }
        struct thirdBracket {
            static let rate  = 0.0225
            static let cap   = 6972.0
        }
        struct fourthBracket {
            static let rate  = 0.0414
            static let cap   = 15687.0
        }
        struct fifthBracket {
            static let rate  = 0.0563
            static let cap   = 26145.0
        }
        struct sixthBracket {
            static let rate  = 0.0593
            static let cap   = 34860.0
        }
        struct seventhBracket {
            static let rate  = 0.0625
            static let cap   = 52290.0
        }
        struct eighthBracket {
            static let rate  = 0.0744
            static let cap   = 78435.0
        }
        struct ninthBracket {
            static let rate  = 0.0853
        }
        
        static let bracketsTaxed: [Double] = [5.75, 11.68, 78.44, 360.80, 588.79, 516.80, 1089.38, 1945.19]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome <= sixthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            case _ where grossIncome <= seventhBracket.cap:
                bracketsTaxed[0...5].forEach { stateTax += $0 }
                stateTax += (grossIncome - sixthBracket.cap) * seventhBracket.rate
                return stateTax
                
            case _ where grossIncome <= eighthBracket.cap:
                bracketsTaxed[0...6].forEach { stateTax += $0 }
                stateTax += (grossIncome - seventhBracket.cap) * eighthBracket.rate
                return stateTax
                
            case _ where grossIncome > eighthBracket.cap:
                bracketsTaxed[0...7].forEach { stateTax += $0 }
                stateTax += (grossIncome - eighthBracket.cap) * ninthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Kansas
    struct Kansas {
        struct firstBracket {
            static let rate  = 0.031
            static let cap   = 15000.0
        }
        struct secondBracket {
            static let rate  = 0.0525
            static let cap   = 30000.0
        }
        struct thirdBracket {
            static let rate  = 0.057
        }
        
        static let bracketsTaxed: [Double] = [465, 787.5]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome > secondBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Kentucky
    struct Kentucky {
        struct firstBracket {
            static let rate   = 0.05
        }
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            return grossIncome * firstBracket.rate
            
        }
    }
    
    // MARK: - Louisiana
    struct Louisiana {
        struct firstBracket {
            static let rate  = 0.0185
            static let cap   = 12500.0
        }
        struct secondBracket {
            static let rate  = 0.0350
            static let cap   = 50000.0
        }
        struct thirdBracket {
            static let rate  = 0.0425
        }
        
        static let bracketsTaxed: [Double] = [231.25, 1312.5, 40375]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome > secondBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Maine
    struct Maine {
        struct firstBracket {
            static let rate  = 0.058
            static let cap   = 23000.0
        }
        struct secondBracket {
            static let rate  = 0.0675
            static let cap   = 54450.0
        }
        struct thirdBracket {
            static let rate  = 0.0715
        }
        
        static let bracketsTaxed: [Double] = [1334.0, 2122.88]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome > secondBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Maryland
    struct Maryland {
        struct firstBracket {
            static let rate  = 0.02
            static let cap   = 1000.0
        }
        struct secondBracket {
            static let rate  = 0.03
            static let cap   = 2000.0
        }
        struct thirdBracket {
            static let rate  = 0.04
            static let cap   = 3000.0
        }
        struct fourthBracket {
            static let rate  = 0.0475
            static let cap   = 100000.0
        }
        struct fifthBracket {
            static let rate  = 0.05
            static let cap   = 125000.0
        }
        struct sixthBracket {
            static let rate  = 0.0525
            static let cap   = 150000.0
        }
        struct seventhBracket {
            static let rate  = 0.055
            static let cap   = 250000.0
        }
        struct eighthBracket {
            static let rate  = 0.0575
        }
        
        static let bracketsTaxed: [Double] = [20.0, 30.0, 40.0, 4607.5, 1250.0, 1312.5, 5500.0]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome <= sixthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            case _ where grossIncome <= seventhBracket.cap:
                bracketsTaxed[0...5].forEach { stateTax += $0 }
                stateTax += (grossIncome - sixthBracket.cap) * seventhBracket.rate
                return stateTax
                
            case _ where grossIncome > seventhBracket.cap:
                bracketsTaxed[0...6].forEach { stateTax += $0 }
                stateTax += (grossIncome - seventhBracket.cap) * eighthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Massachusetts
    struct Massachusetts {
        struct firstBracket {
            static let rate  = 0.05
        }
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            return grossIncome * firstBracket.rate
        }
    }
    
    // MARK: - Michigan
    struct Michigan {
        struct firstBracket {
            static let rate  = 0.045
        }
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            return grossIncome * firstBracket.rate
        }
    }
    
    // MARK: - Minnesota
    struct Minnesota {
        struct firstBracket {
            static let rate  = 0.0535
            static let cap   = 28080.0
        }
        struct secondBracket {
            static let rate  = 0.068
            static let cap   = 92230.0
        }
        struct thirdBracket {
            static let rate  = 0.0785
            static let cap   = 171220.0
        }
        struct fourthBracket {
            static let rate  = 0.0985
        }
        
        static let bracketsTaxed: [Double] = [1502.28, 4362.20, 6200.715]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome > thirdBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Mississippi
    struct Mississippi {
        struct zerothBracket {
            static let rate  = 0.0
            static let cap   = 5000.00
        }
        struct firstBracket {
            static let rate  = 0.04
            static let cap   = 10000.0
        }
        struct secondBracket {
            static let rate  = 0.05
        }
        
        static let bracketsTaxed: [Double] = [0.0, 400]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= zerothBracket.cap:
                stateTax = grossIncome * zerothBracket.rate
                return stateTax
                
            case _ where grossIncome <= firstBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - zerothBracket.cap) * firstBracket.rate
                return stateTax
                
            case _ where grossIncome > firstBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Missouri
    struct Missouri {
        struct firstBracket {
            static let rate  = 0.015
            static let cap   = 1088.0
        }
        struct secondBracket {
            static let rate  = 0.02
            static let cap   = 2176.0
        }
        struct thirdBracket {
            static let rate  = 0.025
            static let cap   = 3264.0
        }
        struct fourthBracket {
            static let rate  = 0.03
            static let cap   = 4352.0
        }
        struct fifthBracket {
            static let rate  = 0.035
            static let cap   = 5440.0
        }
        struct sixthBracket {
            static let rate  = 0.04
            static let cap   = 6528.0
        }
        struct seventhBracket {
            static let rate  = 0.045
            static let cap   = 7616.0
        }
        struct eighthBracket {
            static let rate  = 0.05
            static let cap   = 8704.0
        }
        struct ninthBracket {
            static let rate  = 0.054
        }
        
        static let bracketsTaxed: [Double] = [16.32, 21.76, 27.2, 32.64, 38.08, 43.52, 48.96, 54.40]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome <= sixthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            case _ where grossIncome <= seventhBracket.cap:
                bracketsTaxed[0...5].forEach { stateTax += $0 }
                stateTax += (grossIncome - sixthBracket.cap) * seventhBracket.rate
                return stateTax
                
            case _ where grossIncome <= eighthBracket.cap:
                bracketsTaxed[0...6].forEach { stateTax += $0 }
                stateTax += (grossIncome - seventhBracket.cap) * eighthBracket.rate
                return stateTax
                
            case _ where grossIncome > eighthBracket.cap:
                bracketsTaxed[0...7].forEach { stateTax += $0 }
                stateTax += (grossIncome - eighthBracket.cap) * ninthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Montana
    struct Montana {
        struct firstBracket {
            static let rate  = 0.01
            static let cap   = 3100.0
        }
        struct secondBracket {
            static let rate  = 0.02
            static let cap   = 5500.0
        }
        struct thirdBracket {
            static let rate  = 0.03
            static let cap   = 8400.0
        }
        struct fourthBracket {
            static let rate  = 0.04
            static let cap   = 11400.0
        }
        struct fifthBracket {
            static let rate  = 0.05
            static let cap   = 14600.0
        }
        struct sixthBracket {
            static let rate  = 0.06
            static let cap   = 18800.0
        }
        struct seventhBracket {
            static let rate  = 0.0675
        }
        
        static let bracketsTaxed: [Double] = [31, 48, 87, 120, 160, 252]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome <= sixthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            case _ where grossIncome > sixthBracket.cap:
                bracketsTaxed[0...5].forEach { stateTax += $0 }
                stateTax += (grossIncome - sixthBracket.cap) * seventhBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Nebraska
    struct Nebraska {
        struct firstBracket {
            static let rate  = 0.0246
            static let cap   = 3440.0
        }
        struct secondBracket {
            static let rate  = 0.0351
            static let cap   = 20590.0
        }
        struct thirdBracket {
            static let rate  = 0.0501
            static let cap   = 33180.0
        }
        struct fourthBracket {
            static let rate  = 0.0684
        }
        
        static let bracketsTaxed: [Double] = [84.62, 601.97, 630.76]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome > thirdBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
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
        struct firstBracket {
            static let rate  = 0.014
            static let cap   = 20000.0
        }
        struct secondBracket {
            static let rate  = 0.0175
            static let cap   = 35000.0
        }
        struct thirdBracket {
            static let rate  = 0.035
            static let cap   = 40000.0
        }
        struct fourthBracket {
            static let rate  = 0.05525
            static let cap   = 75000.0
        }
        struct fifthBracket {
            static let rate  = 0.0637
            static let cap   = 500000.0
        }
        struct sixthBracket {
            static let rate  = 0.0897
            static let cap   = 1000000.0
        }
        struct seventhBracket {
            static let rate  = 0.1075
        }
        
        static let bracketsTaxed: [Double] = [280.0, 262.5, 175.0, 1933.75, 27072.5, 44850.0]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome <= sixthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            case _ where grossIncome > sixthBracket.cap:
                bracketsTaxed[0...5].forEach { stateTax += $0 }
                stateTax += (grossIncome - sixthBracket.cap) * seventhBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - New Mexico
    struct NewMexico {
        struct firstBracket {
            static let rate  = 0.017
            static let cap   = 5500.0
        }
        struct secondBracket {
            static let rate  = 0.032
            static let cap   = 11000.0
        }
        struct thirdBracket {
            static let rate  = 0.047
            static let cap   = 16000.0
        }
        struct fourthBracket {
            static let rate  = 0.049
            static let cap   = 210000.0
        }
        struct fifthBracket {
            static let rate  = 0.059
        }
        
        static let bracketsTaxed: [Double] = [93.5, 176.0, 235.0, 9506.0]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome > fourthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - New York
    struct NewYork {
        struct firstBracket {
            static let rate  = 0.04
            static let cap   = 8500.0
        }
        struct secondBracket {
            static let rate  = 0.045
            static let cap   = 11700.0
        }
        struct thirdBracket {
            static let rate  = 0.0525
            static let cap   = 13900.0
        }
        struct fourthBracket {
            static let rate  = 0.0585
            static let cap   = 80650.0
        }
        struct fifthBracket {
            static let rate  = 0.0625
            static let cap   = 215400.0
        }
        struct sixthBracket {
            static let rate  = 0.0685
            static let cap   = 1077550.0
        }
        struct seventhBracket {
            static let rate  = 0.0965
            static let cap   = 5000000.0
        }
        struct eighthBracket {
            static let rate  = 0.103
            static let cap   = 25000000.0
        }
        struct ninthBracket {
            static let rate  = 0.109
        }
        
        static let bracketsTaxed: [Double] = [340.0, 144.0, 115.5, 3904.88, 8421.88, 59057.28, 378516.43, 2060000.0]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome <= sixthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            case _ where grossIncome <= seventhBracket.cap:
                bracketsTaxed[0...5].forEach { stateTax += $0 }
                stateTax += (grossIncome - sixthBracket.cap) * seventhBracket.rate
                return stateTax
                
            case _ where grossIncome <= eighthBracket.cap:
                bracketsTaxed[0...6].forEach { stateTax += $0 }
                stateTax += (grossIncome - seventhBracket.cap) * eighthBracket.rate
                return stateTax
                
            case _ where grossIncome > eighthBracket.cap:
                bracketsTaxed[0...7].forEach { stateTax += $0 }
                stateTax += (grossIncome - eighthBracket.cap) * ninthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - North Carolina
    struct NorthCarolina {
        struct firstBracket {
            static let rate  = 0.0499
        }
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            return firstBracket.rate * grossIncome
        }
    }
    
    // MARK: - North Dakota
    struct NorthDakota {
        struct firstBracket {
            static let rate  = 0.011
            static let cap   = 40525.0
        }
        struct secondBracket {
            static let rate  = 0.0204
            static let cap   = 98100.0
        }
        struct thirdBracket {
            static let rate  = 0.0227
            static let cap   = 204675.0
        }
        struct fourthBracket {
            static let rate  = 0.0264
            static let cap   = 445000.0
        }
        struct fifthBracket {
            static let rate  = 0.029
        }
        
        static let bracketsTaxed: [Double] = [445.78, 1174.53, 2419.25, 6344.58]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome > fourthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Ohio
    struct Ohio {
        struct firstBracket {
            static let rate  = 0.02765
            static let cap   = 44250.0
        }
        struct secondBracket {
            static let rate  = 0.03226
            static let cap   = 88450.0
        }
        struct thirdBracket {
            static let rate  = 0.03688
            static let cap   = 110650.0
        }
        struct fourthBracket {
            static let rate  = 0.0399
        }
        
        static let bracketsTaxed: [Double] = [1223.51, 1425.89, 818.74]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome > thirdBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Oklahoma
    struct Oklahoma {
        struct firstBracket {
            static let rate  = 0.0025
            static let cap   = 1000.0
        }
        struct secondBracket {
            static let rate  = 0.0075
            static let cap   = 2500.0
        }
        struct thirdBracket {
            static let rate  = 0.0175
            static let cap   = 3750.0
        }
        struct fourthBracket {
            static let rate  = 0.0275
            static let cap   = 4900.0
        }
        struct fifthBracket {
            static let rate  = 0.0375
            static let cap   = 7200.0
        }
        struct sixthBracket {
            static let rate  = 0.0475
        }
        
        static let bracketsTaxed: [Double] = [2.5, 11.25, 21.88, 31.63, 86.25]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome > fifthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Oregon
    struct Oregon {
        struct firstBracket {
            static let rate  = 0.0475
            static let cap   = 3650.0
        }
        struct secondBracket {
            static let rate  = 0.0675
            static let cap   = 9200.0
        }
        struct thirdBracket {
            static let rate  = 0.0875
            static let cap   = 125000.0
        }
        struct fourthBracket {
            static let rate  = 0.0990
        }
        
        static let bracketsTaxed: [Double] = [173.38, 374.63, 10132.5]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome > thirdBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Pennsylvania
    struct Pennsylvania {
        struct firstBracket {
            static let rate  = 0.0307
        }
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            return grossIncome * firstBracket.rate
        }
    }
    
    // MARK: - Rhode Island
    struct RhodeIsland {
        struct firstBracket {
            static let rate  = 0.0375
            static let cap   = 68200.0
        }
        struct secondBracket {
            static let rate  = 0.0475
            static let cap   = 155050.0
        }
        struct thirdBracket {
            static let rate  = 0.0599
        }
        
        static let bracketsTaxed: [Double] = [2557.5, 4125.38]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome > secondBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - South Carolina
    struct SouthCarolina {
        struct firstBracket {
            static let rate  = 0.0
            static let cap   = 3200.0
        }
        struct secondBracket {
            static let rate  = 0.03
            static let cap   = 6410.0
        }
        struct thirdBracket {
            static let rate  = 0.04
            static let cap   = 9620.0
        }
        struct fourthBracket {
            static let rate  = 0.05
            static let cap   = 12820.0
        }
        struct fifthBracket {
            static let rate  = 0.06
            static let cap   = 16040.0
        }
        struct sixthBracket {
            static let rate  = 0.07
        }
        
        static let bracketsTaxed: [Double] = [0.0, 96.0, 128.4, 160.0, 193.2]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome <= fifthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            case _ where grossIncome > fifthBracket.cap:
                bracketsTaxed[0...4].forEach { stateTax += $0 }
                stateTax += (grossIncome - fifthBracket.cap) * sixthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - South Dakota
    struct SouthDakota {
        struct firstBracket {
            static let none = 0.0
        }
    }
    
    // MARK: - Tennessee
    struct Tennessee {
        struct firstBracket {
            static let none = 0.0
        }
    }
    
    // MARK: - Texas
    struct Texas {
        struct firstBracket {
            static let none = 0.0
        }
    }
    
    // MARK: - Utah
    struct Utah {
        struct firstBracket {
            static let rate = 0.0495
        }
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            return grossIncome * firstBracket.rate
        }
    }
    
    // MARK: - Vermont
    struct Vermont {
        struct firstBracket {
            static let rate  = 0.0335
            static let cap   = 40950.0
        }
        struct secondBracket {
            static let rate  = 0.0660
            static let cap   = 99200.0
        }
        struct thirdBracket {
            static let rate  = 0.0760
            static let cap   = 206950.0
        }
        struct fourthBracket {
            static let rate  = 0.0875
        }
        
        static let bracketsTaxed: [Double] = [1371.83, 3844.5, 8189.0]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome > thirdBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Virginia
    struct Virginia {
        struct firstBracket {
            static let rate  = 0.02
            static let cap   = 3000.0
        }
        struct secondBracket {
            static let rate  = 0.03
            static let cap   = 5000.0
        }
        struct thirdBracket {
            static let rate  = 0.05
            static let cap   = 17000.0
        }
        struct fourthBracket {
            static let rate  = 0.0575
        }
        
        static let bracketsTaxed: [Double] = [60.0, 60.0, 600.0]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome > thirdBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Washington
    struct Washington {
        struct firstBracket {
            static let none = 0.0
        }
    }
    
    // MARK: - West Virginia
    struct WestVirginia {
        struct firstBracket {
            static let rate  = 0.03
            static let cap   = 10000.0
        }
        struct secondBracket {
            static let rate  = 0.04
            static let cap   = 25000.0
        }
        struct thirdBracket {
            static let rate  = 0.045
            static let cap   = 40000.0
        }
        struct fourthBracket {
            static let rate  = 0.06
            static let cap   = 60000.0
        }
        struct fifthBracket {
            static let rate  = 0.065
        }
        
        static let bracketsTaxed: [Double] = [300.0, 600.0, 675.0, 1200.0]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome <= fourthBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            case _ where grossIncome > fourthBracket.cap:
                bracketsTaxed[0...3].forEach { stateTax += $0 }
                stateTax += (grossIncome - fourthBracket.cap) * fifthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Wisconsin
    struct Wisconsin {
        struct firstBracket {
            static let rate  = 0.0354
            static let cap   = 12760.0
        }
        struct secondBracket {
            static let rate  = 0.0465
            static let cap   = 25520.0
        }
        struct thirdBracket {
            static let rate  = 0.053
            static let cap   = 280950.0
        }
        struct fourthBracket {
            static let rate  = 0.0575
        }
        
        static let bracketsTaxed: [Double] = [451.70, 593.34, 13537.79]
        
        static func TaxAmount(from grossIncome: Double) -> Double {
            
            var stateTax: Double = 0
            
            switch grossIncome {
            case _ where grossIncome <= firstBracket.cap:
                stateTax = grossIncome * firstBracket.rate
                return stateTax
                
            case _ where grossIncome <= secondBracket.cap:
                stateTax += bracketsTaxed[0]
                stateTax += (grossIncome - firstBracket.cap) * secondBracket.rate
                return stateTax
                
            case _ where grossIncome <= thirdBracket.cap:
                bracketsTaxed[0...1].forEach { stateTax += $0 }
                stateTax += (grossIncome - secondBracket.cap) * thirdBracket.rate
                return stateTax
                
            case _ where grossIncome > thirdBracket.cap:
                bracketsTaxed[0...2].forEach { stateTax += $0 }
                stateTax += (grossIncome - thirdBracket.cap) * fourthBracket.rate
                return stateTax
                
            default:
                stateTax = 0
                return stateTax
            }
        }
    }
    
    // MARK: - Wyoming
    struct Wyoming {
        struct firstBracket {
            static let none = 0.0
        }
    }
}
