//
//  LoginView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 27.11.2023.
//

import SwiftUI

// MARK: - LoginView

struct LoginView: View {
    
    // MARK:  - Wrapped properties
    
    @State private var name = ""
    @EnvironmentObject var userLogin: LoginViewModel
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            TextField(Constants.placeholderText, text: $name)
                .multilineTextAlignment(.center)
            Button(action: login) {
                HStack {
                    Image(systemName: Constants.buttonImage)
                    Text(Constants.buttonText)
                }
            }
        }
    }
    
    // MARK: - Private methods
    
    private func login() {
        if !name.isEmpty {
            userLogin.user.name = name
            userLogin.user.isRegistered.toggle()
        }
    }
}

// MARK: - Constants

private extension LoginView {
    enum Constants {
        static let placeholderText = "Enter your name"
        static let buttonImage = "checkmark.circle"
        static let buttonText = "OK"
    }
}

// MARK: - Preview

#Preview {
    LoginView()
}
