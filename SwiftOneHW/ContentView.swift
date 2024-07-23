//
//  ContentView.swift
//  SwiftOneHW
//
//  Created by Юрий Кузнецов on 22.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 46) {
            VStack(spacing: 16) {
                Image("im1")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 249)
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                HStack() {
                    imgTry(imgName: "im2")
                    Spacer()
                    imgTry(imgName: "im3")
                    Spacer()
                    imgTry(imgName: "im4")
                }
                VStack(alignment: .leading, spacing: 20){
                    HStack(){
                        Image("im5")
                            .resizable()
                            .frame(width: 27, height: 27)
                        textTwo (text: "User Name")
                        Spacer()
                    HStack(){
                        Image("im6")
                                .resizable()
                                .frame(width: 27, height: 27)
                            textTwo(text: "25")
                        }
                    }
                    VStack(alignment: .leading, spacing: 6) {
                        Text("About")
                            .font(.system(size: 13, weight: .medium))
                            .foregroundColor(.gray)
                        Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod")
                            .font(.system(size: 16, weight: .medium))
                        
                    }
                    Spacer()
                    Button(action: {}, label:{
                        Text("Настроить профиль")
                            .frame(height: 60)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    })
                }
            }
            .padding(.horizontal, 30)
        }
    }
    struct textTwo: View {
        var text: String
        var body: some View {
            Text(text)
                .fontWeight(.bold)
                .font(.system(size: 20, weight: .bold))
        }
    }
    
    struct imgTry: View {
        var imgName: String
        var body: some View {
            Image(imgName)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}
#Preview {
    ContentView()
}
