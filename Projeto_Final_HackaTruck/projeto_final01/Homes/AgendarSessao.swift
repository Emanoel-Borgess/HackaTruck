//
//  AgendarSessao.swift
//  projeto_final01
//
//  Created by Turma01-8 on 27/02/25.
//

import SwiftUI

struct AgendarSessao: View {
    var body: some View {
        VStack {
            HStack{
                Text("Sessões")
                    .font(.title)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .background(.azul)
                    .cornerRadius(20)
            } // Fechamento do HStack
            
            Spacer()
            
        } // Fechamento do VStack
        .ignoresSafeArea()
    }
}

#Preview {
    AgendarSessao()
}
