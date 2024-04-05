//
//  Model.swift
//  HarryPotter
//
//  Created by Turma01-24 on 05/04/24.
//

import Foundation

struct Wand: Codable {
    let wood: String?
    let core: String?
    let length: Double?
}

struct HaPo: Codable, Identifiable {
    let id: String
    let name: String?
    let alternate_names: [String]?
    let species: String?
    let gender: String?
    let house: String?
    let dateOfBirth: String?
    let ysearOfBirth: String?
    let wizard: Bool?
    let ancestry: String?
    let eyeColour: String?
    let hairColour: String?
    let wand: Wand
    let patronus: String?
    let hogwartsStudent: Bool?
    let hogwartsStaff: Bool?
    let actor: String?
    let alternate_actors: [String]?
    let alive: Bool?
    let image: String?
}
