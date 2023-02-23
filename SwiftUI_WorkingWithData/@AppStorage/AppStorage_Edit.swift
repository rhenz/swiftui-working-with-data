//
//  AppStorage_Edit.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/23/23.
//

import SwiftUI

struct AppStorage_Edit: View {
    @AppStorage("username") var username: String!
    @State private var newUsername = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "", subtitle: "Update AppStorage ", desc: "To update AppStorage, just assign a new value to the variable")
            
            Text("Enter a new username:")
            TextField("new username", text: $newUsername)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Button("Update") {
                username = newUsername
            }
        }
        .font(.title)
        .navigationTitle("Update App Storage")
    }
}

struct AppStorage_Edit_Previews: PreviewProvider {
    static var previews: some View {
        AppStorage_Edit()
    }
}
