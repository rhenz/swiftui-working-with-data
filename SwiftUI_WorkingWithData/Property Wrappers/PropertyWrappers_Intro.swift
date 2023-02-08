//
//  PropertyWrappers_Intro.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/8/23.
//

import SwiftUI

@propertyWrapper
struct FourCharacters {
   private var value = ""
   
   var wrappedValue: String {
      get { return value }
      set { value = String(newValue.prefix(4)) }
   }
}

struct PropertyWrappers_Intro: View {
   @State private var newPIN = ""
   
   var body: some View {
      VStack(spacing: 20) {
         HeaderView(title: "Property Wrappers", subtitle: "Introduction", desc: "Property wrappers allow you to add the same logic to many properties.")
         
         
         Text("Old PIN: 1234")
         Text("New PIN: 567890")
         
         Button("Save Pin") {
            @FourCharacters var newPin: String
            newPin = "567890"
            newPIN = newPin
         }
         
         Text("Your New PIN: ") +
         Text(newPIN)
            .fontWeight(.black)
      }
      .font(.title)
   }
}

struct PropertyWrappers_Intro_Previews: PreviewProvider {
   static var previews: some View {
      PropertyWrappers_Intro()
   }
}
