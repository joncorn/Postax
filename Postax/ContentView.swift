//
//  ContentView.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var annual = 0.0
    @State private var taxes = 0.0
    @State private var fedTaxes = 0.0
    @State private var stateTaxes = 0.0
    @State private var net = 0.0
    @State private var paycheck = 0.0
    @State private var SocialSecurity = FedTaxBrackets.SSPercent
    @State private var Medicare = FedTaxBrackets.medicarePercent
    @State private var medi = 0.0
    @State private var ss = 0.0
    @State private var grossPaycheck = 0.0
    @FocusState private var amountIsFocused: Bool
    
    var body: some View {
        VStack {
            Section {
                TextField("Salary", value: $annual, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
            }
            Text("State: \(stateTaxes / 26)")
            Text("Federal: \(fedTaxes / 26)")
            Text("Social Security: \(ss)")
            Text("Medicare: \(medi)")
            Text("Annual: \(net)")
            Text("Before Taxes: \(grossPaycheck)")
                .padding()
            Text("Paycheck: \(paycheck)")
                .padding()
            
            Button("Calculate") {
                fedTaxes = FedTaxBrackets.FedTaxAmount(from: annual)
                stateTaxes = StateTaxBrackets.Connecticut.TaxAmount(from: annual)
                medi = (annual * Medicare) / 26
                ss = (annual * SocialSecurity) / 26
                net = annual - fedTaxes
                paycheck = net / 26
                grossPaycheck = annual / 26
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
