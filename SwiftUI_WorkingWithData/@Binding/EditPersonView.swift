//
//  EditPersonView.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/14/23.
//

import SwiftUI

struct EditPersonView: View {
   @Binding var person: Person
   
   var body: some View {
      VStack(spacing: 20) {
         Group {
            Text("Edit and go back when done:")
            
            TextField("first name", text: $person.firstName)
               .textFieldStyle(.roundedBorder)
            TextField("last name", text: $person.lastName)
               .textFieldStyle(.roundedBorder)
         }
      }
   }
}

struct EditPersonView_Previews: PreviewProvider {
   static var previews: some View {
      EditPersonView(person: .constant(Person(firstName: "John", lastName: "Lucas")))
   }
}
