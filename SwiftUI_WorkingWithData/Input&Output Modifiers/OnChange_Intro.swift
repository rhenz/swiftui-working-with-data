//
//  OnChange_Intro.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/7/23.
//

import SwiftUI

struct OnChange_Intro: View {
    @State private var name = "Rabbit"
    @State private var icon = "hare.fill"
    @State private var color = Color.brown
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "onChange", subtitle: "Introduction", desc: "Allows you to run some code when a value changes.")
            
            Button("Change Animal") {
                if name == "Rabbit" {
                    name = "Turtle"
                } else {
                    name = "Rabbit"
                }
            }
            
            HStack {
                Image(systemName: icon)
                Text(name)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(color))
        }
        .font(.title)
        .onChange(of: name) { newValue in
            if newValue == "Rabbit" {
                icon = "hare.fill"
                color = .brown
            } else {
                icon = "tortoise.fill"
                color = .green
            }
        }
    }
}

struct OnChange_Intro_Previews: PreviewProvider {
    static var previews: some View {
        OnChange_Intro()
    }
}
