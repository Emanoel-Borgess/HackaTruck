//
//  swift view model.swift
//  projeto_final01
//
//  Created by Turma01-2 on 27/02/25.
//

import Foundation

class SosUfuPsicologos : ObservableObject {
    
    @Published var SosPsi : [Psicologos] = []
    @Published var FilterAuxSosPsi : [Psicologos] = []
    
    func fetch(){
        let url = "http://192.168.128.100:1880/getSos"
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!){data, _, ErrorPointer
            in
            
            do {
                self.SosPsi = try JSONDecoder().decode([Psicologos].self, from: data!)
                self.FilterAuxSosPsi = self.SosPsi
            } catch{
                print(error)
            }
        }
        task.resume()
    }
    
    
    
    func filter(preco : Int){
        
        
        if(preco != nil){
            SosPsi = FilterAuxSosPsi.filter({
                Int($0.preco) ?? 0  < preco
            })
        }
        
        
        
        
    }
}
