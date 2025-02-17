//
//  cinza.swift
//  Desafio06
//
//  Created by Turma01-10 on 11/02/25.
//

import SwiftUI

struct cinza: View {
    var body: some View {
        ZStack{
            Color.gray.edgesIgnoringSafeArea(.top)
            Image(systemName: "paintpalette.fill")
                .resizable()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    cinza()
}
