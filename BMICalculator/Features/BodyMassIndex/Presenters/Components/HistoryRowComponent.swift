//
//  HistoryRowComponent.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import SwiftUI

struct HistoryRowComponent: View {
    
    var bodyMassIndex: BodyMassIndex
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(bodyMassIndex.savedAt.formatted(date: .abbreviated, time: .shortened))")
                .font(.body)
                .foregroundColor(.gray)
            HStack {
                Text(bodyMassIndex.result.twoTrailingZero())
                    .font(.title)
                    .bold()
                Spacer()
                Text(bodyMassIndex.scale.rawValue)
                    .font(.title2)
                    .foregroundColor(bodyMassIndex.scale.getColor())
            }
            .padding(.top, -4)
        }
    }
}

struct HistoryRow_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowComponent(bodyMassIndex: BodyMassIndex(savedAt: Date(), result: 10.0, scale: .extremlyObese))
    }
}
