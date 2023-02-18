//
//  StateObject_Intro.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/18/23.
//

import SwiftUI

class Car: ObservableObject {
    @Published var year: String
    @Published var make: String
    
    init(year: String, make: String) {
        self.year = year
        self.make = make
    }
}

struct StateObject_Intro: View {
    @StateObject private var car = Car(year: "2020", make: "Honda")
    
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "State Object", subtitle: "Introduction", desc: "Use the @StateObject property wrapper for two-way binding between a class and your UI.")
            
            Text("\(car.year) \(car.make)")
                .font(.largeTitle)
                .fontWeight(.black)
            
            VStack {
                TextField("year", text: $car.year)
                TextField("make", text: $car.make)
            }
            .textFieldStyle(.roundedBorder)
            .padding()
            
            
        }
        .font(.title)
    }
}

struct StateObject_Intro_Previews: PreviewProvider {
    static var previews: some View {
        StateObject_Intro()
    }
}
