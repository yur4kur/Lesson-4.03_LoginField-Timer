//
//  RootViewModel.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 12.12.2023.
//

import SwiftUI

// MARK: - RouterViewModel

final class RootViewModel: ObservableObject {
    
    // MARK: - Wrapped properties
    
    @Published var user = User(
        name: StorageManager().name,
        isRegistered: StorageManager().isRegistered
    )
}

