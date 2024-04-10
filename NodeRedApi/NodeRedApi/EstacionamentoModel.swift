//
//  EstacionamentoModel.swift
//  NodeRedApi
//
//  Created by Turma01-24 on 10/04/24.
//

import Foundation

struct Carro: Codable {
    let modelo: String?
    let ano: Int?
    let cor: String?
    let preco: Double?
    let foto: String?
}

struct Estacionamento: Codable, Identifiable{
    let id: String?
    let _id: String?
    let _rev: String?
    let nomeEstacionamento: String?
    let quantidadeVagas: Int?
    let carros: [Carro]?
}
