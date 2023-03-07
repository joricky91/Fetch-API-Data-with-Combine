//
//  User.swift
//  FetchDataCombine
//
//  Created by Jonathan Ricky Sandjaja on 07/03/23.
//

import Foundation

struct UserResponse: Codable {
    let users: [User]
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let age: Int
}
