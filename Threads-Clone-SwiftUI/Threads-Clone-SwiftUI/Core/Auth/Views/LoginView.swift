//
//  LoginView.swift
//  Threads-Clone-SwiftUI
//
//  Created by Jaimin Raval on 24/10/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var passwd = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("App-Icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    TextField("Username or email",text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(.rect(cornerRadius: 10))
                        .padding(.horizontal, 24)
                    
                    SecureField("Password", text: $passwd)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(.rect(cornerRadius: 10))
                        .padding(.horizontal, 24)
                }
                
                NavigationLink{
                    Text("Forgot Password?")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 340, height: 44)
                        .background(.black)
                        .clipShape(.rect(cornerRadius: 10))
                }
                Spacer()
                Divider()
                
                NavigationLink{
                    Text("Registration view")
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                }
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    LoginView()
}
