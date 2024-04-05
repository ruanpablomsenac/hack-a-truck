//
//  ContentView.swift
//  Map
//
//  Created by Turma01-26 on 04/04/24.
//

import SwiftUI
import MapKit

let locations = [
    Location(name: "Brazil", coordinate: CLLocationCoordinate2D(latitude: -14.2350, longitude:-51.9253), flag: "https://www.gov.br/planalto/pt-br/conheca-a-presidencia/acervo/simbolos-nacionais/bandeira/bandeira-nacional-brasil.jpg", description: "Banhado pelo Oceano Atlântico, o Brasil tem um litoral de 7 491 km[13] e faz fronteira com todos os outros países sul-americanos, exceto Chile e Equador, sendo limitado a norte pela Venezuela, Guiana, Suriname e pelo departamento ultramarino francês da Guiana Francesa; a noroeste pela Colômbia; a oeste pela Bolívia e Peru; a sudoeste pela Argentina e Paraguai e ao sul pelo Uruguai. Vários arquipélagos formam parte do território brasileiro, como o Atol das Rocas, o Arquipélago de São Pedro e São Paulo, Fernando de Noronha (o único destes habitado por civis) e Trindade e Martim Vaz.[13] O Brasil também é o lar de uma diversidade de animais selvagens, ecossistemas e de vastos recursos naturais em uma grande variedade de habitats protegidos."),
    Location(name: "United States Of America", coordinate: CLLocationCoordinate2D(latitude: -14.2350, longitude:-51.9253), flag: "https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_the_United_States_%281795-1818%29.jpg", description: "Banhado pelo Oceano Atlântico, o Brasil tem um litoral de 7 491 km[13] e faz fronteira com todos os outros países sul-americanos, exceto Chile e Equador, sendo limitado a norte pela Venezuela, Guiana, Suriname e pelo departamento ultramarino francês da Guiana Francesa; a noroeste pela Colômbia; a oeste pela Bolívia e Peru; a sudoeste pela Argentina e Paraguai e ao sul pelo Uruguai. Vários arquipélagos formam parte do território brasileiro, como o Atol das Rocas, o Arquipélago de São Pedro e São Paulo, Fernando de Noronha (o único destes habitado por civis) e Trindade e Martim Vaz.[13] O Brasil também é o lar de uma diversidade de animais selvagens, ecossistemas e de vastos recursos naturais em uma grande variedade de habitats protegidos."),
    Location(name: "Brazil", coordinate: CLLocationCoordinate2D(latitude: -14.2350, longitude:-51.9253), flag: "https://www.gov.br/planalto/pt-br/conheca-a-presidencia/acervo/simbolos-nacionais/bandeira/bandeira-nacional-brasil.jpg", description: "Banhado pelo Oceano Atlântico, o Brasil tem um litoral de 7 491 km[13] e faz fronteira com todos os outros países sul-americanos, exceto Chile e Equador, sendo limitado a norte pela Venezuela, Guiana, Suriname e pelo departamento ultramarino francês da Guiana Francesa; a noroeste pela Colômbia; a oeste pela Bolívia e Peru; a sudoeste pela Argentina e Paraguai e ao sul pelo Uruguai. Vários arquipélagos formam parte do território brasileiro, como o Atol das Rocas, o Arquipélago de São Pedro e São Paulo, Fernando de Noronha (o único destes habitado por civis) e Trindade e Martim Vaz.[13] O Brasil também é o lar de uma diversidade de animais selvagens, ecossistemas e de vastos recursos naturais em uma grande variedade de habitats protegidos.")
]

struct ContentView: View {
    @State private var selectedLocation = locations.first
    
    @State private var position = MapCameraPosition.region(
                    MKCoordinateRegion(
                        center: locations.first!.coordinate,
                        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
                    )
                )
    
    
    @State private var detailsLocation: Location? = nil
    
    
     
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
                            detailsLocation = location
                        }.sheet(item: $detailsLocation){loc in
                            DetalhesView(location: loc)
                        }
                    }
                }
                
            }
            .ignoresSafeArea()
            VStack{
                ZStack{
                    Rectangle()
                        .frame(height:150)
                        .opacity(0.6)
                        .foregroundColor(.white)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    VStack{
                        Text("World Map")
                            .font(.title)
                            .fontWeight(.bold)
                            .shadow(radius:10)
                        Text(selectedLocation?.name ?? "Teste")
                            .font(.title3)
                            .fontWeight(.bold)
                            .shadow(radius:10)
                    }
                    
                        
                }
                Spacer()
                HStack{
                    ForEach(locations){ location in
                        AsyncImage(url: URL(string:location.flag)){ result in
                            
                            result.image?
                                .resizable()
                                .padding()
                        }
                        .onTapGesture {
                            selectedLocation = location
                        }
                    }
                }.padding(.bottom, 40.0)
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
