//
//  ContentView.swift
//  projeto_final01
//
//  Created by Turma01-8 on 26/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
                TabView {
                    Home()
                        .tabItem {
                            Image(systemName: "house")
                                Color(.black)
                        }
                    Chat()
                        .tabItem {
                            Image(systemName: "message")
                        }
                    Earth()
                        .tabItem {
                            Image(systemName: "globe.americas.fill")
                        }
                    Call()
                        .tabItem {
                            Image(systemName: "phone.circle.fill")
                        }
                    User()
                        .tabItem {
                            Image(systemName: "person.circle.fill")
                        }
                } // Fechamento do TabView
        } // Fechamento do VStack

    }
}

#Preview {
    ContentView()
}
