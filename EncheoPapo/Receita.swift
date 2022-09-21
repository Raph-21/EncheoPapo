//
//  Receita.swift
//  EncheoPapo
//
//  Created by Raphael on 20/09/22.
//

import Foundation

struct Receita: Codable {
    let nome: String
    let descricao: String
    let imagemVitrine: String
    let imagemDetalhe: String
    let ingredientes: [String]
    let detalhes: String
}
