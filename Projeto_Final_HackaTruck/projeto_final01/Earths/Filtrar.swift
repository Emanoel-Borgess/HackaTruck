//
//  Filtrar.swift
//  projeto_final01
//
//  Created by Turma01-8 on 10/03/25.
//

import SwiftUI

struct Filtrar: View {
    let contacts = [
        20,
        150,
        200
    ]
    
    @State private var selection: Int?
    @Environment(\.dismiss) var dismiss
    @StateObject var vm: SosUfuPsicologos
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.cinza// Background color
                
                VStack {
                    HStack {
                        Text("Filtro")
                            .foregroundStyle(.white)
                            .font(.title)
                            .fontWeight(.medium)
                            .padding(.top, 0)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 70)
                    .background(Color.azul)
                    .cornerRadius(30.0)
                    //.ignoresSafeArea()
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Faixa de Preços")
                            .font(.title)
                            .padding(.top,0)
                            .padding(.horizontal)
                            .foregroundColor(.azul)
            
                        List(contacts, id: \.self, selection: $selection) { contact in
                            Text("R$: 0 a \(contact)")
                            .foregroundColor(.azul)
                        }
                        .listStyle(PlainListStyle())
                    }
                    
                    Text("Seleção: \(selection ?? 0)")
                        .foregroundColor(.azul)
                    
                    Spacer()
                    
                    Button("Filtrar") {
                        if let selected = selection {
                            vm.filter(preco: selected)
                            dismiss()
                        }
                    }
                    .padding()
                    .background(Color.azul)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct SpecialButton_Preview: PreviewProvider {
    static var previews: some View {
        @StateObject var vm = SosUfuPsicologos()
        
        Filtrar(vm: vm)
    }
}
