//
//  BindingWithList_iOS15.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/14/23.
//

import SwiftUI

struct BindingWithList_iOS15: View {
   @State private var people = [
      Person(firstName: "John", lastName: "Lucas"),
      Person(firstName: "Chabby", lastName: "Salv"),
      Person(firstName: "Nimbus", lastName: "Salv"),
      Person(firstName: "Oli", lastName: "Salv")
   ]
   
   var body: some View {
      NavigationStack {
         VStack {
            HeaderView(title: "", subtitle: "Binding with List", desc: "Starting in iOS 15, this is greatly simplified by using the dollar sign on the array in the List init and the parameter passed into the list closure to each row.")
            
            List($people) { $person in
               NavigationLink(destination: EditPersonView(person: $person)) {
                  Text("\(person.firstName) \(person.lastName)")
                     .font(.title)
               }
            }
            .navigationTitle("Editing Array Items")
         }
         .font(.title)
      }
   }
}

struct BindingWithList_iOS15_Previews: PreviewProvider {
   static var previews: some View {
      BindingWithList_iOS15()
   }
}
