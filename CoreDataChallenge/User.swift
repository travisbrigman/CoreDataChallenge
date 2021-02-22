//
//  User.swift
//  CoreDataChallenge
//
//  Created by Travis Brigman on 2/21/21.
//  Copyright © 2021 Travis Brigman. All rights reserved.
//

import Foundation

struct User: Codable, Identifiable {
    var id: String
    var isActive: Bool
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: Date
    var tags: [String]
    var friends: [Friend]
    
    #if DEBUG
    // show in preview set up only
    static let example = User(
        id: "0",
        isActive: true,
        name: "Test Name",
        age: 99,
        company: "Test.inc",
        email: "test@test.com",
        address: "1 Test drive", about: "Occaecat consequat elit aliquip magna laboris dolore laboris sunt officia adipisicing reprehenderit sunt. Do in proident consectetur labore. Laboris pariatur quis incididunt nostrud labore ad cillum veniam ipsum ullamco. Dolore laborum commodo veniam nisi. Eu ullamco cillum ex nostrud fugiat eu consequat enim cupidatat. Non incididunt fugiat cupidatat reprehenderit nostrud eiusmod eu sit minim do amet qui cupidatat. Elit aliquip nisi ea veniam proident dolore exercitation irure est deserunt.\r\n", registered: Date(), tags: ["cillum"], friends: [])
    #endif
}


