//
//  ContentView.swift
//  Assignment3_SwiftUI
//
//  Created by Malik Muhammad on 3/19/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(.image1)
                    .resizable()
                    .imageScale(.medium)
                    .foregroundStyle(.tint)
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                    .cornerRadius(9)
                
                
                
                
                Text("Hello  !")
                    .fontWeight(.semibold)
                    .font(.system(size: 40))
                
                Text("Best place to write life stories and share your journey and experiences")
                    .padding(.horizontal)
                    .padding(2)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.gray)
                
                NavigationLink {
                    LoginScreen()
                } label: {
                    Text("Login")
                        .textCase(.uppercase)
                        .foregroundStyle(.white)
                        .frame(width: 150, height: 40)
                        .background(.indigo)
                        .cornerRadius(5)
                        .padding(.top, 7)
                        .font(.system(size: 14))
                    
                    
                }
                
                NavigationLink {
                    SignUpScreen()
                } label: {
                    Text("SignUp")
                        .foregroundStyle(.indigo)
                        .textCase(.uppercase)
                        .frame(width: 150, height: 40)
                        .background(.white)
                        .cornerRadius(5)
                        .font(.system(size: 14))
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.indigo, lineWidth: 2))
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
