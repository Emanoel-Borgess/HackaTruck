//
//  modo1.swift
//  Desafio06Ex2
//
//  Created by Turma01-10 on 11/02/25.
//

import SwiftUI

struct modo1: View {
    var body: some View {
        ZStack{
            Color.modo1.ignoresSafeArea()
            VStack{
                Text("Modo 1")
                    .foregroundStyle(.white)
                ZStack{
                    Rectangle()
                        .foregroundColor(.pink)
                        .frame(width: 300, height: 200)
                    VStack{
                    Text("Nome: Emanoel")
                    Text("Sobrenome: Borges")
                }
                }
            }
        }
    }
}

#Preview {
    modo1()
}
