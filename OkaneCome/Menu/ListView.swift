//
//  ListView.swift
//  OkaneCome
//
//  Created by ikue uda on 2024/01/02.
//

import SwiftUI
import SwiftData

struct ListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var costs: [Cost]
    
    var body: some View {
        List {
            ForEach(costs) {cost in
                Text(category[cost.category])
                Text("\(String(cost.yen)) 円")
            }
        }
    }
}

#Preview {
    ListView()
}
