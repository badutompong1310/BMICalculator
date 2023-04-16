//
//  BodyMassIndexDetailView.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import SwiftUI

struct BodyMassIndexDetailView: View {
    
    var bodyMassIndex: BodyMassIndex
    
    var body: some View {
        VStack(alignment: .leading) {
            VerticalTitleDescriptionComponent(
                title: Prompt.Title.time,
                description: "\(bodyMassIndex.savedAt.formatted(date: .omitted, time: .complete))")
            .padding()
            VerticalTitleDescriptionComponent(
                title: Prompt.Title.result,
                description: bodyMassIndex.result.twoTrailingZero())
            .padding()
            Group {
                Text(Prompt.Title.scale)
                    .font(.body)
                    .foregroundColor(.gray)
                Text(bodyMassIndex.scale.rawValue)
                    .font(.title2)
                    .foregroundColor(bodyMassIndex.scale.getColor())
            }
            .padding(.horizontal)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .navigationTitle("\(bodyMassIndex.savedAt.formatted(date: .abbreviated, time: .omitted))")
    }
}

struct BMIDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BodyMassIndexDetailView(bodyMassIndex: BodyMassIndex(savedAt: Date(), result: 10.0, scale: .extremlyObese))
    }
}
