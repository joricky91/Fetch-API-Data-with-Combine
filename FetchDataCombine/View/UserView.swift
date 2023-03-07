//
//  UserView.swift
//  FetchDataCombine
//
//  Created by Jonathan Ricky Sandjaja on 07/03/23.
//

import SwiftUI

struct UserView: View {
    @StateObject var viewModel = UserViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.users.isEmpty {
                ProgressView()
            } else {
                List {
                    ForEach(viewModel.users, id: \.id) { user in
                        VStack(alignment: .leading) {
                            Text("\(user.firstName) \(user.lastName)")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Text("\(user.age) years old")
                        }
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Users")
            }
        }
        .onAppear(perform: viewModel.getUsers)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
