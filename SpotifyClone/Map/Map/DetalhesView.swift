//
//  DetalhesView.swift
//  Map
//
//  Created by Turma01-26 on 04/04/24.
//

import SwiftUI

struct DetalhesView: View {
    @State public var location: Location? = nil
    var body: some View {
        Text(location?.name ?? /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DetalhesView()
}
