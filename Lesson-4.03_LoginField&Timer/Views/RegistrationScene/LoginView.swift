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
    
    @EnvironmentObject var login: LoginViewModel
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            LoginTextFieldView(text: $login.userName)
            
            LoginButtonView(action: login.register)
        }
    }
}

// MARK: - Preview

#Preview {
    LoginView()
}
