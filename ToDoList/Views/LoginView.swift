//
//  LoginView.swift
//  ToDoList
//
//  Created by Leonardo Luna on 3/1/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()

    var body: some View {
        NavigationView{
            VStack{
                //Header
               HeaderView(title:"To Do List",
                          subtitle:"Get things done" ,
                          angle: 15,
                          background: .cyan
               )
                
                //Login
                
        
                Form{
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    

                        
                    TLButton(
                        title: "Log in",
                        background:.blue
                    ){
                        viewModel.login()
                    }
                        
                    //Atempt log in
                        
                        
        
                }
                .offset(y: -50)
                //Create Account
                VStack{
                    Text("New Around here?")
                    
                    NavigationLink("Create An Account",              destination:RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}

