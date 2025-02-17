//
//  lista.swift
//  Desafio06
//
//  Created by Turma01-10 on 11/02/25.
//

import SwiftUI

struct lista: View {
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.top)
                .frame(width: 200, height: 200)
            List {
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette.fill")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed.fill")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.fill")
                }
            }
        }
    }
}

#Preview {
    lista()
}
