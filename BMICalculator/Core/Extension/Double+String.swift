//
//  Double+String.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import Foundation

extension Double {
    func twoTrailingZero() -> String {
        return String(format: "%.2f", self)
    }
}
