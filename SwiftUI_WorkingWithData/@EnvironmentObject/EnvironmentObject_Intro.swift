//
//  EnvironmentObject_Intro.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/5/23.
//

import SwiftUI

class NameInfo: ObservableObject {
    @Published var name: String = ""
}

struct EnvironmentObject_Intro: View {
    var body: some View {
        TabView {
            TabViewOne()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("One")
                }
            
            TabViewTwo()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Two")
                }
        }
        .environmentObject(NameInfo())
        .font(.title)
    }
}

struct EnvironmentObject_Intro_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObject_Intro()
    }
}


struct TabViewOne: View {
    @EnvironmentObject var nameInfo: NameInfo
    
    var body: some View {
        VStack {
            Text("Tab 1")
                .font(.largeTitle)
            HeaderView(title: "@EnvironmentObject", subtitle: "Introduction", desc: "Use the environmentObject modifier to add ObservableObjects to parent views.")
                       
            Spacer()
            
            TextField("Add a name", text: $nameInfo.name)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            Spacer()
        }
    }
}

struct TabViewTwo: View {
    @EnvironmentObject var nameInfo: NameInfo
    
    var body: some View {
        VStack {
            Text("Tab 2")
                .font(.largeTitle)
            HeaderView(title: "@EnvironmentObject", subtitle: "Introduction", desc: "The view can access the environment object by using the @EnvironmentObject property wrapper.")
            
            Spacer()
            
            
            Text("The name you entered on Tab 1 was:")
                .padding()
            Text(nameInfo.name)
                .fontWeight(.black)
            Spacer()
        }
    }
}
