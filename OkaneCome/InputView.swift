//
//  InputView.swift
//  OkaneCome
//
//  Created by ikue uda on 2024/01/02.
//

import SwiftUI
import SwiftData

struct InputView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var costs: [Cost]
    @State var inputYen: Int = 0
    @State var inputMemo: String = ""
    
    var body: some View {
        VStack {
            HStack{
                Button(action: {
                    setCategory()
                }, label: {
                    Text("食費")
                })
                Button(action: {
                    setCategory()
                }, label: {
                    Text("日用品")
                })
                Button(action: {
                    setCategory()
                }, label: {
                    Text("光熱費")
                })
            }
            .buttonStyle(.bordered)
            HStack{
                Button(action: {
                    setCategory()
                }, label: {
                    Text("交際費")
                })
                Button(action: {
                    setCategory()
                }, label: {
                    Text("美容費")
                })
                Button(action: {
                    setCategory()
                }, label: {
                    Text("特別費")
                })
            }
            .buttonStyle(.bordered)
            
            TextField("", value: $inputYen, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("メモを入力", text: $inputMemo)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button(action: {
                addCost()
            }, label: {
                Text("入力")
            })
        }
    }
    
    private func setCategory() {
        print("Selected")
    }
    
    private func addCost(){
        let newCost = Cost(memo: inputMemo, yen: inputYen)
        modelContext.insert(newCost)
    }
}

#Preview {
    InputView()
}
