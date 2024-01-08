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
            // カテゴリ選択
            VStack {
                HStack {
                    // 食費
                    Button(action: {
                        setCategory()
                    }, label: {
                        Text("食費")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 日用品
                    Button(action: {
                        setCategory()
                    }, label: {
                        Text("日用品")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 光熱費
                    Button(action: {
                        setCategory()
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
                        setCategory()
                    }, label: {
                        Text("交際費")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 美容
                    Button(action: {
                        setCategory()
                    }, label: {
                        Text("美容")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 特別費
                    Button(action: {
                        setCategory()
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
                        setCategory()
                    }, label: {
                        Text("家賃")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 通信費
                    Button(action: {
                        setCategory()
                    }, label: {
                        Text("通信費")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 娯楽
                    Button(action: {
                        setCategory()
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
                        setCategory()
                    }, label: {
                        Text("医療")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 衣料・雑貨
                    Button(action: {
                        setCategory()
                    }, label: {
                        Text("衣料・雑貨")
                    })
                    .foregroundColor(Color.white)
                    .cornerRadius(12.0)
                    .buttonStyle(CategoryButtonStyle())
                    // 旅費
                    Button(action: {
                        setCategory()
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
                    setCategory()
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
                        addCost()
                    }, label: {
                        Text("7")
                    })
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost()
                    }, label: {
                        Text("8")
                    })
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost()
                    }, label: {
                        Text("9")
                    })
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    // 金額をクリア
                    Button(action: {
                        addCost()
                    }, label: {
                        Image(systemName: "clear.fill")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                }
                
                HStack(spacing:0) {
                    Button(action: {
                        addCost()
                    }, label: {
                        Text("4")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost()
                    }, label: {
                        Text("5")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost()
                    }, label: {
                        Text("6")
                    })
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    // 日付設定
                    Button(action: {
                        addCost()
                    }, label: {
                        Image(systemName: "calendar")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                }
                
                HStack(spacing:0) {
                    Button(action: {
                        addCost()
                    }, label: {
                        Text("1")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost()
                    }, label: {
                        Text("2")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost()
                    }, label: {
                        Text("3")
                    })
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost()
                    }, label: {
                        Text("入")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                }
                
                HStack(spacing:0) {
                    Button(action: {
                        addCost()
                    }, label: {
                        Text("0")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost()
                    }, label: {
                        Text("00")
                    })
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonStyle(NumberButtonStyle())
                    // メモ入力
                    Button(action: {
                        addCost()
                    }, label: {
                        Image(systemName: "square.and.pencil")
                    })
                    .border(Color.gray, width: 1)
                    .buttonStyle(NumberButtonStyle())
                    Button(action: {
                        addCost()
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
