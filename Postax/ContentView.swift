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
    
//    let buttons: [[CalcButtons]] = [
//        [.one, .two, .three],
//        [.four, .five, .six],
//        [.seven, .eight, .nine],
//        [.dot, .zero, .back]
//    ]
    
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


/// for each method
//HStack {
//    ForEach(buttons, id: \.self) { row in
//        HStack {
//            ForEach(row, id: \.self) { item in
//                Button(action: {
//
//                }, label: {
//                    Text(item.rawValue)
//                        .font(.system(size: 32))
//                        .frame(width: 70, height: 70)
//                        .background(Color.orange)
//                        .foregroundColor(.white)
//                        .cornerRadius(35)
//                })
//            }
//        }
//    }
//}

///the thin material stuff
//VStack {
//    Text("hi")
//}
//Spacer()
//VStack {
//    // Text display
//    Text("Postax")
//        .bold()
//        .font(.system(size: 64))
//        .foregroundColor(.white)
//        .padding()
//    Text("$0")
//        .bold()
//        .font(.system(size: 64))
//        .foregroundColor(.white)
//    Spacer()
//} // VStack
//.frame(
//    minWidth: 0,
//    maxWidth: .infinity,
//    minHeight: 0,
//    maxHeight: 500,
//    alignment: .center
//)
//.padding(.vertical, 20)
//.background(.thinMaterial)
//.clipShape(RoundedRectangle(cornerRadius: 20))
//.padding()

