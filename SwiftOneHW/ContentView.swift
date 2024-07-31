//
//  ContentView.swift
//  SwiftOneHW
//
//  Created by Юрий Кузнецов on 31.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        ZStack (alignment: .top){
            VStack (spacing: 63) {
                HStack {
                    HStack (spacing: 45){
                        Button(action: {}, label: {
                            Image (.backBTN)
                                .resizable()
                                .frame(width: 33, height: 33)
                        })
                        VStack (alignment: .leading) {
                            Text("16 декабря")
                                .font(.system(size: 30, weight: .bold))
                            Text("2023 год")
                                .font(.system(size: 14, weight: .light))
                        }
                        .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image (.burgerBTN)
                            .resizable()
                            .frame(width: 25, height: 25)
                    })
                }
                .padding()
                .zIndex(1)
                ScrollView (.vertical, showsIndicators: false) {
                    VStack (spacing: 32) {
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 30) {
                                Image (.foyoOne)
                                    .resizable()
                                    .frame(width: 282, height: 518)
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                Image (.fotoTwo)
                                    .resizable()
                                    .frame(width: 282, height: 518)
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                            }
                            .padding(.leading, 30)
                        }
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 13) {
                                textFor (text: "Природа")
                                textFor (text: "Природа")
                                textFor (text: "Природа")
                                textFor (text: "Природа")
                            }
                            .padding(.leading, 30)
                        }
                    }
                    VStack (spacing: 31){
                        VStack {
                            VStack (spacing: 14) {
                                VStack (spacing: 40) {
                                    Text ("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit")
                                        .padding(25)
                                        .foregroundColor(.white)
                                        .background(.fonText)
                                        .clipShape(RoundedRectangle(cornerRadius: 30))
                                    VStack (alignment: .leading, spacing: 7) {
                                        Text ("16.12.23")
                                        Text ("Ut enim ad minim veniam, quis nostrud exercit ation ullamco laboris nisi")
                                    }
                                    .padding(25)
                                    .foregroundColor(.white)
                                    .background(.fonText)
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                }
                                VStack (alignment: .leading, spacing: 7) {
                                    Text ("16.12.23")
                                    Text ("Ut enim ad minim veniam, quis nostrud exercit ation ullamco laboris nisi")
                                }
                                .padding(25)
                                .foregroundColor(.white)
                                .background(.fonText)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                            }
                        }
                        .padding(.horizontal, 30)
                        HStack {
                            TextField ("Добавить комментарий", text: $name)
                                .padding(.vertical, 15)
                                .padding(.leading, 25)
                                .foregroundColor(.fild)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                        }
                        .padding(30)
                    }
                }
            }
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: Alignment(horizontal: .leading, vertical: .top))
        .background(.bg)
            }
    struct textFor: View {
        var text: String
        var body: some View {
            Text(text)
                .font(.system(size: 16, weight: .regular))
                .padding(.horizontal, 22)
                .padding(.vertical, 8)
                .foregroundColor(.white)
                .background(.fonScrText)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}
#Preview {
    ContentView()
}
