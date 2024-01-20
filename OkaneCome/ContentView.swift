//
//  ContentView.swift
//  OkaneCome
//
//  Created by ikue uda on 2024/01/02.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var costs: [Cost]
    
    var body: some View {
        TabView {
            InputView()
                .tabItem {
                    Label("入力", systemImage: "square.and.pencil")
                }
            ListView()
                .tabItem {
                    Label("リスト", systemImage: "checkmark.rectangle")
                }
            CategoryView()
                .tabItem {
                    Label("カテゴリ", systemImage: "tray.2.fill")
                }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Cost.self, inMemory: true)
}
