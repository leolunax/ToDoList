//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Leonardo Luna on 3/4/24.
//
import FirebaseFirestore
import Foundation

//This is the ViewModel for the list of items
//PrimaryTab

class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}

