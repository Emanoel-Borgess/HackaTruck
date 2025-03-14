//
//  Sessoes.swift
//  projeto_final01
//
//  Created by Turma01-8 on 27/02/25.
//

import SwiftUI

struct Sessoes: View {
    @State var hist: Bool = false
    @State var hasAgendamento: Bool = true // Flag para indicar se há agendamento
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.cinza
                VStack {
                    VStack {
                        HStack {
                            Text("Minhas sessões")
                                .font(.system(size: 30, weight: .bold))
                                .foregroundStyle(.white)
                                .padding(.top, 80)
                        } // Fechamento do HStack
                        .frame(maxWidth: .infinity, maxHeight: 135)
                        .background(.azul)
                        
                        HStack {
                            Text("Próximas sessões")
                                .foregroundStyle(.azul)
                                .frame(width: 200, height: 30)
                            
                            
                            HStack{
                                Text("Histórico")
                                    .foregroundStyle(.black)
                                
                                    .frame(width: 200, height: 30)
                            }
                            .onTapGesture {
                                hist = true
                            }
                            .sheet(isPresented: $hist, content: {
                                Historico()
                            })
                        } // Fechamento do HStack
                        
                    } // Fechamento do VStack
                    
                   
                    HStack {
                        VStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.azul)
                        }
                        .padding(.trailing, 30)
                        
                        VStack(alignment: .leading) {
                            Text("Camila Dias")
                                .font(.headline)
                            
                            Text("Uberlândia")
                                .foregroundColor(.secondary)
                            
                            Text("Psicologia Forense")
                                .foregroundColor(.secondary)
                            
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.secondary)
                                Text("Data: 15/03/2025")
                                    .foregroundColor(.secondary)
                            }
                            
                            HStack {
                                Image(systemName: "clock")
                                    .foregroundColor(.secondary)
                                Text("Hora: 10:00 AM")
                                    .foregroundColor(.secondary)
                            }
                            
                            Text("Preço: Gratis")
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
            } // Fechamento do ZStack
        }
        .accentColor(.white)
    }
}

struct Sessoes_Previews: PreviewProvider {
    static var previews: some View {
        Sessoes()
    }
}
