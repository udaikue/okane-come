//
//  ListView.swift
//  OkaneCome
//
//  Created by ikue uda on 2024/01/02.
//

import SwiftUI
import SwiftData
import Foundation

let today = Date()
let calendar = Calendar(identifier: .gregorian)
let nowYear = String(calendar.component(.year, from: today))
let nowMonth = String(calendar.component(.month, from: today))
let displayYear: String = nowYear
let displayMonth: String = nowMonth
let displayYearMonth: String = displayYear + displayMonth

struct ListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(filter: #Predicate<Cost> { $0.yearMonth == displayYearMonth },
           sort: \Cost.day)
    var costs: [Cost]
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(costs, id:\.self) {cost in
                        Section {
                            let category = category[cost.category]
                            Text("¥\(String(cost.yen)) \n\(category) \(cost.memo)")
                        } header: {
                            Text("\(displayMonth) 月 \(cost.day) 日")
                        }
                    }
                    .onDelete(perform: { indexSet in
                        for index in indexSet {
                            deleteCost(cost: costs[index])
                        }
                    })
                    .listStyle(DefaultListStyle())
                }
                .navigationTitle(Text("\(displayYear) 年 \(displayMonth) 月"))
            }
        }
    }
    
    private func deleteCost(cost: Cost) {
        modelContext.delete(cost)
    }
}

#Preview {
    ListView()
}
