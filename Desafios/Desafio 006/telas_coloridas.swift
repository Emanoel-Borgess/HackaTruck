//
//  ContentView.swift
//  Desafio06
//
//  Created by Turma01-10 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            rosa1()
                .tabItem {
                    Image(systemName: "paintbrush.fill")
                    Text("Rosa")
                }
            azul()
                .tabItem {
                    Image(systemName:"paintbrush.pointed.fill")
                    Text("Azul")
                }
            cinza()
                .tabItem {
                    Image(systemName: "paintpalette.fill")
                    Text("Cinza")
                }
            lista()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Lista")
                }
        }
    }
}

#Preview {
    ContentView()
}
