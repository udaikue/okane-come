//
//  ButtonStyle.swift
//  OkaneCome
//
//  Created by ikue uda on 2024/01/08.
//

import SwiftUI

struct CategoryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title3)
            .frame(minWidth: 60, maxWidth: 110, minHeight: 30, maxHeight: 40)
            .background(.teal)
    }
}

struct NumberButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .foregroundColor(.black)
            .padding()
            .frame(minWidth: 80, maxWidth: 110, minHeight: 50, maxHeight: 70)
    }
}
