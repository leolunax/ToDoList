//
//  User.swift
//  ToDoList
//
//  Created by Leonardo Luna on 3/1/24.
//

import Foundation


struct User: Codable {
    let id: String
    let name : String
    let email: String
    let joined: TimeInterval
    
    
    func asDictionary() -> [String: Any] {
           return [
               "id": id,
               "name": name,
               "email": email,
               "joined": joined
           ]
       }
    
    
    
}


    
