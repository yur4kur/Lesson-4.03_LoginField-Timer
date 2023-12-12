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
    
    @EnvironmentObject var storageManager: StorageManager
    
    
    // MARK: - Body
    
    var body: some View {
        DraftButtonView(
            title: Constants.buttonTitle,
            color: .cyan,
            action: storageManager.logOut
        )
    }
}

// MARK: - Constants

private extension LogoutButtonView {
    enum Constants {
        static let buttonTitle = "Logout"
    }
}

// MARK: - Preview

#Preview {
    LogoutButtonView()
}
