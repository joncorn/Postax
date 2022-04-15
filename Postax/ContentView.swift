//
//  ContentView.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import SwiftUI

struct ContentView: View {
    private var annual = 41600.0
    
    @State private var taxes = 0.0
    @State private var fedTaxes = 0.0
    @State private var stateTaxes = 0.0
    @State private var net = 0.0
    @State private var paycheck = 0.0
    @State private var SocialSecurity = FedTaxBrackets.SSPercent
    @State private var Medicare = FedTaxBrackets.medicarePercent
    
    var body: some View {
        VStack {
            Text("Federal: \(fedTaxes / 26)")
            Text("Social Security: \((annual * SocialSecurity) / 26)")
            Text("Medicare: \((annual * Medicare) / 26)")
            Text("Annual: \(net)")
            Text("Paycheck: \(paycheck)")
                .padding()
            Button("Calculate") {
                fedTaxes = FedTaxBrackets.FedTaxAmount(from: annual)
                net = annual - fedTaxes
                paycheck = net / 26
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
