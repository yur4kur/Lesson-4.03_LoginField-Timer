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
    
    let action: () -> Void
    
    
    // MARK: - Body
    
    var body: some View {
        DraftButtonView(
            title: Constants.buttonTitle,
            color: .cyan,
            action: action
        )
    }
}

// MARK: - Preview

//#Preview {
//    LogoutButtonView(action: TimerViewModel())
//}
