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
        case "Hawaii":
            return PTStateTax.Hawaii.TaxAmount(from: grossIncome)
        case "Idaho":
            return PTStateTax.Idaho.TaxAmount(from: grossIncome)
        case "Illinois":
            return PTStateTax.Illinois.TaxAmount(from: grossIncome)
        case "Indiana":
            return PTStateTax.Indiana.TaxAmount(from: grossIncome)
        case "Iowa":
            return PTStateTax.Iowa.TaxAmount(from: grossIncome)
        case "Kansas":
            return PTStateTax.Kansas.TaxAmount(from: grossIncome)
        case "Kentucky":
            return PTStateTax.Kentucky.TaxAmount(from: grossIncome)
        case "Louisiana":
            return PTStateTax.Louisiana.TaxAmount(from: grossIncome)
        case "Maine":
            return PTStateTax.Maine.TaxAmount(from: grossIncome)
        case "Maryland":
            return PTStateTax.Maryland.TaxAmount(from: grossIncome)
        case "Massachusetts":
            return PTStateTax.Massachusetts.TaxAmount(from: grossIncome)
        case "Michigan":
            return PTStateTax.Michigan.TaxAmount(from: grossIncome)
        case "Minnesota":
            return PTStateTax.Minnesota.TaxAmount(from: grossIncome)
        case "Mississippi":
            return PTStateTax.Mississippi.TaxAmount(from: grossIncome)
        case "Missouri":
            return PTStateTax.Missouri.TaxAmount(from: grossIncome)
        case "Montana":
            return PTStateTax.Montana.TaxAmount(from: grossIncome)
        case "Nebraska":
            return PTStateTax.Nebraska.TaxAmount(from: grossIncome)
        case "Nevada":
            return 0
        case "NewHampshire":
            return 0
        case "NewJersey":
            return PTStateTax.NewJersey.TaxAmount(from: grossIncome)
        case "NewMexico":
            return PTStateTax.NewMexico.TaxAmount(from: grossIncome)
        case "NewYork":
            return PTStateTax.NewYork.TaxAmount(from: grossIncome)
        case "NorthCarolina":
            return PTStateTax.NorthCarolina.TaxAmount(from: grossIncome)
        case "NorthDakota":
            return PTStateTax.NorthDakota.TaxAmount(from: grossIncome)
        case "Ohio":
            return PTStateTax.Ohio.TaxAmount(from: grossIncome)
        case "Oklahoma":
            return PTStateTax.Oklahoma.TaxAmount(from: grossIncome)
        case "Oregon":
            return PTStateTax.Oregon.TaxAmount(from: grossIncome)
        case "Pennsylvania":
            return PTStateTax.Pennsylvania.TaxAmount(from: grossIncome)
        case "RhodeIsland":
            return PTStateTax.RhodeIsland.TaxAmount(from: grossIncome)
        case "SouthCarolina":
            return PTStateTax.SouthCarolina.TaxAmount(from: grossIncome)
        case "SouthDakota":
            return 0
        case "Tennessee":
            return 0
        case "Texas":
            return 0
        case "Utah":
            return PTStateTax.Utah.TaxAmount(from: grossIncome)
        case "Vermont":
            return PTStateTax.Vermont.TaxAmount(from: grossIncome)
        case "Virginia":
            return PTStateTax.Virginia.TaxAmount(from: grossIncome)
        case "Washington":
            return 0
        case "WestVirginia":
            return PTStateTax.WestVirginia.TaxAmount(from: grossIncome)
        case "Wisconsin":
            return PTStateTax.Wisconsin.TaxAmount(from: grossIncome)
        case "Wyoming":
            return 0
            
        default:
            print("cool")
            return 0.0
        }
    }
}
