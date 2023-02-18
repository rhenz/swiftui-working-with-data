//
//  ClassData_Binding.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/17/23.
//

import SwiftUI

class CarInformation: ObservableObject {
    @Published var year = ""
    @Published var make = ""
}

struct ClassData_Binding: View {
    @StateObject var carInfo = CarInformation()
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(title: "Class Data", subtitle: "Binding to Classes", desc: "Step 1: Have your class conform to ObservableObject.\n Step 2: Assign it to a variable with property wrapper @StateObject.")
            
            GroupBox {
                TextField("car year", text: $carInfo.year)
                TextField("car make", text: $carInfo.make)
            } label: {
                Text("Enter car year and make")
            }
            .textFieldStyle(.roundedBorder)
            .padding()
            
            Text("Car Information:")
            Text("\(carInfo.year) \(carInfo.make)")
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .font(.title)
    }
}

struct ClassData_Binding_Previews: PreviewProvider {
    static var previews: some View {
        ClassData_Binding()
    }
}
