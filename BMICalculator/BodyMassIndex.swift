//
//  BMI.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import Foundation
import SwiftUI

struct BodyMassIndex: Identifiable {
    let id = UUID()
    var savedAt: Date
    var result: Double
    
    func scale() -> String {
        switch result {
        case 0..<18.5:
            return "Underweight"
        case 18.6..<24.9:
            return "Normal"
        case 25..<29.9:
            return "Overweight"
        case 30..<34.9:
            return "Obese"
        default:
            return "Extremly Obese"
        }
    }
    
    func scaleColor() -> Color {
        switch result {
        case 0..<18.5:
            return Color("blue")
        case 18.6..<24.9:
            return Color("green")
        case 25..<29.9:
            return Color("yellow")
        case 30..<34.9:
            return Color("orange")
        default:
            return Color("red")
        }
    }
}
