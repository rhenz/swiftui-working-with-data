//
//  BindingToState.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/8/23.
//

import SwiftUI

struct BindingToState: View {
   @State private var name = "Lucas"
   
   var body: some View {
      VStack(spacing: 20) {
         HeaderView(title: "State", subtitle: "Struct Variables", desc: "Add @State before the variable to make it mutable.")
         
         Button("Change Name to 'John'") {
            self.name = "John"
         }
         .padding()
         .background(
            Capsule()
               .stroke(.blue, lineWidth: 2)
         )
         
         Spacer()
         
         Text("Name:")
         Text("\(name)")
            .font(.largeTitle)
            .fontWeight(.black)
         
         Spacer()
         
      }
      .font(.title)
   }
}

struct BindingToState_Previews: PreviewProvider {
   static var previews: some View {
      BindingToState()
   }
}
