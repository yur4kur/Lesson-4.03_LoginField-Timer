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
    
    let objectWillChange = PassthroughSubject<StorageManager, Never>()
    
    @AppStorage(Constants.nameKey) var name = Constants.emptyString
    @AppStorage(Constants.isRegisteredKey) private var isRegistered = false
    
    func logIn(userName: String) {
        name = userName
        isRegistered.toggle()
        objectWillChange.send(self)
    }
    
    func logOut() {
        name = Constants.emptyString
        isRegistered.toggle()
        objectWillChange.send(self)
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
