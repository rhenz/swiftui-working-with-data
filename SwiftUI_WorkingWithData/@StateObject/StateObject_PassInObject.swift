//
//  StateObject_PassInObject.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/21/23.
//

import SwiftUI

struct StateObject_PassInObject: View {
    @StateObject var car = Car(year: "2022", make: "Honda")
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "StateObject", subtitle: "Previewing", desc: "You can also pass in an instantiated class to the @StateObject")
            
            Text("\(car.year) \(car.make)")
                .font(.largeTitle)
                .fontWeight(.black)
            
            VStack {
                TextField("year", text: $car.year)
                    .textFieldStyle(.roundedBorder)
                TextField("make", text: $car.make)
                    .textFieldStyle(.roundedBorder)
            }
            .padding()
        }
        .font(.title)
    }
}

struct StateObject_PassInObject_Previews: PreviewProvider {
    static var toyota = Car(year: "2021", make: "Tacoma")
    static var tesla = Car(year: "2022", make: "Tesla")
    
    static var previews: some View {
        Group {
            StateObject_PassInObject(car: toyota)
                .previewLayout(.sizeThatFits)
            StateObject_PassInObject(car: tesla)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
