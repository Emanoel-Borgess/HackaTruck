//
//  Agendamento.swift
//  projeto_final01
//
//  Created by Turma01-8 on 10/03/25.
//

import SwiftUI

/////////////////

struct GhostButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 100, height: 3)
            .padding()
            .foregroundStyle(.azul)
            .background(
                RoundedRectangle(
                    cornerRadius: 20,
                    style: .continuous
                
                )
                .stroke(.azul, lineWidth: 3)
            )
    }
}

extension ButtonStyle where Self == GhostButtonStyle {
    static var ghost: Self {
        return .init()
    }
}

///////////////////////

struct Agendamento: View {
    var psicologo : Psicologos
    @State var agen : Bool = false
    
    var body: some View {
        ZStack {
            Color.cinza
                .edgesIgnoringSafeArea(.top)
            VStack {
                Text("Agendamento")
                    .font(.system(size: 30))
                    .frame(maxWidth: .infinity, maxHeight: 70)
                    .background(.azul)
                    .foregroundStyle(.white)
                Spacer()
                VStack{
                    AsyncImage(url: URL(string: psicologo.foto)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                    } placeholder: {
                        Color.gray
                    }
                    .frame(width: 100, height: 100)
                    .padding()
                    VStack(alignment: .leading){
                        Text(psicologo.nome)
                            .font(.system(size:22))
                        Text(psicologo.cidade)
                        Text(psicologo.especialidade)
                        Text(psicologo.preco)
                    }
                    
                    Text("Escolha um horário da sessão")
                        .foregroundStyle(.azul)
                    
                    HStack {
                        VStack {
                            Button(" 9:00"){
                                agen = true
                            }
                            .buttonStyle(.ghost)
                            .sheet(isPresented: $agen, content: {
                                Agendado()
                            })
                            
                            Button("10:00"){
                                agen = true
                                
                            }
                            .buttonStyle(.ghost)
                            .sheet(isPresented: $agen, content: {
                                Agendado()
                            })
                        }
                        
                        VStack{
                            Button("13:00"){
                                agen = true
                                
                            }
                            .buttonStyle(.ghost)
                            .sheet(isPresented: $agen, content: {
                                Agendado()
                            })
                            
                            Button("15:00"){
                                agen = true
                                
                            }
                            .buttonStyle(.ghost)
                            .sheet(isPresented: $agen, content: {
                                Agendado()
                            })
                        }
                    }
                    
                } // Fechamento do VStack
                .frame(width: 350, height: 550)
                .background(.white)
                .cornerRadius(15)
                
                Spacer()
                
            } // Fechamento do VStack
        } // Fechamento do ZStack
    }
}

#Preview {
    Agendamento(psicologo: Psicologos(nome: "teste", cidade: "teste", endereco: "teste", modalidade: "teste", especialidade: "teste", experiencia: "", horarioAtendimento: "", contato: "", foto: "teste", preco: ""))
}

