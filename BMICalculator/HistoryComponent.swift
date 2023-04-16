//
//  HistoryComponent.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import SwiftUI

struct HistoryView: View {
    
    @Binding var savedBmi: [BodyMassIndex]
    
    var body: some View {
        List(savedBmi) { savedHistory in
            HistoryItem(bmi: savedHistory)
        }
    }
}


struct HistoryItem: View {
    
    var bmi: BodyMassIndex
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(bmi.savedAt.formatted(date: .abbreviated, time: .shortened))")
                .font(.body)
                .foregroundColor(.gray)
            HStack {
                Text("\(bmi.result, specifier: "%.2f")")
                    .font(.title)
                    .bold()
                Spacer()
                Text("\(bmi.scale())")
                    .font(.title2)
                    .foregroundColor(bmi.scaleColor())
            }
            .padding(.top, -4)
        }
    }
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(
            savedBmi: .constant([
                BodyMassIndex(savedAt: Date(), result: 18.0),
                BodyMassIndex(savedAt: Date(), result: 24.0)
            ])
        )
    }
}

