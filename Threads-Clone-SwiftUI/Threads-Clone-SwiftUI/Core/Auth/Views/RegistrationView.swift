//
//  RegistrationView.swift
//  Threads-Clone-SwiftUI
//
//  Created by Jaimin Raval on 24/10/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var passwd = ""
    @State private var fullname = ""
    @State private var usrname = ""

    var body: some View {
        VStack {
            Spacer()
            Image("App-Icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Email",text: $email)
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
                
                TextField("Fullname",text: $fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(.rect(cornerRadius: 10))
                    .padding(.horizontal, 24)
                
                TextField("Username",text: $usrname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(.rect(cornerRadius: 10))
                    .padding(.horizontal, 24)
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
        }
    }
}

#Preview {
    RegistrationView()
}
