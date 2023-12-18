//
//  UserManager.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 17.12.2023.
//

import SwiftUI

// MARK: - UserManager

final class UserManager: ObservableObject {
    
    // MARK: - Wrapped propeties
    
    @Published var user = User()
    
    // MARK: - Public properties
    
    var nameValid: Bool {
        user.name.count > 2
    }
    
    // MARK: - Initilizers
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}
