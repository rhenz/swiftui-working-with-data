//
//  AppStorage_Persistence.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/24/23.
//

import SwiftUI

struct AppStorage_Persistence: View {
    @AppStorage("darkBackground") var darkBackground = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "@AppStorage", subtitle: "Persistence", desc: "Data you store using @AppStorage will persist even after the app closes.")
            
            Toggle(isOn: $darkBackground) {
                Text("Use Dark Background?")
            }
            .padding()
        }
        .font(.title)
        .preferredColorScheme(darkBackground ? .dark : .light)
    }
}

struct AppStorage_Persistence_Previews: PreviewProvider {
    static var previews: some View {
        AppStorage_Persistence()
    }
}
