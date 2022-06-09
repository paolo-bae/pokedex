//
//  PokemonModel.swift
//  Pokedex
//
//  Created by Paolo Baeli on 30/05/22.
//

import Foundation

//struct PokemonPage: Codable {
//    let count: Int
//    let next: String
//    let results: [Pokemon]
//}

struct Pokemon: Codable, Identifiable {
//  let uID = UUID()
    let id: Int
    let name: String
    let ThumbnailImage: String
    let number: String
    let type: [PokemonType]

    
    static var samplePokemon = Pokemon(id: 1, name: "Bulbasaur", ThumbnailImage: "bulbasaur", number: "001", type: [PokemonType.grass])
}

extension Pokemon: Hashable {
    static func == (lhs: Pokemon, rhs: Pokemon) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}

struct DetailPokemon: Codable {
    let id: Int
    let height: Int
    let weight: Int
}
