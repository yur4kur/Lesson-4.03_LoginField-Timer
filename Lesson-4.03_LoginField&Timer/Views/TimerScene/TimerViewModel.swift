//
//  TimerViewModel.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import SwiftUI
//import Combine

// MARK: - TimerViewModel

final class TimerViewModel: ObservableObject {
    
    // MARK: - Wrapped properties
    
    @AppStorage(Constants.nameKey) var name = Constants.emptyString
    @AppStorage(Constants.isRegisteredKey) var isRegistered = false
    
    @Published var timeCounter = TimeCounter(
        counter: 3,
        buttonTitle: Constants.startTitle
    )

    
    // MARK: - Public methods
    
    func startTimer() {
        if timeCounter.counter > 0 {
            timeCounter.timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        
        didTapButton()
    }
    
    func logout() {
       // userName = Constants.emptyString
        name = Constants.emptyString
        isRegistered.toggle()
    }
    
    // MARK: - Private methods
    
    /// Starting timer
    @objc
    private func updateCounter() {
        if timeCounter.counter > 0 {
            timeCounter.counter -= 1
        } else {
            killTimer()
            timeCounter.buttonTitle = Constants.resetTitle
        }
    }
    
    /// Changing button title
    private func didTapButton() {
        if timeCounter.buttonTitle == Constants.resetTitle {
            timeCounter.counter = 3
            timeCounter.buttonTitle = Constants.startTitle
        } else {
            timeCounter.buttonTitle = Constants.waitTitle
        }
    }
    
    /// Removing timer from memory
    private func killTimer() {
        timeCounter.timer?.invalidate()
        timeCounter.timer = nil
    }
}


