//
//  PokedexView.swift
//  Pokedex
//
//  Created by Paolo Baeli on 29/05/22.
//

import SwiftUI

struct PokedexView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        LazyVStack {
            ForEach(vm.filteredPokemon, id: \.id) { pokemon in
                PokemonCard(pokemon: pokemon)
            }
        }
        .animation(.easeIn(duration: 0.3), value: vm.filteredPokemon.count)
        
    }
}



struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.portrait)
    }
}
