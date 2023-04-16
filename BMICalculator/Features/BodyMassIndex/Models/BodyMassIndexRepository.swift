//
//  BodyMassIndexRepository.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import Foundation

struct BodyMassIndexRepository {
    var savedHistories :[BodyMassIndex] = []
    
    mutating func add(_ bodyMassIndex: BodyMassIndex) {
        savedHistories.insert(bodyMassIndex, at: 0)
    }
}
