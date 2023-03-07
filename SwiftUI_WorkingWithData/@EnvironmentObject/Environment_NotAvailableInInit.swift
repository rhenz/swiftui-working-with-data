//
//  Environment_NotAvailableInInit.swift
//  SwiftUI_WorkingWithData
//
//  Created by John Salvador on 3/6/23.
//

import SwiftUI

class UserViewModel: ObservableObject {
    @Published var username = "johnlucas"
}

struct Environment_NotAvailableInInit: View {
    @EnvironmentObject var viewModel: UserViewModel
    @State private var highlight = false
    
    init() {
//        if viewModel.username == "johnlucas" {
//            highlight = true
//        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "@EnvironmentObject", subtitle: "Not Available in init()", desc: "You can't acces the environment object from your views init. If you find yourself trying to do this, there's probably a better solution for your problem")
            
            Text(viewModel.username)
                .padding()
                .backgroundStyle(highlight ? Color.yellow : Color.clear)
        }
    }
}

struct Environment_NotAvailableInInit_Previews: PreviewProvider {
    static var previews: some View {
        Environment_NotAvailableInInit()
            .environmentObject(UserViewModel())
    }
}
