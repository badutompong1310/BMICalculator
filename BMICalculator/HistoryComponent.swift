//
//  HistoryComponent.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import SwiftUI

struct HistoryView: View {
    
    @Binding var savedBodyMassIndex: [BodyMassIndex]
    
    var body: some View {
        List(savedBodyMassIndex) { bodyMassIndex in
            HistoryItem(bodyMassIndex: bodyMassIndex)
        }
    }
}


struct HistoryItem: View {
    
    var bodyMassIndex: BodyMassIndex
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(bodyMassIndex.savedAt.formatted(date: .abbreviated, time: .shortened))")
                .font(.body)
                .foregroundColor(.gray)
            HStack {
                Text("\(bodyMassIndex.result, specifier: "%.2f")")
                    .font(.title)
                    .bold()
                Spacer()
                Text("\(bodyMassIndex.scale())")
                    .font(.title2)
                    .foregroundColor(bodyMassIndex.scaleColor())
            }
            .padding(.top, -4)
        }
    }
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(
            savedBodyMassIndex: .constant([
                BodyMassIndex(savedAt: Date(), result: 18.0),
                BodyMassIndex(savedAt: Date(), result: 24.0)
            ])
        )
    }
}

