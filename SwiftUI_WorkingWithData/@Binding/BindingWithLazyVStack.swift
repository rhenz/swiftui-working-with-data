//
//  BindingWithLazyVStack.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 2/16/23.
//

import SwiftUI

struct BindingWithLazyVStack: View {
    @State private var people = [
        Person(firstName: "John", lastName: "Lucas"),
        Person(firstName: "Chabby", lastName: "Salv"),
        Person(firstName: "Nimbus", lastName: "Salv"),
        Person(firstName: "Oli", lastName: "Salv")
    ]
    
    @State private var selectedPersonId: UUID?
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    LazyVStack {
                        HeaderView(title: "", subtitle: "Binding with LazyVStack", desc: "You want to bind the array and an index for a two-way bind.")
                        
                        ForEach(people) { person in
                            HStack {
                                Text("\(person.firstName) \(person.lastName)")
                                Spacer()
                                Image(systemName: "pencil.circle")
                                    .foregroundColor(.blue)
                            }
                            .padding()
                            .onTapGesture {
                                selectedPersonId = person.id
                            }
                        }
                    }
                }
                
                if let selectedPersonId {
                    EditPersonPopupView(person: $people[people.firstIndex { $0.id == selectedPersonId}!], selectedPersonId: $selectedPersonId)
                }
            }
            .font(.title)
        }
    }
}

struct BindingWithLazyVStack_Previews: PreviewProvider {
    static var previews: some View {
        BindingWithLazyVStack()
    }
}


struct EditPersonPopupView: View {
    @Binding var person: Person
    @Binding var selectedPersonId: UUID?
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Edit Name")
                .font(.largeTitle)
            
            TextField("first name", text: $person.firstName)
                .textFieldStyle(.roundedBorder)
            TextField("last name", text: $person.lastName)
                .textFieldStyle(.roundedBorder)
            
            Button("Close") {
                selectedPersonId = nil
            }
        }
        .font(.title)
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 20)
                .fill(.background)
                .shadow(radius: 8)
        }
        .padding(24)
        
    }
}

struct EditPersonPopupView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleUUID = UUID()
        
        EditPersonPopupView(
            person: .constant(Person(id: sampleUUID, firstName: "Lucas", lastName: "Salv")),
            selectedPersonId: .constant(sampleUUID)
        )
        .previewDisplayName("Edit Person Popup View")
    }
}
