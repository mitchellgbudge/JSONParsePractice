//
//  User.swift
//  RandomUsers
//
//  Created by Mitchell Budge on 9/5/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import Foundation

struct UserResult: Decodable {
    let results: [User]
}

struct User: Decodable {
    let name: String
}
