//
//  OnReceive_PublisherOutput.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/9/23.
//

import SwiftUI

fileprivate class OnReceiveOO: ObservableObject {
    @Published var name = "Lucas"
}

struct OnReceive_PublisherOutput: View {
    @StateObject private var oo = OnReceiveOO()
    @State private var originalValue = "Lucas"
    @State private var nameText = ""
    @State private var disabled = true

    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "onReceive", subtitle: "Publisher Output", desc: "Inspect the data sent by the publisher with the onReceive's closure parameter.")
            
            TextField("name", text: $oo.name)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("Save") {
                
            }
            .disabled(disabled)
            .onReceive(oo.$name) { newValue in
                disabled = (newValue == originalValue)
            }
        }
        .font(.title)
    }
}

struct OnReceive_PublisherOutput_Previews: PreviewProvider {
    static var previews: some View {
        OnReceive_PublisherOutput()
    }
}
