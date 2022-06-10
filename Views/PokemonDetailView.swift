//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by Paolo Baeli on 03/06/22.
//
//
import SwiftUI

struct PokemonDetailView: View {
    
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        Text("POKEMON DETAIL")
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView()
    }
}
