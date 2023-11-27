//
//  MainButtonView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import SwiftUI

// MARK: - Button View

struct MainButtonView: View {
    
    // MARK: - Wrapped properties
    
    @ObservedObject var timer: MainViewModel
    
    
    // MARK: - Body
    
    var body: some View {
        DraftButtonView(
            title: timer.timeCounter.buttonTitle,
            color: .red,
            action: timer.startTimer
        )
    }
}

// MARK: - Preview

#Preview {
    MainButtonView(timer: MainViewModel())
}
