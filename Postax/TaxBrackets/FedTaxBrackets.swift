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
            static let threshold = 523601.0
        }
}
