//
//  AppStorage_Intro.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/23/23.
//

import SwiftUI

struct AppStorage_Intro: View {
    @AppStorage("username") var username = "Lucas"
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HeaderView(title: "", subtitle: "Introduction", desc: "You can use @AppStorage to store small amounts of data for your app.")
                
                Text("AppStorage: username")
                Text("\(username)")
                    .bold()
                
                NavigationLink("Edit", destination: AppStorage_Edit())
            }
            .font(.title)
            .navigationTitle("App Storage")
        }
    }
}

struct AppStorage_Intro_Previews: PreviewProvider {
    static var previews: some View {
        AppStorage_Intro()
    }
}
