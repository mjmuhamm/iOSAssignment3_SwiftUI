//
//  LoginScreen.swift
//  Assignment3_SwiftUI
//
//  Created by Malik Muhammad on 3/19/26.
//

import SwiftUI

struct LoginScreen: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Welcome!")
                .fontWeight(.semibold)
                .font(.system(size: 40))
                .padding(.bottom, 1)
            
            Text("Sign in to continue")
                .fontWeight(.semibold)
                .font(.system(size: 20))
                .foregroundStyle(.gray)
            
            VStack {
                TextField("Email", text: $email)
                    .foregroundStyle(.indigo)
                    .textCase(.lowercase)
                    
                Divider()
            }.padding(.top, 70)
            
            VStack {
                SecureField("password", text: $password)
                    .foregroundStyle(.indigo)
                Divider()
            }.padding(.top, 40)
            
            VStack(alignment: .center) {
                NavigationLink {
                    
                } label: {
                    Text("Login")
                        .textCase(.uppercase)
                        .foregroundStyle(.white)
                        .frame(width: 150, height: 40)
                        .background(.indigo)
                        .cornerRadius(5)
                        .padding(.top, 50)
                        .font(.system(size: 14))
                    
                    
                }
                
                NavigationLink {
                } label: {
                    Text("Forgot Password?")
                        .foregroundStyle(.indigo)
                        .frame(width: 150, height: 40)
                        .fontWeight(.semibold)
                        .cornerRadius(5)
                        .font(.system(size: 14))
                    
                }
                
                HStack {
                    Rectangle()
                        .frame(height: 1)         
                        .foregroundColor(.gray)
                    
                    Text("or")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 8)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                }
                .padding(.top)
                
                Text("Social Media Login")
                    .foregroundStyle(.indigo)
                    .fontWeight(.regular)
                    .padding(.top, 60)
                
                HStack {
                    Button {
                        
                    } label: {
                        Image(.googleLogo)
                            .resizable()
                            .frame(width: 37, height: 37)
                            .scaledToFit()
                            .foregroundStyle(.black)
                    }.padding(.top, 5)
                    Button {
                        
                    } label: {
                        Image(.facebookLogo)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.black)
                            .scaledToFit()
                            .padding(.horizontal, 5)
                    }.padding(.top, 5)
                    Button {
                        
                    } label: {
                        Image(systemName: "applelogo")
                            .font(.system(size: 30))
                            .scaledToFit()
                            .foregroundStyle(.black)
                            
                    }.padding(.bottom, 1)
                }
                
            }
            HStack{
                Text("Don't have an account?")
                    .foregroundStyle(.indigo)
                    .font(.system(size: 12))
                
                Button{
                    
                } label: {
                    Text("Sign up")
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
    LoginScreen()
}
