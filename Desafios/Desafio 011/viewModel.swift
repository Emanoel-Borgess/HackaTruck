//
//  ViewModel.swift
//  Desafio11
//
//  Created by Turma01-10 on 24/02/25.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var umidade: [Umidade] = []
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/umidade") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Umidade].self, from: data)
                
                DispatchQueue.main.async {
                    self?.umidade = parsed
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
}
