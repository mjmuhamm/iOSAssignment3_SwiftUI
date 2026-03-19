//
//  SignUpScreen.swift
//  Assignment3_SwiftUI
//
//  Created by Malik Muhammad on 3/19/26.
//

import SwiftUI

struct SignUpScreen: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Hi!")
                .fontWeight(.semibold)
                .font(.system(size: 40))
                .padding(.bottom, 1)
            
            Text("Create a new account")
                .fontWeight(.semibold)
                .font(.system(size: 20))
                .foregroundStyle(.gray)
            
            VStack {
                TextField("username", text: $username)
                    .foregroundStyle(.indigo)
                    
                Divider()
            }.padding(.top, 70)
            
            VStack {
                TextField("Email", text: $email)
                    .foregroundStyle(.indigo)
                    .textCase(.lowercase)
                    
                Divider()
            }.padding(.top, 40)
            
            VStack {
                SecureField("password", text: $password)
                    .foregroundStyle(.indigo)
                Divider()
            }.padding(.top, 40)
            
            VStack(alignment: .center) {
                NavigationLink {
                    LoginScreen()
                } label: {
                    Text("Sign up")
                        .textCase(.uppercase)
                        .foregroundStyle(.white)
                        .frame(width: 150, height: 40)
                        .background(.indigo)
                        .cornerRadius(5)
                        .padding(.top, 50)
                        .font(.system(size: 14))
                    
                    
                }
                
                
                HStack {
                    Rectangle()
                        .frame(height: 1)             // horizontal line
                        .foregroundColor(.gray)
                    
                    Text("or")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 8)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 50)
                .padding(.top)
                
                Text("Social Media Login")
                    .foregroundStyle(.indigo)
                    .fontWeight(.semibold)
                    .padding(.top, 60)
                
                HStack {
                    Button {
                        
                    } label: {
                        Image(.googleLogo)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.black)
                    }
                    Button {
                        
                    } label: {
                        Image(.facebookLogo)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.black)
                            .padding(.horizontal, 10)
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "applelogo")
                            .font(.system(size: 30))
                            .foregroundStyle(.black)
                    }
                }.padding(.top,2)
                
            }
            HStack{
                Text("Already have an account?")
                    .foregroundStyle(.indigo)
                    .font(.system(size: 12))
                
                Button{
                    
                } label: {
                    Text("Sign in")
                        .foregroundStyle(.blue)
                        .fontWeight(.bold)
                        .font(.system(size: 12))
                }
            } .padding(.top, 30)
            
        }
        .padding(.horizontal, 60)
       
        
       
        
    }
    
}

#Preview {
    SignUpScreen()
}
