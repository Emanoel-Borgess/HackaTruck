//
//  GatoModel.swift
//  Desafio09
//
//  Created by Turma01-10 on 18/02/25.
//

import Foundation

// GatoModel.swift
import Foundation

// Modelo para decodificar a resposta da API
struct Gato: Codable, Identifiable {
    var id: String  // Mudamos para String, já que o 'id' na resposta é uma string
    var url: String
}
