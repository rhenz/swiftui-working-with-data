//
//  StateObject_WithPicker.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/18/23.
//

import SwiftUI

class CarChoices: ObservableObject {
    @Published var cars: [String] = [""]
    @Published var selectedCar = ""
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            cars = ["Audi", "Honda", "Mazda", "Tesla", "Toyota"]
            selectedCar = cars[2]
        }
    }
}

struct StateObject_WithPicker: View {
    @StateObject private var carChoices = CarChoices()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "State Object", subtitle: "With Picker", desc: "Here's an example of binding @StateObject property to a Picker")
            
            Text("Select a car")
            
            Picker("", selection: $carChoices.selectedCar) {
                ForEach(carChoices.cars, id: \.self) { car in
                    Text(car).tag(car)
                }
            }
            .pickerStyle(.wheel)
            .background(Color.green.cornerRadius(20).opacity(0.3))
            
            Text("You selected a: ") +
            Text("\(carChoices.selectedCar)")
                .foregroundColor(.green)
                .fontWeight(.black)
        }
        .font(.title)
    }
}

struct StateObject_WithPicker_Previews: PreviewProvider {
    static var previews: some View {
        StateObject_WithPicker()
    }
}
