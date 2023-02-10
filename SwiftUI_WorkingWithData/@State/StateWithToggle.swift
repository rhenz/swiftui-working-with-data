//
//  StateWithToggle.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/10/23.
//

import SwiftUI

struct StateWithToggle: View {
   @State private var darkerBackground = false
   
   var body: some View {
      ZStack {
         Color(darkerBackground ? .gray : .white)
            .ignoresSafeArea()
         
         VStack(spacing: 20) {
            HeaderView(title: "State", subtitle: "Two-way Binding", desc: "Many controls require a two-way binding to work.")
            
            Spacer()
            Toggle(isOn: $darkerBackground) {
               Text("Darker Background: ") +
               Text(darkerBackground ? "ON" : "OFF")
            }
            .padding(.horizontal)
            Spacer()
            
            DescView("The entire view is invalidated and redrawn when a staet variable changes", backgroundColor: .blue, textColor: .white)
            
         }
         .font(.title)
      }
   }
}

struct StateWithToggle_Previews: PreviewProvider {
   static var previews: some View {
      StateWithToggle()
   }
}
