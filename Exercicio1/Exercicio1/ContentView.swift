//
//  ContentView.swift
//  Exercicio1
//
//  Created by Turma01-24 on 01/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var massa: Float = 0.0
    @State private var altura: Float = 1.0
    @State private var calculo: String = ""
    @State private var color: Color = Color.baixoPeso
    var body: some View {
        VStack {
            Text("Calculadora de IMC")
                .font(.largeTitle)
                .foregroundStyle(.black)
            Spacer()
            TextField("Massa", value: $massa, formatter: NumberFormatter())
                .keyboardType(.numberPad)
                .padding(8.0)
                .background(Color.white)
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .padding()
            
            TextField("altura", value: $altura, formatter: NumberFormatter())
                .keyboardType(.numberPad)
                .padding(8.0)
                .background(Color.white)
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .padding()
            
            Button("Calcular") {
                let imc: Float = massa / pow(altura, 2)
                
                
                if (imc < 18.5){
                    calculo = "Baixo peso"
                    color = Color.baixoPeso
                }else if(imc < 24.99) {
                    calculo = "Normal"
                    color = Color.normal
                }else if(imc < 29.99){
                    calculo = "Sobrepeso"
                    color = Color.sobrepeso
                }else{
                    calculo = "Obesidade"
                    color = Color.obesidade
                }
                
//                calculo = massa
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 14.0/*@END_MENU_TOKEN@*/)
            .background(Color.blue)
            .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            .cornerRadius(10)
            .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Text(calculo)
                .foregroundStyle(.white)
                .font(.largeTitle)
            
            Spacer()
            
            Image("tabela-IMC")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
                
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(color)
        .animation(.easeInOut)
    }
}

#Preview {
    ContentView()
}
