//
//  DetailsView.swift
//  HarryPotter
//
//  Created by Turma01-24 on 05/04/24.
//

import SwiftUI

struct DetailsView: View {
    @State var character: HaPo? = nil
    
    var body: some View {
        VStack{
            Text(character?.name! ?? "Default")
        }
    }
}

#Preview {
    DetailsView()
}
