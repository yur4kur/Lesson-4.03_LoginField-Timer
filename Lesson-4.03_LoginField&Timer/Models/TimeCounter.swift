//
//  TimeCounter.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//
import Foundation

struct TimeCounter {
    var counter: Int
    var buttonTitle: String
    var timer: Timer?
    
    init(counter: Int, buttonTitle: String) {
        self.counter = counter
        self.buttonTitle = buttonTitle
    }
}
