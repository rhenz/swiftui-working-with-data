//
//  AppStorage_WhatCanBeStored.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/1/23.
//

import SwiftUI

struct AppStorage_WhatCanBeStored: View {
    @AppStorage("myBool") var myBool = true
    @AppStorage("myInt") var myInt = 21
    @AppStorage("myDouble") var myDouble = 1.99
    @AppStorage("myString") var myString = "Hello"
    @AppStorage("myUrl") var myUrl = URL(string: "www.google.com")!
    @AppStorage("myData") var myData = Data("Hello".utf8)
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "AppStorage", subtitle: "What Can Be Stored?", desc: "Currently, you can store: Bool, Int, Double, String, URL, Data")
            
            Text("Stored in AppStorage")
                .bold()
            Text("\(myBool.description)")
            Text("\(myInt)")
            Text("\(myDouble)")
            Text("\(myString)")
            Text("\(myUrl)")
            Text("\(String(decoding: myData, as: UTF8.self))")
        }
        .font(.title)
    }
}

struct AppStorage_WhatCanBeStored_Previews: PreviewProvider {
    static var previews: some View {
        AppStorage_WhatCanBeStored()
    }
}
