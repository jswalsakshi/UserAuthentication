//
//  LoginView.swift
//  UserAuthentication
//
//  Created by sakshi.j on 26/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var userName = ""
    @State private var passWord = ""
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient:
                            Gradient(colors: [.yellow, .white]),
                           startPoint: .bottomLeading,
                           endPoint: .topLeading)
            .ignoresSafeArea()
            
            VStack(spacing: 10) {
                Image(systemName: "homekit")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .foregroundColor(.yellow)
                TextField("Username", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                SecureField("Password", text: $passWord)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Button("Login") {
                   authenticateUser(userName: userName, password: passWord)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color(.yellow))
                .cornerRadius(8)
            }
            .padding()
        }
    }
    
    func authenticateUser(userName: String, password: String) {
        if userName == "Sakshi" && password == "India" {
            print("Login Successfull")
        } else {
            print("invalid credential")
        }
    }
}

#Preview {
    LoginView()
}
