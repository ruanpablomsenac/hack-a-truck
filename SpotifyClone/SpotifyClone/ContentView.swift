//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Turma01-24 on 03/04/24.
//

import SwiftUI

struct ContentView: View {
    @State var songs: [Song] = [
        Song(id: 1, name: "Wated Years", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/pt/9/9b/Iron_Maiden_-_Somewhere_in_Time.jpg"),
        Song(id: 2, name: "Fear of the dark", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/pt/6/64/Fear_of_the_dark_-_iron_maiden.jpg"),
        Song(id: 3, name: "The Trooper", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/pt/f/f7/Trooper.jpg"),
        Song(id: 4, name: "The Number of the beast", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/pt/1/1f/Iron_Maiden_-_The_Number_Of_The_Beast.jpg"),
        Song(id: 5, name: "Two Minutes to midnight", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/en/6/68/Iron_maiden_2_minutes_to_midnight_a.jpg"),
        Song(id: 6, name: "Wated Years", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/pt/9/9b/Iron_Maiden_-_Somewhere_in_Time.jpg"),
        Song(id: 7, name: "Wated Years", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/pt/9/9b/Iron_Maiden_-_Somewhere_in_Time.jpg"),
        Song(id: 8, name: "Wated Years", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/pt/9/9b/Iron_Maiden_-_Somewhere_in_Time.jpg"),
        Song(id: 9, name: "Wated Years", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/pt/9/9b/Iron_Maiden_-_Somewhere_in_Time.jpg"),
        Song(id: 10, name: "Wated Years", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/pt/9/9b/Iron_Maiden_-_Somewhere_in_Time.jpg"),
        
    ]
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(
                    gradient: Gradient(colors: [.blue, .black]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/pt/9/9b/Iron_Maiden_-_Somewhere_in_Time.jpg")){ result in
                            
                            result.image?
                                .resizable()
                                .frame(width:250, height:250)
                        }
                        
                        HStack{
                            Text("IronFM")
                                .foregroundColor(.white)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            Spacer()
                        }.padding(.horizontal)
                        HStack{
                            AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/pt/9/9b/Iron_Maiden_-_Somewhere_in_Time.jpg")){ result in
                                
                                result.image?
                                    .resizable()
                                    .frame(width:35, height:35)
                            }
                            Text("IronSong")
                                .foregroundColor(.white)
                                .font(.title2)
                            Spacer()
                            
                        }.padding(.horizontal)
                        
                        ForEach(songs){ song in
                            NavigationLink(destination: SongView(song: song)){
                                HStack{
                                    AsyncImage(url: URL(string: song.capa)){ result in
                                        
                                        result.image?
                                            .resizable()
                                            .frame(width:50, height:50)
                                    }
                                    
                                    VStack(alignment: .leading){
                                        Text(song.name)
                                            .foregroundStyle(.white)
                                            .font(.title2)
                                        Text(song.artist)
                                            .multilineTextAlignment(.leading)
                                            .foregroundStyle(.white)
                                            .font(.title3)
                                    }
                                    
                                    
                                    Spacer()
                                    
                                    Image(systemName: "ellipsis")
                                        .foregroundStyle(.white)
                                    
                                }
                                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                            }
                        }
                        
                        HStack{
                            Text("Sugeridos")
                                .font(.title)
                                .foregroundStyle(.white)
                            Spacer()
                        }
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(songs[..<5]){ song in
                                    VStack{
                                        AsyncImage(url: URL(string: song.capa)){ result in
                                            
                                            result.image?
                                                .resizable()
                                                .frame(width:200, height:200)
                                        }
                                        Text(song.name)
                                            .foregroundStyle(.white)
                                    }
                                }
                            }
                        }
                        
                        
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                }
            }.frame(maxWidth: .infinity)
        }.accentColor(.white)
    }
}

#Preview {
    ContentView()
}
