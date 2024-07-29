//
//  ContentView.swift
//  SwiftOneHW
//
//  Created by Юрий Кузнецов on 22.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    
    var body: some View {
        ZStack(alignment: .top){
            VStack(spacing: 40) {
                HStack {
                    Button{
                        
                    } label: {
                        Image (.burger)
                            .resizable()
                            .frame(width: 37, height: 38)
                            .padding(.vertical, 3)
                            .background(.bazaWithe)
                    }
                    Spacer()
                    Button{
                            
                        } label: {
                            Image (.usertop)
                                .resizable()
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                                .padding(.vertical, 3)
                                .background(.bazaWithe)
                        }
                }
                .padding(.horizontal, 30)
                
                ScrollView(.vertical){
                    VStack (spacing: 56){
                        
                    VStack (alignment: .leading, spacing: 14){
                        Text ("Hello User")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.textUser)
                        Text ("Find your specialist")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.textUser)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                        VStack (spacing: 48){
                            HStack {
                                ZStack (alignment: .leading){
                                    TextField("search", text: $name)
                                        .frame(height: 60)
                                        .padding(.horizontal, 50)
                                        .background(.white)
                                    HStack {
                                        Image(systemName: "magnifyingglass")
                                            .padding(.leading, 19)
                                        
                                        Spacer()
                                        Button {
                                            
                                        } label: {
                                            Image(.sam)
                                                .renderingMode(.template)
                                                .resizable()
                                                .frame(width: 21, height: 21)
                                                .foregroundStyle(.bazaWithe)
                                            
                                        }
                                        .padding(10)
                                        .background(.tel)
                                        .clipShape(Circle())
                                    }
                                }
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 49))
                            }
                            
                            VStack(spacing: 40){
                                HStack{
                                    VStack {
                                        Image(.maps)
                                            .renderingMode(.template)
                                            .resizable()
                                            .frame(width: 42, height: 42)
                                            .foregroundStyle(.bazaWithe)
                                        Text("Place")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundColor(.bazaWithe)
                                    }
                                    .padding()
                                    .frame(width: 112, height: 112)
                                    .background(.maps)
                                    .clipShape(RoundedRectangle(cornerRadius: 22))
                                    Spacer()
                                    VStack {
                                        Image(.tel)
                                            .renderingMode(.template)
                                            .resizable()
                                            .frame(width: 42, height: 42)
                                            .foregroundStyle(.bazaWithe)
                                        Text("Phone")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundColor(.bazaWithe)
                                    }
                                    .padding()
                                    .frame(width: 112, height: 112)
                                    .background(.tel)
                                    .clipShape(RoundedRectangle(cornerRadius: 22))
                                    Spacer()
                                    VStack {
                                        Image(.user)
                                            .renderingMode(.template)
                                            .resizable()
                                            .frame(width: 42, height: 42)
                                            .foregroundStyle(.bazaWithe)
                                        Text("User")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundColor(.bazaWithe)
                                    }
                                    .padding()
                                    .frame(width: 112, height: 112)
                                    .background(.user)
                                    .clipShape(RoundedRectangle(cornerRadius: 22))
                                    
                                }
                                

                                HStack {
                                    Text ("Top Doctor")
                                        .font(.system(size: 25, weight: .bold))
                                    Spacer()
                                    Button{
                                            
                                        } label: {
                                            Text ("See all")
                                        }
                                        .font(.system(size: 14, weight: .regular))
                                        .foregroundColor(.tel)
                                    
                                }
                                
                                VStack (spacing: 14) {
                                    CardView()
                                    CardView()
                                    CardView()
                                }
                                
                            }
                        }
                        
                    }
                    .padding(.horizontal, 30)
                    
                    
                }
                .background(.bazaWithe)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: Alignment(horizontal: .leading, vertical: .top))
        .background(.bazaWithe)
    }
}
#Preview {
    ContentView()
}

//
