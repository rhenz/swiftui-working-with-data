//
//  StateBindingWithOtherViews.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/11/23.
//

import SwiftUI

struct BindingToStateExamples {
   var color = Color.blue
   var date = Date()
   var slider = 0.75
   var stepper = 25
   var text = "This is a one-way bind"
   var textField = "This is a two-way bind"
   var textEditor = "TextEditor data"
   var toggle = true
}

struct StateBindingWithOtherViews: View {
   @State private var examples = BindingToStateExamples()
   var body: some View {
      VStack(spacing: 20) {
         HeaderView(title: "State", subtitle: "Binding with Other Views", desc: "Here are some examples of binding with other views using @State property")
         
         Form {
            ColorPicker("Color Picker", selection: $examples.color)
            DatePicker("Date", selection: $examples.date)
            Slider(value: $examples.slider)
            Stepper("Value: \(examples.stepper)", value: $examples.stepper)
            Text(examples.text)
            TextField(examples.textField, text: $examples.text)
               .textFieldStyle(.roundedBorder)
            TextEditor(text: $examples.textEditor)
               .border(.blue)
               .frame(height: 50)
            Toggle("Toggle", isOn: $examples.toggle)
         }
      }
      .font(.title)
   }
}

struct StateBindingWithOtherViews_Previews: PreviewProvider {
   static var previews: some View {
      StateBindingWithOtherViews()
   }
}
