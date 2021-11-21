//
//  User.swift
//  CreationLibrary
//
//  Created by Artur Anissimov on 17.11.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
}

extension User: Equatable {
    
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.login == rhs.login &&
        lhs.password == rhs.password
    }
    
    static func registrationNewUser(_ newUser: User) {
        var usersData = UserDataManager().users
        usersData.append(User(login: newUser.login , password: newUser.password))
    }
    
    // some comment
}
