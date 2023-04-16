//
//  HistoryComponent.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import SwiftUI

struct HistoryComponent: View {
    @ObservedObject var bodyMassIndexViewModel: BodyMassIndexViewModel
    
    var body: some View {
        if bodyMassIndexViewModel.isEmptyHistory() {
            emptyHistory
        }else {
            historyList
        }
    }
    
    var emptyHistory: some View {
        VStack {
            Spacer()
            Text("No History")
            Spacer()
        }
    }
    
    var historyList: some View {
        List(bodyMassIndexViewModel.savedHistories) { savedHistory in
            NavigationLink(value: savedHistory) {
                HistoryRowComponent(bodyMassIndex: savedHistory)
            }
        }
        .navigationDestination(for: BodyMassIndex.self) { bodyMassIndex in
            BodyMassIndexDetailView(bodyMassIndex: bodyMassIndex)
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryComponent(bodyMassIndexViewModel: BodyMassIndexViewModel())
    }
}
