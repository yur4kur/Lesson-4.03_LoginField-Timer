//
//  LoginViewModel.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 27.11.2023.
//

import Foundation

// MARK: - LoginViewModel

final class LoginViewModel: ObservableObject {
    
    // MARK: - Wrapped properties
    
    @Published var user = User(name: "", isRegistered: false)
    
    // TODO - Add methods
}
