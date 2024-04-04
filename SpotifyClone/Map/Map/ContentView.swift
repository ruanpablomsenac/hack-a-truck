//
//  ContentView.swift
//  Map
//
//  Created by Turma01-26 on 04/04/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -14.2350, longitude:-51.9253),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    )
    @State private var locations: [Location] = [
        Location(name: "Brazil", coordinate: CLLocationCoordinate2D(latitude: -14.2350, longitude:-51.9253), flag: "https://upload.wikimedia.org/wikipedia/commons/0/05/Flag_of_Brazil.svg", description: "Banhado pelo Oceano Atlântico, o Brasil tem um litoral de 7 491 km[13] e faz fronteira com todos os outros países sul-americanos, exceto Chile e Equador, sendo limitado a norte pela Venezuela, Guiana, Suriname e pelo departamento ultramarino francês da Guiana Francesa; a noroeste pela Colômbia; a oeste pela Bolívia e Peru; a sudoeste pela Argentina e Paraguai e ao sul pelo Uruguai. Vários arquipélagos formam parte do território brasileiro, como o Atol das Rocas, o Arquipélago de São Pedro e São Paulo, Fernando de Noronha (o único destes habitado por civis) e Trindade e Martim Vaz.[13] O Brasil também é o lar de uma diversidade de animais selvagens, ecossistemas e de vastos recursos naturais em uma grande variedade de habitats protegidos.")
    ]
    
    @State private var localSelecionado: Location? = nil
     
    var body: some View {
        
        ZStack{
            Map(position: $position){
                ForEach(locations){ location in
                    Annotation(location.name, coordinate: location.coordinate) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                            Text("🎓")
                                .padding(5)
                        }.onTapGesture {
                            
                        }.sheet(item: $localSelecionado){loc in
                            DetalhesView(location: loc)
                        }
                    }
                }
                
            }
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
