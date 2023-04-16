//
//  Prompt.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import Foundation

struct Prompt { private init() {} }

extension Prompt {
    static let noHistory = "No History"
}

extension Prompt {
    struct Title {
        static let segment = "Segment"
        static let calculator = "Calculator"
        static let history = "History"
        static let bodyMassIndex = "Body Mass Index"
        static let weight = "Weight (kg)"
        static let height = "Height (cm)"
        static let yourBodyMassIndex = "Your Body Mass Index"
        static let time = "Time"
        static let result = "BMI Result"
        static let scale = "Scale"
        
        private init() {}
    }
}

extension Prompt {
    struct Button {
        static let saveToHistory = "Save to history"
        
        private init() {}
    }
}
