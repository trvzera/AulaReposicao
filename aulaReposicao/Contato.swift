//
//  File.swift
//  aulaReposicao
//
//  Created by COTEMIG on 31/10/26.
//

import Foundation

struct Contato: Identifiable {
    let id: UUID = UUID()
    let nome: String
    let telefone: String
    let email: String
    let aniversario: String
    let endereço: String
    let cep: Int
    
}
