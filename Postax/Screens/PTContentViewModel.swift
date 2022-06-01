//
//  PTContentViewModel.swift
//  Postax
//
//  Created by Jon Corn on 5/31/22.
//

import Foundation

class PTContentViewModel {
    
    // matches String value of state to statetax func
    static func stateTaxAmount(from state: String, with grossIncome: Double) -> Double {
        switch state {
        case "Alabama":
            return PTStateTax.Alabama.TaxAmount(from: grossIncome)
        case "Alaska":
            return 0
        case "Arizona":
            return PTStateTax.Arizona.TaxAmount(from: grossIncome)
        case "Arkansas":
            return PTStateTax.Arkansas.TaxAmount(from: grossIncome)
        case "California":
            return PTStateTax.California.TaxAmount(from: grossIncome)
        case "Colorado":
            return PTStateTax.Colorado.TaxAmount(from: grossIncome)
        case "Connecticut":
            return PTStateTax.Connecticut.TaxAmount(from: grossIncome)
        case "Delaware":
            return PTStateTax.Delaware.TaxAmount(from: grossIncome)
        case "Florida":
            return 0
        case "Georgia":
            return PTStateTax.Georgia.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
        case <#state#>:
            return PTStateTax.<#state#>.TaxAmount(from: grossIncome)
            
            
        default:
            print("cool")
            return 0.0
        }
    }
}
