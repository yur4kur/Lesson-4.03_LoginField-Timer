//
//  StorageManager.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 12.12.2023.
//

import SwiftUI
import Combine

// MARK: - StorageManager

final class StorageManager: ObservableObject {
    
    // MARK: - Public properties
    
    let objectWillChange = PassthroughSubject<StorageManager, Never>()
    
    @AppStorage(Constants.nameKey) var name = Constants.emptyString
    @AppStorage(Constants.isRegisteredKey) var isRegistered = false
    
    
    // MARK: - Public methods
    
    /// Add user name to defaults & change the flag to move to MainView
    func logIn(userName: String) {
        name = userName
        isRegistered.toggle()
        objectWillChange.send(self)
    }
    
    /// Remove user name from defaults & change the flag to return to LoginView
    func logOut() {
        name = Constants.emptyString
        isRegistered.toggle()
        objectWillChange.send(self)
    }
}
