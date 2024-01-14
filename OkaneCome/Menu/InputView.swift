//
//  InputView.swift
//  OkaneCome
//
//  Created by ikue uda on 2024/01/02.
//

import SwiftUI
import SwiftData

let category: Array<String> = [
    "未分類",  // 0
    "食費",  // 1
    "日用品",  // 2
    "光熱費",  // 3
    "交際費",  // 4
    "美容",  // 5
    "特別費",  // 6
    "家賃",  // 7
    "通信費",  // 8
    "娯楽",  // 9
    "医療",  // 10
    "衣料・雑貨",  // 11
    "旅費",  // 12
]

struct InputView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var costs: [Cost]
    @State var selectedCategory: Int = 0
    @State var inputYen: String = ""
    @State var inputMemo: String = ""
    
    var body: some View {
        VStack {
            // カテゴリ選択
            VStack {
                HStack {
                    // 食費
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "食費") ?? 0
                    }, label: {
                        Text(category[1])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 日用品
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "日用品") ?? 0
                    }, label: {
                        Text(category[2])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 光熱費
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "光熱費") ?? 0
                    }, label: {
                        Text(category[3])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                }
                HStack {
                    // 交際費
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "交際費") ?? 0
                    }, label: {
                        Text(category[4])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 美容
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "美容") ?? 0
                    }, label: {
                        Text(category[5])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 特別費
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "特別費") ?? 0
                    }, label: {
                        Text(category[6])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                }
                HStack {
                    // 家賃
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "家賃") ?? 0
                    }, label: {
                        Text(category[7])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 通信費
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "通信費") ?? 0
                    }, label: {
                        Text(category[8])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 娯楽
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "娯楽") ?? 0
                    }, label: {
                        Text(category[9])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                }
                HStack {
                    // 医療
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "医療") ?? 0
                    }, label: {
                        Text(category[10])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 衣料・雑貨
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "衣料・雑貨") ?? 0
                    }, label: {
                        Text(category[11])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 旅費
                    Button(action: {
                        selectedCategory = category.firstIndex(of: "旅費") ?? 0
                    }, label: {
                        Text(category[12])
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                }
            }
            
            HStack {
                Button(action: {
                }, label: {
                    Text("\(inputYen)")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(minWidth: 200, maxWidth: 300, minHeight: 50, maxHeight: 70, alignment: .trailing)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                })
                .background(Color.yellow)
                Text("円")
                    .font(.title3)

            }
            .padding()
            // Todo: デフォルト非表示にする
            TextField("メモを入力", text: $inputMemo)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Button(action: {
                        inputYen += "7"
                    }, label: {
                        Text("7")
                    })
                    .border(Color.teal, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "8"
                    }, label: {
                        Text("8")
                    })
                    .border(Color.teal, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "9"
                    }, label: {
                        Text("9")
                    })
                    .border(Color.teal, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    // 金額をクリア
                    Button(action: {
                        inputYen = ""
                    }, label: {
                        Image(systemName: "clear.fill")
                    })
                    .border(Color.teal, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                }
                
                HStack(spacing:0) {
                    Button(action: {
                        inputYen += "4"
                    }, label: {
                        Text("4")
                    })
                    .border(Color.teal, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "5"
                    }, label: {
                        Text("5")
                    })
                    .border(Color.teal, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "6"
                    }, label: {
                        Text("6")
                    })
                    .border(Color.teal, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    // 日付設定
                    Button(action: {
                        // ToDo: カレンダーを開く
                    }, label: {
                        Image(systemName: "calendar")
                    })
                    .border(Color.teal, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                }
                
                HStack(spacing:0) {
                    Button(action: {
                        inputYen += "1"
                    }, label: {
                        Text("1")
                    })
                    .border(Color.teal, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "2"
                    }, label: {
                        Text("2")
                    })
                    .border(Color.teal, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "3"
                    }, label: {
                        Text("3")
                    })
                    .border(Color.teal, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost(selectedCategory: selectedCategory, inputYen: inputYen)
                    }, label: {
                        Text("入")
                    })
                    .border(Color.teal, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(InputButtonStyle())
                    .background(.teal)
                }
                
                HStack(spacing:0) {
                    Button(action: {
                        inputYen += "0"
                    }, label: {
                        Text("0")
                    })
                    .border(Color.teal, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "00"
                    }, label: {
                        Text("00")
                    })
                    .border(Color.teal, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    // メモ入力
                    Button(action: {
                        // ToDo: メモ欄を表示する
                    }, label: {
                        Image(systemName: "square.and.pencil")
                    })
                    .border(Color.teal, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost(selectedCategory: selectedCategory, inputYen: inputYen)
                    }, label: {
                        Text("力")
                    })
                    .border(Color.teal, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(InputButtonStyle())
                    .background(.teal)
                }
            }
            .aspectRatio(contentMode: .fit)
            .border(Color.teal, width: 2)
        }
    }
    
    private func addCost(selectedCategory: Int, inputYen: String){
        let yen = Int(inputYen) ?? 0
        let newCost = Cost(category: selectedCategory, yen: yen, memo: inputMemo)
        modelContext.insert(newCost)
        self.inputYen = ""
    }
}

#Preview {
    InputView()
}
