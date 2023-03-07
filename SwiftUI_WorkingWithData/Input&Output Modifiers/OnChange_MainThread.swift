//
//  OnChange_MainThread.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/7/23.
//

import SwiftUI

struct OnChange_MainThread: View {
    @State private var input = ""
    @State private var validationColor = Color.red
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "onChange", subtitle: "On Main Thread", desc: "It is important to note that the onChange code runs on the main thread. So use it to affect the UI but do not run long processes that could lock up the UI")
            
            TextField("PIN (4 Characters)", text: $input)
                .textFieldStyle(.roundedBorder)
                .overlay(
                    validationColor,
                    in: RoundedRectangle(
                        cornerRadius: 8
                    ).stroke(lineWidth: 2))
                .padding()
        }
        .font(.title)
        .onChange(of: input) { newValue in
            //SendToServerToValidate <- Don't do this as this runs on main thead
            
            validationColor = .red
            
            if newValue.count == 4 {
                validationColor = .green
            }
        }
    }
}

struct OnChange_MainThread_Previews: PreviewProvider {
    static var previews: some View {
        OnChange_MainThread()
    }
}
