//
//  StateWithClassData.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/12/23.
//

import SwiftUI

class NameClass {
   var firstName = ""
   var lastName = ""
   
   init(first: String, last: String) {
      firstName = first
      lastName = last
   }
}

struct StateWithClassData: View {
   @State private var name = NameClass(first: "Fernanda", last: "Cruz")
   
   var body: some View {
      VStack(spacing: 20) {
         HeaderView(title: "State", subtitle: "Working With Class", desc: "A class can be used for a one-way bind.")
         
         Text("Full Name:")
         Text("\(name.firstName) \(name.lastName)")
            .font(.largeTitle)
            .fontWeight(.black)
         
         VStack {
            Text("Try updating the name:")
            
            Group {
               TextField("First Name", text: $name.firstName)
               TextField("Last Name", text: $name.lastName)
            }
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
         }
         
         Spacer()
         
         Button("One-Way-Bind-Button") {
            // Initializing new `NameClass` to update the state property
            self.name = NameClass(first: "Better Call", last: "Saul")
         }
         
         Spacer()
         
         DescView("But it won't work for two-way binds. Notice the screen isn't updating the name", backgroundColor: .blue, textColor: .white)
      }
      .font(.title)
   }
}

struct StateWithClassData_Previews: PreviewProvider {
   static var previews: some View {
      StateWithClassData()
   }
}
