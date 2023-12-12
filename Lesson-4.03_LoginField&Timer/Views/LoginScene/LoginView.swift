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
    
    @EnvironmentObject var loginVM: LoginViewModel
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            HStack {
                LoginTextFieldView(text: $loginVM.userName)
                
                LoginTextCountView(text: loginVM.userName, color: loginVM.color)
                    .padding(.trailing)
            }
            
            LoginButtonView(action: loginVM.register, isValid: loginVM.isValid )
                .padding(.trailing)
        }
    }
}

// MARK: - Preview

#Preview {
    LoginView()
}
