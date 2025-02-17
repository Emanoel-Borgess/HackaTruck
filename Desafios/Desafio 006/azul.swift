//
//  azul.swift
//  Desafio06
//
//  Created by Turma01-10 on 11/02/25.
//

import SwiftUI

struct azul: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush.pointed.fill")
                .resizable()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    azul()
}
