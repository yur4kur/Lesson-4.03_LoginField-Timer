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
    
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject private var userManager: UserManager
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            HStack {
                LoginTextFieldView(text: $userManager.user.name)
                
                LoginTextCountView(
                    text: userManager.user.name,
                    nameValid: userManager.nameValid
                )
                    .padding(.trailing)
            }
            
            LoginButtonView(
                action: {
                    loginVM.register(
                        user: userManager.user,
                        from: userManager)
                },
                isValid: userManager.nameValid
            )
                .padding(.trailing)
        }
    }
}

// MARK: - Preview

#Preview {
    LoginView()
        .environmentObject(UserManager())
}
