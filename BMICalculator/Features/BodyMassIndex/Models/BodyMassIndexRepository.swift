//
//  BodyMassIndexRepository.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import Foundation

struct BodyMassIndexRepository {
    var savedBodyMassIndex :[BodyMassIndex] = []
    
    mutating func add(_ bodyMassIndex: BodyMassIndex) {
        savedBodyMassIndex.insert(bodyMassIndex, at: 0)
    }
}
