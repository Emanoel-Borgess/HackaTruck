//
//  ContentView.swift
//  Desafio04
//
//  Created by Turma01-10 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image(.foto1)
                .resizable()
                .frame(width: 900, height: 900)
            Color.white.opacity(0.7)
            VStack{
                Text("Bem Vindo!")
                    .font(
                        .largeTitle
                        .weight(.bold)
                    )
                    .foregroundColor(.pink)
            Image(.logo)
                .resizable()
                .frame(width: 300, height: 200)
                Image(.truck)
                    .resizable()
                    .frame(width: 200, height: 100)
            }
        }
    }
}

#Preview {
    ContentView()
}
