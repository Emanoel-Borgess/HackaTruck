//
//  ContentView.swift
//  Desafio03
//
//  Created by Turma01-10 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            VStack {
                Image(.perfil)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 130, height: 130)
            }
            VStack{
                HStack{
                    VStack{
                        Text("8")
                        Text("Posts")
                    }
                    VStack{
                        Text("12K")
                        Text("seguidores")
                    }
                    VStack{
                        Text("2K")
                        Text("Seguindo")
                    }
                }
                .padding(10)
                VStack{
                    Button("Editar Petfil"){}
                        .foregroundStyle(.black)
                        .buttonStyle(.bordered)
                        .cornerRadius(8)
                        .padding(1)
                }
            }
        }
        .padding(.top)
        HStack{
            VStack{
                Text("Emanoel Borges")
                    .font(.system(size: 20))
                Text("Sistemas de Informacão.")
                    .font(.system(size: 15))
            }
            .padding()
            Spacer()
        }
        Divider()
        HStack{
            HStack{
                Image(systemName: "square.grid.3x3.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding()
            Spacer()
            HStack{
                Image(systemName: "livephoto.play")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            Spacer()
            HStack{
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding()
        }
        Divider()
        Spacer()
        VStack{
            HStack{
                Rectangle()
                    .frame(width: 130, height: 150)
                Rectangle()
                    .frame(width: 130, height: 150)
                Rectangle()
                    .frame(width: 130, height: 150)
            }
            HStack{
                Rectangle()
                    .frame(width: 130, height: 150)
                Rectangle()
                    .frame(width: 130, height: 150)
                Rectangle()
                    .frame(width: 130, height: 150)
            }
            HStack{
                Rectangle()
                    .frame(width: 130, height: 150)
                Rectangle()
                    .frame(width: 130, height: 150)
                Rectangle()
                    .frame(width: 130, height: 150)
            }
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
