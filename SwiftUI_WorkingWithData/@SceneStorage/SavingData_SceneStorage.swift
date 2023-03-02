//
//  SavingData_SceneStorage.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/2/23.
//

import SwiftUI

struct SavingData_SceneStorage: View {
    @State private var textInput = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HeaderView(title: "", subtitle: "Introduction", desc: "Use @SceneStorage to save data for just one screen that will persist for the lifetime of the app.")
                
                NavigationLink("Enter New Data", destination: SavingData_DataEntry())
            }
            .font(.title)
            .navigationTitle("@SceneStorage")
        }
    }
}

struct SavingData_SceneStorage_Previews: PreviewProvider {
    static var previews: some View {
        SavingData_SceneStorage()
    }
}
