//
//  CardView.swift
//  SwiftOneHW
//
//  Created by Юрий Кузнецов on 29.07.2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack (spacing: 4){
            HStack (alignment: .top, spacing: 21){
                Image (.usercont)
                    .resizable()
                    .frame(width: 82, height: 82)
                    .clipShape(RoundedRectangle(cornerRadius: 31))
                VStack (alignment: .leading, spacing: 4){
                    Text ("User Name")
                        .font(.system(size: 20, weight: .bold))
                    Text ("Lorem ipsum dolor sit amet")
                        .font(.system(size: 14,weight: .bold))
                        .foregroundColor(.userGray)
                    VStack (alignment: .leading, spacing: 15) {
                        HStack (spacing: 9){
                            Image (systemName: "clock.arrow.2.circlepath")
                                .frame(width: 19, height: 19)
                                .foregroundStyle(.tel)
                            Text ("10.40 am - 2.40 pm")
                                .font(.system(size: 14,weight: .regular))
                                .foregroundColor(.userGray)
                        }
                    HStack {
                        Text ("$10.50")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.userGray)
                        Spacer()
                        Button {
                            
                        } label: {
                            Text ("Appointment")
                                .foregroundStyle(.bazaWithe)
                        }
                        .padding(.vertical, 4)
                        .padding(.horizontal, 20)
                        .background(.tel)
                        .clipShape(RoundedRectangle(cornerRadius: 17))
                     }
                    }
                    
               }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding(.leading, 10)
            .padding(.vertical, 16)
            .background(.white)
        }
        
    }
}

#Preview {
    CardView()
}
