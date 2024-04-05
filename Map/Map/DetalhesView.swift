//
//  DetalhesView.swift
//  Map
//
//  Created by Turma01-26 on 04/04/24.
//

import SwiftUI
import MapKit

struct DetalhesView: View {
    @State public var location: Location? = nil
    
    var body: some View {
        VStack{
            Text(location?.name ?? "Title")
                .font(.largeTitle)
                .fontWeight(.bold)
            AsyncImage(url: URL(string:location?.flag ?? "")){ result in
                
                result.image?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
            Text(location?.description ?? "")
                .padding()
            Spacer()
        }
    }
}

#Preview {
    DetalhesView()
}
