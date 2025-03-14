//
//  MeusPlanos.swift
//  projeto_final01
//
//  Created by Turma01-8 on 12/03/25.
//

import SwiftUI

struct MeusPlanos: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.cinza.edgesIgnoringSafeArea(.all)
                
                
                
                VStack {
                    Text("Meus Planos")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 30)
                        .background(.azul)
                    
                    VStack(spacing: 20){
                        Text("Plano Atual")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.azul)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Plano UFU")
                                .font(.system(size: 22, weight: .semibold))
                                .foregroundColor(.azul)
                            
                            HStack {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.green)
                                Text("Ativo")
                                    .foregroundColor(.green)
                            }
                            
                            Text("Benefícios:")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(.black)
                            
                            BenefitRow(text: "2 sessões mensais")
                            BenefitRow(text: "Acesso a todos os conteúdos")
                            BenefitRow(text: "Suporte 24/7")
                            
                            Button(action: {
                                // Ação para gerenciar plano
                            }) {
                                Text("Gerenciar Plano")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.azul)
                                    .cornerRadius(10)
                            }
                        }
                        .padding()
                    
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                }
                    .padding()
                    
                    Spacer()
                }

            }

            .navigationBarTitleDisplayMode(.inline)
        }
        .accentColor(.azul)
    }
}

struct BenefitRow: View {
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text(text)
                .foregroundColor(.black)
        }
    }
}


#Preview {
    MeusPlanos()
}
