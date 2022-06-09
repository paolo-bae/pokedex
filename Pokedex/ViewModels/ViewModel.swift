//
//  ViewModel.swift
//  Pokedex
//
//  Created by Paolo Baeli on 30/05/22.
//

import Foundation
import SwiftUI

final class ViewModel: ObservableObject {
    private let pokemonManager = PokemonManager()
    
    @Published var pokemonList: [Pokemon]
    @Published var pokemonDetails: DetailPokemon?
    @Published var searchText = ""
    
    var filteredPokemon: [Pokemon] {
        return searchText == "" ? pokemonList : pokemonList.filter {
            $0.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    init() {
        self.pokemonList = Array(Set(pokemonManager.getPokemon())).sorted(by: { (p1: Pokemon, p2: Pokemon) in
            return p1.id < p2.id
        })
    }
    
    func getPokemonIndex(pokemon: Pokemon) -> Int {
        if let index = self.pokemonList.firstIndex(of: pokemon) {
            return index + 1
        }
        return 0
    }
    
    func getDetails(pokemon: Pokemon) {
        let id  = getPokemonIndex(pokemon: pokemon)
        
        self.pokemonDetails = DetailPokemon(id: 0, height: 0, weight: 0)
        
        pokemonManager.getDetailedPokemon(id: id) { data in
            DispatchQueue.main.async {
                self.pokemonDetails = data
            }
        }
    }
    
    func formatHW(value: Int) -> String {
        let dValue = Double(value)
        let string = String(format: "%.2f", dValue / 10)
        
        return string
    }
}
