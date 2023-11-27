//
//  LoginButtonView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 27.11.2023.
//

import SwiftUI

// MARK: - LoginButtonView

struct LoginButtonView: View {
    
    // MARK: Public properties
    
    let action: () -> Void
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: Constants.buttonImage)
                Text(Constants.buttonText)
            }
        }
    }
}

// MARK: - Constants

private extension LoginButtonView {
    enum Constants {
        static let buttonImage = "checkmark.circle"
        static let buttonText = "OK"
    }
}

// MARK: - Preview

#Preview {
    LoginButtonView(action: {})
}
