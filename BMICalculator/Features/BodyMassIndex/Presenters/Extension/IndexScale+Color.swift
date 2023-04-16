//
//  IndexScale+Color.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import SwiftUI

extension IndexScale {
    func getColor() -> Color {
        switch self {
        case .underweight:
            return AppColor.blue
        case .normal:
            return AppColor.green
        case .overweight:
            return AppColor.yellow
        case .obese:
            return AppColor.orange
        case .extremlyObese:
            return AppColor.red
        }
    }
}
