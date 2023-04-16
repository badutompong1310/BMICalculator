//
//  BMI.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import Foundation

enum IndexScale: String {
    case underweight = "Underweight"
    case normal = "Normal"
    case overweight = "Overweight"
    case obese = "Obese"
    case extremlyObese = "Extremely Obese"
}

struct BodyMassIndex: Identifiable, Hashable {
    let id = UUID()
    var savedAt: Date
    var result: Double
    var scale: IndexScale
}
