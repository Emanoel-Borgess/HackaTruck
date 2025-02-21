//
//  ViewModel.swift
//  Desafio10
//
//  Created by Turma01-10 on 03/02/25.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var pessoa : [Pessoa] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/getEmanoel" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Pessoa].self, from: data)
                
                DispatchQueue.main.async {
                    self?.pessoa = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
