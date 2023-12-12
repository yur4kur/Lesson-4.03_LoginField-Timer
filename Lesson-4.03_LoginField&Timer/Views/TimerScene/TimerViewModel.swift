//
//  TimerViewModel.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import Foundation
import Combine

// MARK: - TimerViewModel

final class TimerViewModel: ObservableObject {
    
    // MARK: - Public properties
    
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

// MARK: - Constants

private extension TimerViewModel {
    enum Constants {
        static let startTitle = "Start"
        static let resetTitle = "Reset"
        static let waitTitle = "Wait..."
    }
}
