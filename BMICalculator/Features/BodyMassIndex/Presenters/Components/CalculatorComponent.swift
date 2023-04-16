//
//  CalculatorComponent.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import SwiftUI

struct CalculatorComponent: View {
    @ObservedObject var bodyMassIndexViewModel: BodyMassIndexViewModel
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(Prompt.Title.weight)
                        .font(.body)
                        .foregroundColor(.gray)
                    Spacer()
                    Text(bodyMassIndexViewModel.weight.twoTrailingZero())
                        .font(.title)
                        .bold()
                        .padding(.top, 4)
                }
                Slider(
                    value: $bodyMassIndexViewModel.weight,
                    in: 35...150
                )
                Divider()
            }
            VStack(alignment: .leading) {
                HStack {
                    Text(Prompt.Title.height)
                        .font(.body)
                        .foregroundColor(.gray)
                    Spacer()
                    Text(bodyMassIndexViewModel.height.twoTrailingZero())
                        .font(.title)
                        .bold()
                        .padding(.top, 4)
                }
                Slider(
                    value: $bodyMassIndexViewModel.height,
                    in: 130...200
                )
                Divider()
            }
            .padding(.top, 16)
            HStack {
                Text(Prompt.Title.yourBodyMassIndex)
                    .font(.body)
                    .foregroundColor(.gray)
                Spacer()
                VStack(alignment: .trailing) {
                    Text(bodyMassIndexViewModel.result.twoTrailingZero())
                        .font(.largeTitle)
                        .bold()
                    Text(bodyMassIndexViewModel.scale.rawValue)
                        .font(.body)
                        .foregroundColor(bodyMassIndexViewModel.scale.getColor())
                }
            }
            .padding(.top, 16)
            Button {
                bodyMassIndexViewModel.saveResult()
            } label: {
                Text(Prompt.Button.saveToHistory)
                    .frame(maxWidth: .infinity, maxHeight: 32)
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 16)
            Spacer()
        }
        .padding()
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorComponent(
            bodyMassIndexViewModel: BodyMassIndexViewModel())
    }
}
