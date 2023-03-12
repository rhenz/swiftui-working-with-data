//
//  BooksOO.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/12/23.
//

import Foundation

class BooksOO: ObservableObject {
    @Published var data: [BookDO] = []
    
    func fetch() {
        data = [
            BookDO(name: "SwiftUI Views Mastery"),
            BookDO(name: "SwiftUI Animations Mastery"),
            BookDO(name: "Combine Mastery in SwiftUI"),
            BookDO(name: "Working with Data in SwiftUI")
        ]
    }
}
