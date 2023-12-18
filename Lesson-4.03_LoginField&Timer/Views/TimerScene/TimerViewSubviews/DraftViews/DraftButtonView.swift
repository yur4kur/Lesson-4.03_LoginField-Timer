//
//  DraftButtonView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import SwiftUI

// MARK: - DraftButtonView

struct DraftButtonView: View {
    
    // MARK: - Public properties
    
    let title: String
    let color: Color
    let action: () -> Void
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: action) {
            DraftButtonTitleView(title: title)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .clipShape(.buttonBorder)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 4)
        )
    }
}


// MARK: - Preview

#Preview {
    DraftButtonView(title: "Start", color: .red, action: {})
}
