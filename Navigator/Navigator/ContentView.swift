//
//  ContentView.swift
//  Navigator
//
//  Created by Turma01-24 on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                VStack{
                    NavigationLink(destination: Modo1()){
                        Text("Modo 1")
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width:200, height: 50)
                    }
                    .background(Color.pink)
                    
                    NavigationLink(destination: Modo2()){
                        Text("Modo 2")
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width:200, height: 50)
                    }
                    .background(Color.pink)
                }
            }
            
        }.accentColor(.white)
    }
}

#Preview {
    ContentView()
}
