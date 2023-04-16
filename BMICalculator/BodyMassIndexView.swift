//
//  ContentView.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import SwiftUI

struct BodyMassIndexView: View {
    @State var segmentIndex = 0
    @State var weightSlider = 76.0
    @State var heightSlider = 166.0
    @State var savedHistories = [
        BodyMassIndex(savedAt: Date(), result: 18.0),
        BodyMassIndex(savedAt: Date(), result: 24.0)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Segment", selection: $segmentIndex) {
                    Text("Calculator").tag(0)
                    Text("History").tag(1)
                }
                .pickerStyle(.segmented)
                .padding()
                switch segmentIndex {
                case 0:
                    CalculatorView(
                        weight: $weightSlider,
                        height: $heightSlider,
                        savedBmi: $savedHistories
                    )
                default :
                    HistoryView(
                        savedBmi: $savedHistories
                    )
                }
                
            }
            .navigationTitle(Text("Body Mass Index"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BodyMassIndexView()
    }
}
