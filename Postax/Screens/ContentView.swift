//
//  ContentView.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var grossIncome: Double = 10000
    
    var body: some View {
        Text("test: \(PTStateTax.Vermont.TaxAmount(from: grossIncome))")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


