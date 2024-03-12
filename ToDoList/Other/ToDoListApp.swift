//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Leonardo Luna on 3/1/24.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
