//
//  EnvironmentObject_OnParentView.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/6/23.
//

import SwiftUI

class JustForTabTwo: ObservableObject {
    @Published var name: String = "This string is from the @EnvironmentObject."
}

struct EnvironmentObject_OnParentView: View {
    var body: some View {
        TabView {
            HeaderView(title: "@EnvironmentObject", subtitle: "On Parent Views", desc: "There is no environment object set on this view's parent view. So has no access to any environment objects.")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("One")
                }
            
            TabTwoView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Two")
                }
                .environmentObject(JustForTabTwo())
        }
    }
}

struct EnvironmentObject_OnParentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObject_OnParentView()
    }
}


struct TabTwoView: View {
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                Text("Tab 2")
                
                HeaderView(title: "", subtitle: "On Parent View", desc: "Since the environment object was only added to this view, only child views from this parent can access it")
                
                Text("Note: This view is not using the environment object but it could if it want to.")
                
                NavigationLink(destination: TabTwoChildView()) {
                    Text("Navigate to Child View")
                }
                
                Spacer()
            }
            .navigationTitle("@EnvironmentObject")
        }
    }
}

struct TabTwoChildView: View {
    @EnvironmentObject var tabTwo: JustForTabTwo
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(title: "", subtitle: "On Parent View", desc: "This view IS accessing the environment object set on the parent tab view.")
            
            Label {
                Text(tabTwo.name)
            } icon: {
                Image(systemName: "exclamationmark.triangle.fill")
                    .foregroundColor(.orange)
            }
            
            Spacer()
            
            TextEditor(text: $tabTwo.name)
                .border(Color.purple, width: 2)
                .frame(height: 200)
        }
        .navigationTitle("Tab 2 Child View")
    }
}
