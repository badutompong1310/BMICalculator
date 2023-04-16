//
//  VerticalTitleDescriptionComponent.swift
//  BMICalculator
//
//  Created by Handy Handy on 16/04/23.
//

import SwiftUI

struct VerticalTitleDescriptionComponent: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.body)
                .foregroundColor(.gray)
            Text(description)
                .font(.title2)
        }
    }
}

struct VerticalDescriptionComponent_Previews: PreviewProvider {
    static var previews: some View {
        VerticalTitleDescriptionComponent(title: "Title", description: "Description")
    }
}
