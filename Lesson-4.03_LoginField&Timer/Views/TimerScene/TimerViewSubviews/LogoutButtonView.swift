//
//  LogoutButtonView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 27.11.2023.
//

import SwiftUI

// MARK: - LogoutButtonView

struct LogoutButtonView: View {
    
    // MARK: - Public properties
    
    @ObservedObject var timerVM: TimerViewModel
    
    
    // MARK: - Body
    
    var body: some View {
        DraftButtonView(
            title: Constants.buttonTitle,
            color: .cyan,
            action: timerVM.logout
        )
    }
}

// MARK: - Preview

#Preview {
    LogoutButtonView(timerVM: TimerViewModel())
}
