//
//  DescView.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/8/23.
//

import SwiftUI

struct DescView: View {
   var desc: String = ""
   var backgroundColor: Color = .blue
   var textColor: Color = .white
   
   init(_ desc: String, backgroundColor: Color, textColor: Color) {
      self.desc = desc
      self.backgroundColor = backgroundColor
      self.textColor = textColor
   }
   
   var body: some View {
      Text(desc)
         .font(.title)
         .padding()
         .frame(maxWidth: .infinity)
         .background(backgroundColor)
         .foregroundColor(textColor)
   }
}

struct DescView_Previews: PreviewProvider {
   static var previews: some View {
      DescView("The name variable is read-only and cannot be updated.", backgroundColor: .blue, textColor: .white)
   }
}
