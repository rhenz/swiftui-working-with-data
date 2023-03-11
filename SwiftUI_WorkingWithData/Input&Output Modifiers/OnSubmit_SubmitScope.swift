//
//  OnSubmit_SubmitScope.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/11/23.
//

import SwiftUI

struct OnSubmit_SubmitScope: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var continueOnboarding = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HeaderView(title: "", subtitle: "Submit Scope", desc: "Use submitScope modifier to prevent onSubmit and dismiss the keyboard")
                
                GroupBox("About You") {
                    TextField("first name", text: $firstName)
                        .textFieldStyle(.roundedBorder)
                        // Use submitScope modifier to prevent the onSubmit event that is on the parent view
                        .submitScope()
                    TextField("last name", text: $lastName)
                        .textFieldStyle(.roundedBorder)
                        .submitLabel(.continue)
                }
                .onSubmit(of: .text) {
                    continueOnboarding = true
                }
                
                Spacer()
            }
            .navigationTitle("onSubmit")
            .font(.title)
            .navigationDestination(isPresented: $continueOnboarding) {
                Text("Next Step")
            }
        }
    }
}

struct OnSubmit_SubmitScope_Previews: PreviewProvider {
    static var previews: some View {
        OnSubmit_SubmitScope()
    }
}
