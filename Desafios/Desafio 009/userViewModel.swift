//
//  UserViewModel.swift
//  Desafio09
//
//  Created by Turma01-10 on 18/02/25.
//

import Foundation

// UserViewModel.swift
import Foundation

class UserViewModel: ObservableObject {
    @Published var gatos = [Gato]()
    
    // Função para buscar os dados da API
    func fetchData() async {
        guard let url = URL(string: "https://api.thecatapi.com/v1/images/search?limit=10") else {
            print("URL não funciona!")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            // Decodifica a resposta da API para o array de Gatos
            if let decodedResponse = try? JSONDecoder().decode([Gato].self, from: data) {
                self.gatos = decodedResponse
            } else {
                print("Erro ao decodificar a resposta.")
            }
        } catch {
            print("Erro ao obter os dados: \(error)")
        }
    }
}
