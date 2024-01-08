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
                Text(cost.memo)
                Text(String(cost.yen))
            }
        }
    }
}

#Preview {
    ListView()
}
