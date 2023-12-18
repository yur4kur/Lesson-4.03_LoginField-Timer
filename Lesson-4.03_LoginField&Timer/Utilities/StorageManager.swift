//
//  StorageManager.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 12.12.2023.
//

import SwiftUI

// MARK: - StorageManager

final class StorageManager: ObservableObject {
    
    // MARK: Public properties
    
    /// Singleton property
    static let shared = StorageManager()
    
    @AppStorage(Constants.userKey) private var userData: Data?
    
    // MARK: - Initializers
    
    /// Singleton initializer
    private init() {}
    
    // MARK: - Public methods
    
    /// CRUD methods
    
    // MARK: Save
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
   
    // MARK: Fetch
    func fetchUser() -> User {
        guard let data = userData else { return User() }
        guard let user = try? JSONDecoder().decode(User.self, from: data) else {
            return User()
        }
        
        return user
    }
    
    // MARK: Delete
    func clear(userManager: UserManager) {
        userManager.user.name = ""
        userManager.user.isRegistered = false
        userData = nil
    }
}
