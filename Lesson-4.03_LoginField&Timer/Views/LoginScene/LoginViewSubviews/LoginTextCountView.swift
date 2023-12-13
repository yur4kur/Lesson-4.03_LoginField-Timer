//
//  LoginTextCountView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 12.12.2023.
//

import SwiftUI

// MARK: - LoginTextCountView

struct LoginTextCountView: View {
    
    // MARK: - Wrapped properties
    
    let text: String
    let color: Color
   
    
    // MARK: - Body
    
    var body: some View {
        Text("\(text.count)")
            .foregroundStyle(color)
    }
}

// MARK: - Preview

#Preview {
    LoginTextCountView(text: "Hello", color: .red)
}
