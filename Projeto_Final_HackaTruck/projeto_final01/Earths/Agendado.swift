//
//  Agendado.swift
//  projeto_final01
//
//  Created by Turma01-8 on 13/03/25.
//

import SwiftUI

struct Agendado: View {
    var body: some View {
        ZStack {
            Color.azul
                .edgesIgnoringSafeArea(.top)
            Text("Sessão agendada")
                .font(.system(size: 30, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    Agendado()
}
