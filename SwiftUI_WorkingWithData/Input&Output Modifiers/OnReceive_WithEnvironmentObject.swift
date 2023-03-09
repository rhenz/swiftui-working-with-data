//
//  OnReceive_WithEnvironmentObject.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/9/23.
//

import SwiftUI

struct OnReceive_WithEnvironmentObject: View {
    @EnvironmentObject var user: UserModel
    @State private var reconnect = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "onReceive", subtitle: "With Environment Object", desc: "Use onReceive to respond to global environment object changes too.")
            
            Button("Disconnect") {
                user.showAsOnline = false
            }
            
            Spacer()
            
            if reconnect {
                HStack {
                    Text("Disconnected")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Button("Reconnect") {
                        user.showAsOnline = true
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
                .background(.red)
                .transition(.move(edge: .bottom))
            }
        }
        .font(.title)
        .onReceive(user.$showAsOnline) { online in
            if online {
                withAnimation {
                    reconnect = false
                }
            } else {
                withAnimation {
                    reconnect = true
                }
            }
        }
    }
}

struct OnReceive_WithEnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        OnReceive_WithEnvironmentObject()
            .environmentObject(UserModel())
    }
}
