//
//  LoginScreen.swift
//  SwiftUIFirebase
//
//  Created by MacBook on 25/3/26.
//

import SwiftUI

struct LoginScreen: View {
    @State var email : String = ""
    @State var pass : String = ""
    var body: some View {
        ScrollView{
            VStack{
                Image(.people).resizable()
                    .scaledToFit()
                Text("Let's connect with us !👋")
                    .font(Font.title2)
                    .fontWeight(.semibold)
                Spacer().frame(height: 16)
                TextField("Enter email or phone number", text: $email)
                Divider()
                Spacer().frame(height: 16)
                SecureField("Password", text: $pass)
                Divider()
                Spacer().frame(height: 16)
                HStack{
                    Spacer()
                    Text("Forgot password ?").font(.subheadline).fontWeight(.bold)
                        .foregroundColor(.gray)
                }
                

                
            }.padding()
        }
    }
}

#Preview {
    LoginScreen()
}
