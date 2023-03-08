//
//  OnChange_PreviousValue.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/8/23.
//

import SwiftUI

struct OnChange_PreviousValue: View {
    @State private var rotation = Angle.degrees(0)
    @State private var size: CGFloat = 50
    @State private var color = Color.green
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "onChange", subtitle: "Previous Value", desc: "The onChange modifier can also view the previous value of the property that is being changed.")
            
            HStack {
                Spacer()
                Button("Reset") {
                    rotation = Angle.degrees(0)
                }
                Spacer()
                Button("Rotate") {
                    rotation = Angle.degrees(90)
                }
                Spacer()
            }
            
            Spacer()
            Image(systemName: "l.joystick.tilt.up.fill")
                .rotationEffect(rotation)
                .font(.system(size: size))
                .foregroundColor(color)
                .animation(.default, value: rotation)
            Spacer()
        }
        .font(.title)
        .onChange(of: rotation) { [rotation] newValue in
            if rotation == newValue { return }
            if newValue == Angle.degrees(0) {
                size = 50
                color = .green
            } else {
                size = 100
                color = .red
            }
        }
    }
}

struct OnChange_PreviousValue_Previews: PreviewProvider {
    static var previews: some View {
        OnChange_PreviousValue()
    }
}
