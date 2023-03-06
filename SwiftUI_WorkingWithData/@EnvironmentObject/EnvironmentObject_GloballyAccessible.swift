//
//  EnvironmentObject_GloballyAccessible.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/6/23.
//

import SwiftUI

class UserModel: ObservableObject {
    @Published var username = "Lucas"
    @Published var showAsOnline = true
}

struct EnvironmentObject_GloballyAccessible: View {
    
    @EnvironmentObject var user: UserModel
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "@EnvironmentObject", subtitle: "Globally Accessible", desc: "To make an ObservableObject globally acessible to your app, add it to the root view in your App object.")
            
            Form {
                Section("Settings") {
                    HStack {
                        Text("Username:")
                        TextField("username", text: $user.username)
                            .textFieldStyle(.roundedBorder)
                    }
                    Toggle("Show as online", isOn: $user.showAsOnline)
                }
            }
        }
        .font(.title)
    }
}

struct EnvironmentObject_GloballyAccessible_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObject_GloballyAccessible()
            .environmentObject(UserModel())
    }
}
