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
                        selectedCategory = 1
                    }, label: {
                        Text("食費")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 日用品
                    Button(action: {
                        selectedCategory = 2
                    }, label: {
                        Text("日用品")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 光熱費
                    Button(action: {
                        selectedCategory = 3
                    }, label: {
                        Text("光熱費")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                }
                HStack {
                    // 交際費
                    Button(action: {
                        selectedCategory = 4
                    }, label: {
                        Text("交際費")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 美容
                    Button(action: {
                        selectedCategory = 5
                    }, label: {
                        Text("美容")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 特別費
                    Button(action: {
                        selectedCategory = 6
                    }, label: {
                        Text("特別費")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                }
                HStack {
                    // 家賃
                    Button(action: {
                        selectedCategory = 7
                    }, label: {
                        Text("家賃")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 通信費
                    Button(action: {
                        selectedCategory = 8
                    }, label: {
                        Text("通信費")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 娯楽
                    Button(action: {
                        selectedCategory = 9
                    }, label: {
                        Text("娯楽")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                }
                HStack {
                    // 医療
                    Button(action: {
                        selectedCategory = 10
                    }, label: {
                        Text("医療")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 衣料・雑貨
                    Button(action: {
                        selectedCategory = 11
                    }, label: {
                        Text("衣料・雑貨")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 旅費
                    Button(action: {
                        selectedCategory = 12
                    }, label: {
                        Text("旅費")
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
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "8"
                    }, label: {
                        Text("8")
                    })
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "9"
                    }, label: {
                        Text("9")
                    })
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    // 金額をクリア
                    Button(action: {
                        inputYen = ""
                    }, label: {
                        Image(systemName: "clear.fill")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                }
                
                HStack(spacing:0) {
                    Button(action: {
                        inputYen += "4"
                    }, label: {
                        Text("4")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "5"
                    }, label: {
                        Text("5")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "6"
                    }, label: {
                        Text("6")
                    })
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    // 日付設定
                    Button(action: {
                        // ToDo: カレンダーを開く
                    }, label: {
                        Image(systemName: "calendar")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                }
                
                HStack(spacing:0) {
                    Button(action: {
                        inputYen += "1"
                    }, label: {
                        Text("1")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "2"
                    }, label: {
                        Text("2")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "3"
                    }, label: {
                        Text("3")
                    })
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen = "0"
                    }, label: {
                        Text("入")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                }
                
                HStack(spacing:0) {
                    Button(action: {
                        inputYen += "0"
                    }, label: {
                        Text("0")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        inputYen += "00"
                    }, label: {
                        Text("00")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    // メモ入力
                    Button(action: {
                        // ToDo: メモ欄を表示する
                    }, label: {
                        Image(systemName: "square.and.pencil")
                    })
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost(selectedCategory: selectedCategory, inputYen: inputYen)
                    }, label: {
                        Text("力")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                }
            }
            .aspectRatio(contentMode: .fit)
            .border(Color.gray, width: 2)
        }
    }
    
    private func addCost(selectedCategory: Int, inputYen: String){
        var yen = Int(inputYen) ?? 0
        let newCost = Cost(category: selectedCategory, yen: yen, memo: inputMemo)
        modelContext.insert(newCost)
    }
}

#Preview {
    InputView()
}
