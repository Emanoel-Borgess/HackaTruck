//
//  planos_acessiveis.swift
//  projeto_final01
//
//  Created by Turma01-8 on 27/02/25.
//

import SwiftUI

struct planos_acessiveis: View {
    var body: some View {
        ZStack {
            Color.cinza.ignoresSafeArea()
            
            ZStack {
                VStack {
                    Text("Nossos planos de Apoio")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
    //                    .padding(.top)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(.azul)
                        
    //                    .edgesIgnoringSafeArea(.top)
                    VStack {
                        
                    }
                    .frame(height: 1)

                
                
                ScrollView {
                    VStack(spacing: 20) {
                        PlanoCard(titulo: "Plano UFU", preco: "R$ 20/mês", descricao: "Acesso facilitado para estudantes da UFU. Inclui 2 sessões mensais.")
                        
                        PlanoCard(titulo: "Plano Basic +", preco: "R$ 60/mês", descricao: "Ideal para quem busca acompanhamento regular. Inclui 4 sessões mensais e acesso a conteúdos exclusivos.")
                        
                        PlanoCard(titulo: "Plano Premium", preco: "R$ 100/mês", descricao: "Suporte completo para o seu bem-estar. Inclui 8 sessões mensais com profissionais renomados da área e acompanhamento personalizado.")
                    }
                    .padding()
                }
            }
                
            }
//            .padding()
        }
    }
}

struct PlanoCard: View {
    let titulo: String
    let preco: String
    let descricao: String
    var destaque: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(titulo)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(destaque ? .white : .azul)
                .padding(.bottom, 5)
            
            Text(preco)
                .font(.headline)
                .foregroundColor(destaque ? .white : .gray)
                .padding(.bottom, 10)
            
            Text(descricao)
                .foregroundColor(destaque ? .white : .black)
                .multilineTextAlignment(.leading)
            
            Spacer()
            
            Button(action: {
                // TODO: Implementar a lógica de assinatura do plano
                print("Assinar \(titulo)")
            }) {
                Text("Assinar")
                    .foregroundColor(.white)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 20)
                    .background(destaque ? Color.yellow : Color.azul)
                    .cornerRadius(8)
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .padding()
        .background(destaque ? Color.azul : Color.white)
        .cornerRadius(15)
        .shadow(radius: 3)
    }
}

#Preview{
    planos_acessiveis()
}
