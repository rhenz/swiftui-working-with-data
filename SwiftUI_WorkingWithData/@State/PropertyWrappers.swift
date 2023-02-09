//
//  PropertyWrappers.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/8/23.
//

import SwiftUI

struct PropertyWrappers: View {
   @State private var name = ""
   private let names = ["John", "Lucas", "Lawrence", "Angela", "Chabby", "Oli", "Nimbus"]
   
   var body: some View {
      VStack(spacing: 20) {
         HeaderView(title: "State", subtitle: "Property Wrappers", desc: "Property Wrappers can run some logic every time a variable is changed. We can't mutate struct variable values. But @State runs logic that allows variable changes")
         
         Spacer()
         
         Button("Random Name") {
            name = names.randomElement()!
         }
         
         Text("Name: ") +
         Text(name)
         
         Spacer()
         
         DescView("Modifying a @State variable value does at least two things. 1) Stores our value outside of the struct. 2) Recreates our view without losing the state of variable value", backgroundColor: .blue, textColor: .white)
         
         Spacer()
      }
      .font(.title)
   }
}

struct PropertyWrappers_Previews: PreviewProvider {
   static var previews: some View {
      PropertyWrappers()
   }
}
