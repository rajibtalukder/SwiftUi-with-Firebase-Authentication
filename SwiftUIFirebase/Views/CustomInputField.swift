//
//  CustomInputField.swift
//  SwiftUIFirebase
//
//  Created by MacBook on 26/3/26.
//

import SwiftUI

struct CustomInputField: View {
    @Binding var text : String
    var placeholder : String
    var isSecureTextEntry : Bool = false
    var body: some View {
        if (isSecureTextEntry){
            SecureField(placeholder, text: $text)
        }else{
            TextField(placeholder, text: $text)
        }

    }
}
