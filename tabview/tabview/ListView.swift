//
//  ListView.swift
//  tabview
//
//  Created by Turma01-24 on 02/04/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: Pincel1View()){
                    HStack{
                        Text("Item 1")
                        Spacer()
                        Image(systemName: "paintbrush")
                    }
                }
                
                HStack{
                    Text("Item 2")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack{
                    Text("Item 3")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            }
            .navigationBarTitle("List")
        }
    }
}

#Preview {
    ListView()
}
