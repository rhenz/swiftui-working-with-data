//
//  State_Previewing.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/13/23.
//

import SwiftUI

struct State_Previewing: View {
   
   // The @State properties would have to be public though it is not a good practice.
   @State var featureOne = true
   
   var body: some View {
      VStack(spacing: 20) {
         HeaderView(title: "State", subtitle: "Previewing", desc: "You can create static @State variables in your Preview to test with different values.")
         
         Toggle("Feature One", isOn: $featureOne)
            .padding(.horizontal)
      }
      .font(.title)
   }
}

struct State_Previewing_Previews: PreviewProvider {
   static var previews: some View {
      Group {
         State_Previewing(featureOne: false)
            .previewLayout(.sizeThatFits)
         State_Previewing(featureOne: true)
            .previewLayout(.sizeThatFits)
      }
   }
}
