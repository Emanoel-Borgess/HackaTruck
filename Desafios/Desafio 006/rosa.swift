//
//  rosa1.swift
//  Desafio06
//
//  Created by Turma01-10 on 11/02/25.
//

import SwiftUI

struct rosa1: View {
    var body: some View {
        ZStack{
            Color.pink.edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush.fill")
                .resizable()
                .frame(width: 200, height: 200)
                

        }
    }
}

#Preview {
    rosa1()
}
