//
//  Modo1.swift
//  Navigator
//
//  Created by Turma01-24 on 02/04/24.
//

import SwiftUI

struct Modo1: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            VStack{
                Text("Modo 1")
                    .foregroundColor(.white)
                    .font(.title)
                Spacer()
                VStack{
                    Text("Nome: Thiago")
                    Text("Sobrenome: Pereira")
                }
                .padding(.all, 32.0)
                .background(.pink)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 10)
                
                Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    Modo1()
}
