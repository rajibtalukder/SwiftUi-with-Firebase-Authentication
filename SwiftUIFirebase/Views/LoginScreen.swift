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
                //TextField("Enter email or phone number", text: $email)
                CustomInputField(text: $email, placeholder: "Enter email or phone number")
                Divider()
                Spacer().frame(height: 16)
                //SecureField("Password", text: $pass)
                CustomInputField(text: $email, placeholder: "Password", isSecureTextEntry: true)

                Divider()
                Spacer().frame(height: 16)
                HStack{
                    Spacer()
                    Text("Forgot password ?").font(.subheadline).fontWeight(.bold)
                        .foregroundColor(.gray)
                }
                Spacer().frame(height: 16)
                Button{}label: {
                    Text("Login")
                        .font(Font.title2)
                        .foregroundColor(.white)
                        .padding().frame(maxWidth: .infinity, maxHeight: 50)
                        .background(.teal).cornerRadius(50)
                }
                HStack{
                    Divider().frame(maxWidth: .infinity, maxHeight: 0.5).background(.gray)
                    Text("or").foregroundColor(.gray).padding()
                    Divider().frame(maxWidth: .infinity, maxHeight: 0.5).background(.gray)
                }
                
                Button{}label: {
                    Text("Sign up with Apple")
                        .font(Font.title2)
                        .foregroundColor(.white)
                        .padding().frame(maxWidth: .infinity, maxHeight: 50)
                        .background(.black).cornerRadius(50)
                }
                
                Button{}label: {
                    Text("Sign up with Google")
                        .font(Font.title2)
                        .foregroundColor(.black)
                        .padding().frame(maxWidth: .infinity, maxHeight: 50)
                        .background(.white).cornerRadius(50).border(.black, width: 1).cornerRadius(50)
                }

                
            }.padding()
        }
    }
}

#Preview {
    LoginScreen()
}
