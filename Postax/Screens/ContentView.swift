//
//  ContentView.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import SwiftUI

struct ContentView: View {
    
    // test income
    @State private var grossIncome: Double = 60000
    @State private var statelol = "California"
    
    var body: some View {
        VStack {
            Text("State: \(PTContentViewModel.stateTaxAmount(from: statelol, with: grossIncome) / 26)")
            
            Text("Federal: \(PTFedTax.FedTaxAmount(from: grossIncome) / 26)")
            
            Text("Total PostTax: \(grossIncome - PTStateTax.California.TaxAmount(from: grossIncome) - PTFedTax.FedTaxAmount(from: grossIncome))")
            
            Text("Paycheck: \((grossIncome - PTContentViewModel.stateTaxAmount(from: statelol, with: grossIncome) - PTFedTax.FedTaxAmount(from: grossIncome)) / 26)")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



