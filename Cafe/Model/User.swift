//
//  User.swift
//  Cafe
//
//  Created by Joseph Cha on 2022/02/08.
//

import Foundation

struct User {
    let username: String
    let account: String
    
    static let shared = User(username: "Joseph Cha", account: "fast.campus")
}
