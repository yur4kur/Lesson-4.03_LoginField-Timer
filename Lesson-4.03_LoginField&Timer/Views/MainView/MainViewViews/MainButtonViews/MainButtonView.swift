//
//  ButtonView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import SwiftUI

// MARK: - Button View

struct MainButtonView: View {
    
    // MARK: - Wrapped properties
    
    @ObservedObject var timer: MainViewModel
    
    
    // MARK: - Public properties
    
    let title: String
    let color: Color
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: timer.startTimer) {
            TitleLabelView(title: title)
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
    MainButtonView(timer: MainViewModel(), title: "Start", color: .red)
}
