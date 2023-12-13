//
//  LoginTextFieldView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 27.11.2023.
//

import SwiftUI

// MARK: - LoginTextFieldView

struct LoginTextFieldView: View {
    
    // MARK: - Wrapped properties
    
    @Binding var text: String
    
    
    // MARK: - Body
    
    var body: some View {
        TextField(Constants.placeholderText, text: $text)
            .multilineTextAlignment(.center)
    }
}

// MARK: - Preview

#Preview {
    LoginTextFieldView(text: .constant("OK"))
}
