//
//  RegisterView.swift
//  ToDoList
//
//  Created by Leonardo Luna on 3/1/24.
//

import SwiftUI


struct RegisterView: View {
@StateObject var viewModel = RegisterViewViewModel()
    
    
    var body: some View {
        VStack{
            //Header
            HeaderView(title:"Register",
                       subtitle:"Start organizing ToDoS" ,
                       angle: -15,
                       background: .orange)
            
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account",
                         background:.green
                ){
                    viewModel.register()
                    
                }
    
            }
            .offset(y:-50)
            
            Spacer()
            
        }
    }
}
    
    struct RegisterView_Previews: PreviewProvider{
        static var previews: some View{
            RegisterView()
        }
    }

