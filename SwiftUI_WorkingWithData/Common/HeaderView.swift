//
//  HeaderView.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/8/23.
//

import SwiftUI

struct HeaderView: View {
   
   var title: String
   var subtitle: String
   var desc: String
   var backgroundColor = Color.blue
   
   var body: some View {
      VStack(spacing: 15) {
         Text(title)
         Text(subtitle)
            .foregroundColor(.gray)
         Text(desc)
            .padding()
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .foregroundColor(.white)
            
      }
      .font(.title)
   }
}

struct HeaderView_Previews: PreviewProvider {
   static var previews: some View {
      HeaderView(title: "Title", subtitle: "Description", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque non tristique sapien. Aenean nulla eros, laoreet nec dictum non, cursus sed magna. Duis tincidunt justo tellus. In pulvinar pretium ante, eu euismod mi mattis ut.")
   }
}
