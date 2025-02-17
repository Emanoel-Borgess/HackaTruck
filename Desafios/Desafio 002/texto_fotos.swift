//
//  ContentView.swift
//  Desafio02
//
//  Created by Turma01-10 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Image("ufu2")
            .resizable()
            .clipShape(Circle())
            .frame(width: 150, height: 150)
            Spacer()
            VStack{
                Text("Olá! Eu sou o Emanoel")
                    .foregroundStyle(.blue)
                Text("Este é o desafio 02")
                    .foregroundStyle(.red)
                Text("HackaTruck")
                    .foregroundStyle(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
