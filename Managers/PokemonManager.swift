//
//  PokemonManager.swift
//  Pokedex
//
//  Created by Paolo Baeli on 30/05/22.
//

import Foundation

class PokemonManager {
    func getPokemon() -> [Pokemon] {
        let data: [Pokemon] = Bundle.main.decode(file: "pokedex.json")
        
        return data
    }
    
    func getDetailedPokemon(id: Int, _ completion:@escaping (DetailPokemon) -> ()) {
        Bundle.main.fetchData(url: "https://pokeapi.co/api/v2/pokemon/\(id)/", model: DetailPokemon.self) { data in completion(data)
        } failure: { error in
            print(error)
        }
    }
}
