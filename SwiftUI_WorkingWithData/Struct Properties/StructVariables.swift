//
//  StructVariables.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/8/23.
//

import SwiftUI

struct StructVariables: View {
   var name = "Lucas"
   
   var body: some View {
      VStack(spacing: 20) {
         HeaderView(title: "State", subtitle: "Struct Properties", desc: "Variables in structs are immutable. Mutable means a variable can change. Immutable means a variable can NOT change")
         
         Button {
//            self.name = "Lucas" // Error: Cannot assign to property: 'self' is immutable
         } label: {
            Text("Change Name to 'John'")
               .padding()
               .background(Capsule().stroke(Color.blue, lineWidth: 2))
         }
         
         Spacer()
         
         Text("Name")
         Text(name)
            .font(.largeTitle)
            .fontWeight(.black)
         
         Spacer()
         
         DescView("The name variable is read-only and cannot be updated.", backgroundColor: .blue, textColor: .white)
         
         Spacer()
      }
      .font(.title)
   }
}

struct StructVariables_Previews: PreviewProvider {
   static var previews: some View {
      StructVariables()
   }
}
