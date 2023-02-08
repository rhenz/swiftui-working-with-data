//
//  PassInValue.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/8/23.
//

import SwiftUI

struct PassInValue: View {
   var name = "Lucas"
   
   var body: some View {
      VStack(spacing: 20) {
         HeaderView(title: "State", subtitle: "Struct Variables", desc: "You can pass read-only values into a view.")
         
         Text("Name")
         Text(name)
            .font(.largeTitle)
            .fontWeight(.black)
         
         Spacer()
         
         DescView("The default name is 'Lucas' but 'John' is passed in to replace it. It cannot be further updated once initially set.", backgroundColor: .blue, textColor: .white)
      }
      .font(.title)
   }
}

struct PassInValue_Previews: PreviewProvider {
   static var previews: some View {
      PassInValue(name: "John")
   }
}
