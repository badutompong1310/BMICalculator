//
//  CalculatorComponent.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import SwiftUI

struct CalculatorView: View {
    @Binding var weight: Double
    @Binding var height: Double
    @Binding var savedBmi: [BodyMassIndex]
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Weight (kg)")
                        .font(.body)
                        .foregroundColor(.gray)
                    Spacer()
                    Text("\(weight, specifier: "%.0f")")
                        .font(.title)
                        .bold()
                        .padding(.top, 4)
                }
                Slider(
                    value: $weight,
                    in: 35...150
                )
                Divider()
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("Height (cm)")
                        .font(.body)
                        .foregroundColor(.gray)
                    Spacer()
                    Text("\(height, specifier: "%.0f")")
                        .font(.title)
                        .bold()
                        .padding(.top, 4)
                }
                Slider(
                    value: $height,
                    in: 130...200
                )
                Divider()
            }
            .padding(.top, 16)
            HStack {
                Text("Your Body Mass Index")
                    .font(.body)
                    .foregroundColor(.gray)
                Spacer()
                VStack(alignment: .trailing) {
                    Text("\(bmiResult(), specifier: "%.2f")")
                        .font(.largeTitle)
                        .bold()
                    Text("\(bmiScale())")
                        .font(.body)
                        .foregroundColor(bmiScaleColor())
                }
            }
            .padding(.top, 16)
            Button {
                let newBmi = BodyMassIndex(savedAt: Date(), result: bmiResult())
                savedBmi.insert(newBmi, at: 0)
            } label: {
                Text("Save to history")
                    .frame(maxWidth: .infinity, maxHeight: 32)
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 16)
            Spacer()
        }
        .padding()
    }
    
    func bmiResult() -> Double {
        return weight * 10_000 / (height * height)
    }
    
    func bmiScale() -> String {
        switch bmiResult() {
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
    
    func bmiScaleColor() -> Color {
        switch bmiResult() {
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

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView(weight: .constant(67.0), height: .constant(177), savedBmi: .constant([]))
    }
}
