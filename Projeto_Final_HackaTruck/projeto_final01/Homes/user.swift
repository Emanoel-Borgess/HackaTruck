//
//  User.swift
//  projeto_final01
//
//  Created by Turma01-8 on 26/02/25.
//

import SwiftUI

struct Chat: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white
                    
                VStack {
                    
                    VStack {
                        VStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.black)
                            Text("Olá, user!")
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                                .padding(.top, 10)

                            
                        } // Fechamento do HStack
                        
                    } // Fechamento do VStack
                    .frame(maxWidth: .infinity, maxHeight: 350)
                    .background(.laranja)
                    .cornerRadius(30.0)
                    .ignoresSafeArea()
                    
                    HStack {
                        VStack {
                            List {
                                UserMenuItem(icon: "person.fill", title: "Minha Conta", destination: Home())
                                UserMenuItem(icon: "calendar", title: "Minhas Sessões", destination: Home())
                                UserMenuItem(icon: "doc.text.fill", title: "Meus Planos", destination: Home())
                                UserMenuItem(icon: "leaf.fill", title: "Planos de cuidados", destination: Home())
                                UserMenuItem(icon: "heart.fill", title: "Meus Favoritos", destination: Home())
                            }
                            .listStyle(PlainListStyle())
                            .frame(maxWidth: .infinity, maxHeight: 450)
                            .scrollContentBackground(.hidden)
                        }
                    }
                } // Fechamento do VStack
                
            }// Fechamento do ZStack
            
        }// Fechamento do NavigationStack
    }
}

#Preview {
    Chat()
}


