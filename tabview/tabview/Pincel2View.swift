//
//  Pincel2View.swift
//  tabview
//
//  Created by Turma01-24 on 02/04/24.
//

import SwiftUI

struct Pincel2View: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(maxWidth:250)
            
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .foregroundColor(Color.blue)
                .frame(maxWidth: 200, maxHeight: 200)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    Pincel2View()
}
