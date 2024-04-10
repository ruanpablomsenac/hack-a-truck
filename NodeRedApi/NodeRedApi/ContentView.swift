//
//  ContentView.swift
//  NodeRedApi
//
//  Created by Turma01-24 on 10/04/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var estacionamentosViewModel = EstacionamentoViewModel()
    
    var body: some View {
        VStack {
            Text(estacionamentosViewModel.estacionamentos?.first!.nomeEstacionamento! ?? "Default")
        }
        .padding()
        .onAppear(){
            estacionamentosViewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
