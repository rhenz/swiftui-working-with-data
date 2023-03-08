//
//  OnReceive_Intro.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/8/23.
//

import SwiftUI

fileprivate class OnReceiveOO: ObservableObject {
    @Published var data: [String] = []
    
    func fetchData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            data = ["Datum 1", "Datum 2", "Datum 3"]
        }
    }
}

struct OnReceive_Intro: View {
    @StateObject private var oo = OnReceiveOO()
    @State private var isProcessing = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "onReceive", subtitle: "Introduction", desc: "Use onReceive to run code when a publisher from a observed object changes value.")
            
            ZStack {
                List(oo.data, id: \.self) { datum in
                    Text(datum)
                }
                .opacity(isProcessing ? 0 : 1) // Have to dim the List in order see the Progress View
                
                if isProcessing {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue.opacity(0.1))
                        .clipShape(Circle())
                }
            }
            .font(.title)
        }
        .onAppear {
            isProcessing = true
            oo.fetchData()
        }
        .onReceive(oo.$data) { _ in
            isProcessing = false
        }
    }
}

struct OnReceive_Intro_Previews: PreviewProvider {
    static var previews: some View {
        OnReceive_Intro()
    }
}
