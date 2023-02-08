//
//  HeaderView.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/8/23.
//

import SwiftUI

struct HeaderView: View {
   
   var title: String
   var desc: String
   var content: String
   var backgroundColor = Color.blue
   
   var body: some View {
      VStack(spacing: 15) {
         Text(title)
         Text(desc)
            .foregroundColor(.gray)
         Text(content)
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
      HeaderView(title: "Title", desc: "Description", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque non tristique sapien. Aenean nulla eros, laoreet nec dictum non, cursus sed magna. Duis tincidunt justo tellus. In pulvinar pretium ante, eu euismod mi mattis ut.")
   }
}
