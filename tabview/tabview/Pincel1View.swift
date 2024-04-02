//
//  Pincel1View.swift
//  tabview
//
//  Created by Turma01-24 on 02/04/24.
//

import SwiftUI

struct Pincel1View: View {
    var body: some View {
        ZStack {
            Color.pink
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(maxWidth:250)
            
            Image(systemName: "paintbrush")
                .resizable()
                .foregroundColor(Color.pink)
                .frame(maxWidth: 200, maxHeight: 200)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    Pincel1View()
}
