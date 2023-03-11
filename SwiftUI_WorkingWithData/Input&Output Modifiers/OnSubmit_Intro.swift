//
//  OnSubmit_Intro.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/11/23.
//

import SwiftUI

struct OnSubmit_Intro: View {
    @State private var name = ""
    @State private var continueOnboarding = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HeaderView(title: "", subtitle: "Introduction", desc: "Use onSubmit to run code when a user submits data in some way. Submit can be different for different controls and views.")
                TextField("name", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .submitLabel(.continue)
                    .onSubmit {
                        continueOnboarding = true
                    }
                Spacer()
            }
            .font(.title)
            .navigationTitle("onSubmit")
            .navigationDestination(isPresented: $continueOnboarding) {
                Text("Input: \(name)")
            }
        }
    }
}

struct OnSubmit_Intro_Previews: PreviewProvider {
    static var previews: some View {
        OnSubmit_Intro()
    }
}
