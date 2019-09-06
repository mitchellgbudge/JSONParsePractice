//
//  APIController.swift
//  RandomUsers
//
//  Created by Mitchell Budge on 9/5/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import Foundation

class APIController {
    
    var users: [User] = []
    
    let baseURL = URL(string: "https://randomuser.me/api/?format=json&results=20")!
    typealias CompletionHandler = (Error?) -> Void
    
    func getUsers(completion: @escaping CompletionHandler = { _ in }) {
        URLSession.shared.dataTask(with: baseURL) { (data, _, error) in
            if let error = error {
                NSLog("Error getting users: \(error)")
            }
            guard let data = data else {
                NSLog("No data returned from data task.")
                completion(nil)
                return
            }
            do {
                let newUsers = try JSONDecoder().decode(UserResult.self, from: data)
                print(newUsers)
                self.users = newUsers.results
            } catch {
                NSLog("Error decoding users: \(error)")
                completion(error)
            }
            completion(nil)
        }.resume()
    }
    
}
