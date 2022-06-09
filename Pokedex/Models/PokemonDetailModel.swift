//
//  PokemonDetailview.swift
//  Pokedex
//
//  Created by Paolo Baeli on 03/06/22.
//
import Foundation

struct PokemonDetail: Codable, Identifiable {
    let id: Int
    let name: String
    let type: [PokemonType]
    let ThumbnailImage: String
    
    
}
