//
//  BindingWithList.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/14/23.
//

import SwiftUI

struct Person: Identifiable {
   var id = UUID()
   var firstName = ""
   var lastName = ""
}
struct BindingWithList: View {
   @State private var people = [
      Person(firstName: "John", lastName: "Lucas"),
      Person(firstName: "Chabby", lastName: "Salv"),
      Person(firstName: "Nimbus", lastName: "Salv"),
      Person(firstName: "Oli", lastName: "Salv")
   ]
   
   var body: some View {
      NavigationStack {
         HeaderView(title: "", subtitle: "Binding With List", desc: "You want to bind the array and an index for a two-way bind.")
         
         List(people) { person in
            NavigationLink(destination: EditPersonView(person: $people[people.firstIndex(where: { $0.id == person.id})!])) {
               Text("\(person.firstName + " " + person.lastName)")
            }
         }
         .navigationTitle("Editing Array Items")
      }
      .font(.title)
   }
}

struct BindingWithList_Previews: PreviewProvider {
   static var previews: some View {
      BindingWithList()
   }
}
