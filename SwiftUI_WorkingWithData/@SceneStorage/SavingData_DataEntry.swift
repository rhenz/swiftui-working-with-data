//
//  SavingData_DataEntry.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/2/23.
//

import SwiftUI

struct SavingData_DataEntry: View {
    @SceneStorage("textInput") var textInput = ""
    @State private var stateText = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            DescView("Enter data in here and then navigate away. It will be saved to the variable using @SceneStorage.", backgroundColor: .pink, textColor: .white)
                
            
            TextEditor(text: $textInput)
                .border(Color.pink)
                .padding()
            
            DescView("This data will not be saved because it's bound to @State variable.", backgroundColor: .pink, textColor: .white)
            TextEditor(text: $stateText)
                .border(Color.pink)
                .padding()
            
            Spacer()
        }
        .font(.title)
    }
}

struct SavingData_DataEntry_Previews: PreviewProvider {
    static var previews: some View {
        SavingData_DataEntry()
    }
}
