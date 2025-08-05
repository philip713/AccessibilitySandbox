//
//  ContentView.swift
//  AccessibilitySandbox
//
//  Created by Philip Janzel Paradeza on 2025-08-04.
//

import SwiftUI

struct ContentView: View {
    let pictures = [
        "ales-krivec-15949",
                "galina-n-189483",
                "kevin-horstmann-141705",
                "nicolas-tissot-335096"
    ]
    let labels = [
        "Tulips",
        "Frozen tree buds",
        "sunflowers",
        "fireworks"
    ]
    @State private var selectedPicture = Int.random(in: 0...3)
    var body: some View {
        Button{
            selectedPicture = Int.random(in: 0...3)
        } label: {
            Image(pictures[selectedPicture])
                .resizable()
                .scaledToFit()
        }
        .accessibilityLabel(labels[selectedPicture])
    }
}

#Preview {
    ContentView()
}
