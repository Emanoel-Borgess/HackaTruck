//
//  MinhaConta.swift
//  projeto_final01
//
//  Created by Turma01-8 on 13/03/25.
//

import SwiftUI

struct MinhaConta: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.cinza.edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Minha Conta")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)

                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .padding(.top, 1)
                        .background(.azul)
                    
                    VStack(spacing: 20) {
                        Image(.logoufu)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.azul)
                            .shadow(radius: 10)
                        
                        Text("Edilson Almeida")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.azul)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            InfoRow(icon: "phone", label: "Telefone", value: "(34) 99999-9999")
                            InfoRow(icon: "envelope", label: "Email", value: "fulano@email.com")
                            InfoRow(icon: "number", label: "ID UFU", value: "12345678")
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                        
                        Spacer()
                    }
                    .padding()
                }
            }

            .navigationBarTitleDisplayMode(.inline)
        }
        .accentColor(.azul)
    }
}

struct InfoRow: View {
    let icon: String
    let label: String
    let value: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.azul)
                .frame(width: 30)
            Text(label)
                .foregroundColor(.gray)
            Spacer()
            Text(value)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    MinhaConta()
}
