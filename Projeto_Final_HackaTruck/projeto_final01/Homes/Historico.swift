//
//  Historico.swift
//  projeto_final01
//
//  Created by Turma01-8 on 12/03/25.
//

import SwiftUI

struct Historico: View {
    var body: some View {
//        NavigationStack{
            ZStack {
                Color.cinza
                    .edgesIgnoringSafeArea(.top)
                VStack {
                    VStack {
                        HStack {
                            Text("Minhas sessões")
                                .font(.system(size: 30, weight: .bold))
                                .foregroundStyle(.white)
                                .padding(.top, 80)
                        } // Fechamento do HStack
                        .frame(maxWidth: .infinity, maxHeight: 130)
                        .background(.azul)
                        
                        
                        HStack {
                                Text("Proximas sessões")
                                    .foregroundStyle(.black)
                                    .frame(width: 200, height: 30)
                                    
                            
                            Text("Histórico")
                                .foregroundStyle(.azul)
                                
                                .frame(width: 200, height: 30)
                        } // Fechamento do HStack
                    }
                    
                    HStack {
                        VStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.azul)
                        }
                        .padding(.trailing, 30)
                        
                        VStack(alignment: .leading) {
                            Text("Caio Mendes")
                                .font(.headline)
                            
                            Text("Monte Carmelo")
                                .foregroundColor(.secondary)
                            
                            Text("Psicologia Social")
                                .foregroundColor(.secondary)
                            
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.secondary)
                                Text("Data: 01/02/2025")
                                    .foregroundColor(.secondary)
                            }
                            
                            HStack {
                                Image(systemName: "clock")
                                    .foregroundColor(.secondary)
                                Text("Hora: 10:00 AM")
                                    .foregroundColor(.secondary)
                            }
                            
                            Text("Preço: 100 reais")
                                .foregroundColor(.secondary)
                        }
                    }
                    .frame(width: 330, height: 130)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .cornerRadius(15)
//                    .shadow(radius: 2)

                    Spacer()
                    
                } // Fechamento do VStack
                .ignoresSafeArea()
            }
//        }
//        .accentColor(.white)
    }
}

#Preview {
    Historico()
}
