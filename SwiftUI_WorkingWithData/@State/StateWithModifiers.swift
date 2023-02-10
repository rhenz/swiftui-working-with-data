//
//  StateWithModifiers.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/10/23.
//

import SwiftUI

struct StateWithModifiers: View {
   @State private var isOn = true
   
   var body: some View {
      VStack(spacing: 20) {
         HeaderView(title: "State", subtitle: "With Modifiers", desc: "You can use state to control how your views look and change")
         
         Spacer()
         
         Button {
            isOn.toggle()
         } label: {
            ZStack(alignment: isOn ? .trailing : .leading) {
               HStack {
                  Text("ON").opacity(isOn ? 1 : 0)
                  Text("OFF").opacity(isOn ? 0 : 1)
               }
               .foregroundColor(.white)
               RoundedRectangle(cornerRadius: 6)
                  .fill(.white)
                  .frame(width: 45, height: 50)
            }
         }
         .padding(8)
         .background(
            RoundedRectangle(cornerRadius: 8)
               .fill(isOn ? .green : .red)
         )
         
         Spacer()
         
         DescView("The button's modifier change because the value of a state variable is changing. The changes are all data driven", backgroundColor: .blue, textColor: .white)

      }
      .font(.title)
      .animation(.default, value: isOn)
   }
}

struct StateWithModifiers_Previews: PreviewProvider {
   static var previews: some View {
      StateWithModifiers()
   }
}
