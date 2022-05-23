//
//  ContentView.swift
//  Postax
//
//  Created by Jon Corn on 4/14/22.
//

import SwiftUI

//    .frame(maxWidth: .infinity)
//    .padding(.vertical, 20)
//    .background(.regularMaterial)
//    .clipShape(RoundedRectangle(cornerRadius: 20))

//enum CalcButtons: String {
//    case one = "1"
//    case two = "2"
//    case three = "3"
//    case four = "4"
//    case five = "5"
//    case six = "6"
//    case seven = "7"
//    case eight = "8"
//    case nine = "9"
//    case zero = "0"
//    case dot = "."
//    case back = "<"
//}

struct ContentView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



