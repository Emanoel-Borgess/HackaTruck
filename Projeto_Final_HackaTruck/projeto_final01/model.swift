//
//  model.swift
//  projeto_final01
//
//  Created by Turma01-2 on 27/02/25.
//

import Foundation

struct Psicologos : Decodable, Hashable {
    var nome: String
    var crm: String?
    var cidade: String
    var matricula: String?
    var endereco : String
    var modalidade: String
    var especialidade: String
    var experiencia: String
    var horarioAtendimento: String
    var contato: String
    var foto: String
    var preco: String
}
