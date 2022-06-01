//
//  ContentView.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var grossIncome: Double = 125000
    @State private var statelol = "Arizona"
    
    var body: some View {
        VStack {
            Text("State: \(PTContentViewModel.stateTaxAmount(from: statelol, with: grossIncome))")
            Text("Federal: \(PTFedTax.FedTaxAmount(from: grossIncome))")
            Text("Total Post-Tax: \(grossIncome - PTStateTax.California.TaxAmount(from: grossIncome) - PTFedTax.FedTaxAmount(from: grossIncome))")
            Text("Paycheck: \((grossIncome - PTStateTax.California.TaxAmount(from: grossIncome) - PTFedTax.FedTaxAmount(from: grossIncome)) / 26)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



