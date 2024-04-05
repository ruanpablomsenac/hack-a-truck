//
//  ContentView.swift
//  HarryPotter
//
//  Created by Turma01-24 on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.bordo
                VStack {
                    AsyncImage(url: URL(string: "https://tm.ibxk.com.br/2021/05/02/02163114056022.jpg?ims=704x264")){result in
                        
                        result.image?
                            .resizable()
                            .frame(height: 200)
                    }
                    ScrollView{
                        VStack{
                            ForEach(viewModel.chars){ index in
                                
                                NavigationLink(destination: DetailsView(character: index)){
                                    HStack{
                                        AsyncImage(url: URL(string: index.image!)){result in
                                            
                                            result.image?.resizable()
                                                .scaledToFill()
                                            
                                        }
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .frame(width:100, height: 100)
                                        Text(index.name!)
                                            .foregroundStyle(.white)
                                            .font(.title2)
                                        Spacer()
                                    }
                                    .padding(.horizontal)}
                            }
                        }
                    }
                    
                }.ignoresSafeArea()
            }
            
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
