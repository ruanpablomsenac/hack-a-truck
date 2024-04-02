//
//  ContentView.swift
//  tabview
//
//  Created by Turma01-24 on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            Pincel1View()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            Pincel2View()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            PaletaView()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            ListView()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
