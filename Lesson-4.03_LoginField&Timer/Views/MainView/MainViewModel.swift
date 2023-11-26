//
//  MainViewModel.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import Foundation
import Combine

// MARK: - MainView Model

final class MainViewModel: ObservableObject {
    
    // MARK: - Public properties
    
    var timeCounter = TimeCounter(counter: 3,
                                  buttonTitle: Constants.startTitle)
    let objectWillChange = ObjectWillChangePublisher()

    
    // MARK: - Private properties
    
    private var timer: Timer?
    
    
    // MARK: - Public methods
    
    func startTimer() {
        if timeCounter.counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        
        buttonDidTapped()
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
        
        objectWillChange.send()
    }
    
    /// Changing button title
    private func buttonDidTapped() {
        if timeCounter.buttonTitle == "Reset" {
            timeCounter.counter = 3
            timeCounter.buttonTitle = "Start"
        } else {
            timeCounter.buttonTitle = "Wait..."
        }
        
        objectWillChange.send()
    }
    
    /// Removing timer from memory
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}

// MARK: - Constants

private extension MainViewModel {
    enum Constants {
        static let startTitle = "Start"
        static let resetTitle = "Reset"
        static let waitTitle = "Wait..."
    }
}
