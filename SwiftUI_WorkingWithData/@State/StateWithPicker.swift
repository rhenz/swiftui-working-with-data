//
//  StateWithPicker.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/10/23.
//

import SwiftUI

struct StateWithPicker: View {
   private let names = ["Lucas", "John", "Chabby", "Oli", "Nimbus"]
   @State private var selectedName = "Chabby"
   
   var body: some View {
      VStack(spacing: 15) {
         HeaderView(title: "State", subtitle: "Two-way Binding: Picker", desc: "Every time the picker scrolls the state variable is getting updated. The reset button can change the state variable value and the picker will update.")
         
         Picker("Name", selection: $selectedName) {
            ForEach(names, id: \.self) { name in
               Text(name)
            }
         }
         .pickerStyle(.wheel)
         .padding(.horizontal)
         
         Button("Reset") {
            selectedName = "Chabby"
         }
         
         DescView("Text views can only have read-only bindings", backgroundColor: .blue, textColor: .white)
         
         Text("Selected: \(selectedName)")
      }
      .font(.title)
   }
}

struct StateWithPicker_Previews: PreviewProvider {
   static var previews: some View {
      StateWithPicker()
   }
}
