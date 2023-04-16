//
//  ContentView.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import SwiftUI

struct BodyMassIndexView: View {
    @StateObject var bodyMassIndexViewModel = BodyMassIndexViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker(Prompt.Title.segment,
                       selection: $bodyMassIndexViewModel.segment) {
                    Text(Prompt.Title.calculator).tag(0)
                    Text(Prompt.Title.history).tag(1)
                }
                .pickerStyle(.segmented)
                .padding()
                switch bodyMassIndexViewModel.segment {
                case 0:
                    CalculatorComponent(
                        bodyMassIndexViewModel: bodyMassIndexViewModel
                    )
                default :
                    HistoryComponent(
                        bodyMassIndexViewModel: bodyMassIndexViewModel
                    )
                }
                
            }
            .navigationTitle(Text(Prompt.Title.bodyMassIndex))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BodyMassIndexView()
    }
}
