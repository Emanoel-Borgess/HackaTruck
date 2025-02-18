//
//  ContentView.swift
//  Desafio09
//
//  Created by Turma01-10 on 17/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = UserViewModel()  // Instância do ViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.gatos) { gato in
                VStack(alignment: .leading) {
                    // Exibe a imagem do gato
                    AsyncImage(url: URL(string: gato.url)) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image.resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                        case .failure:
                            Image(systemName: "exclamationmark.triangle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                        @unknown default:
                            EmptyView()
                        }
                    }
                }
            }
            .navigationBarTitle("Gatos API")
            .task {
                await viewModel.fetchData()  // Chama a função do ViewModel para buscar os dados
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
