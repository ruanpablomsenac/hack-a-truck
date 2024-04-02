//
//  PaletaView.swift
//  tabview
//
//  Created by Turma01-24 on 02/04/24.
//

import SwiftUI

struct PaletaView: View {
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(maxWidth:250)
            
            Image(systemName: "paintpalette")
                .resizable()
                .foregroundColor(Color.gray)
                .frame(maxWidth: 200, maxHeight: 200)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    PaletaView()
}
