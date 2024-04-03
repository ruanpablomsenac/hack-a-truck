//
//  SongView.swift
//  SpotifyClone
//
//  Created by Turma01-24 on 03/04/24.
//

import SwiftUI

struct SongView: View {
    @State var song: Song = Song(id: 11, name: "Wated Years", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/pt/9/9b/Iron_Maiden_-_Somewhere_in_Time.jpg")
    
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.blue, .black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack{
                Spacer()
                AsyncImage(url: URL(string: song.capa)){ result in
                    
                    result.image?
                        .resizable()
                        .frame(width:250, height:250)
                }
                
                Text(song.name)
                    .font(.title)
                Text(song.artist)
                    .font(.title3)
                Spacer()
                HStack(spacing: 40){
                    Image(systemName: "shuffle")
                        .resizable()
                        .frame(width:30, height:30)
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width:30, height:30)
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width:50, height:50)
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width:30, height:30)
                    Image(systemName: "repeat")
                        .resizable()
                        .frame(width:30, height:30)
                }
                Spacer()
                    
            }.foregroundStyle(.white)
        }
    }
}

#Preview {
    SongView()
}
