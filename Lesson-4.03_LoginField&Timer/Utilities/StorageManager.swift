//
//  StorageManager.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 12.12.2023.
//

import SwiftUI

// MARK: - StorageManager

final class StorageManager: ObservableObject {
    
    @AppStorage(Constants.nameKey) private var name = Constants.emptyString
    @AppStorage(Constants.isRegisteredKey) private var isRegistered = false
    
    func logIn(userName: String) {
        @AppStorage(Constants.nameKey) var name = userName
        isRegistered.toggle()
    }
    
    func logOut() {
        isRegistered.toggle()
    }
}

// MARK: - Constants

private extension StorageManager {
    enum Constants {
        static let emptyString = ""
        static let nameKey = "name"
        static let isRegisteredKey = "isRegistered"
    }
}
