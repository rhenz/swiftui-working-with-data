//
//  StateObject_BindingWithOtherViews.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/21/23.
//

import SwiftUI

class BindingExamples: ObservableObject {
    @Published var color = Color.green
    @Published var date = Date()
    @Published var slider = 0.75
    @Published var stepper = 25
    @Published var text = "This is a one-way bind"
    @Published var textField = "This is a two-way bind"
    @Published var textEditor = "TextEditor data"
    @Published var toggle = true
}

struct StateObject_BindingWithOtherViews: View {
    @StateObject private var examples = BindingExamples()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "StateObject", subtitle: "Binding with Other Views", desc: "Here are some examples of binding with other views using a @StateObject property.")
            
            Form {
                ColorPicker("Color Picker ", selection: $examples.color)
                DatePicker("Date", selection: $examples.date)
                Slider(value: $examples.slider) {
                    Text("Slider")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("1")
                }
                Stepper("Value: \(examples.stepper)", value: $examples.stepper, in: 1...100)
                Text(examples.text)
                TextField("Placeholder", text: $examples.textField)
                    .textFieldStyle(.roundedBorder)
                TextEditor(text: $examples.textEditor)
                    .border(.green)
                    .frame(height: 50)
                Toggle("Toggle", isOn: $examples.toggle)
            }
        }
        .font(.title)
    }
}

struct StateObject_BindingWithOtherViews_Previews: PreviewProvider {
    static var previews: some View {
        StateObject_BindingWithOtherViews()
    }
}
