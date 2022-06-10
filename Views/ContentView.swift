//
//  ContentView.swift
//  Pokedex
//
//  Created by Paolo Baeli on 29/05/22.
//

import SwiftUI

struct FlatLinkStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}
struct ContentView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("The Pokédex contains detailed stats for every creature from the Pokémon games.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    LazyVStack {
                        ForEach(vm.filteredPokemon, id: \.id) { pokemon in
                            NavigationLink {
                                PokemonDetailView()
                            }
                                label: {
                                    PokemonCard(pokemon: pokemon)
                                }.buttonStyle(FlatLinkStyle())
                        }
                    }
                    .animation(.easeIn(duration: 0.3), value: vm.filteredPokemon.count)
                }
                .navigationBarTitle("Pokédex")
                .searchable(text: $vm.searchText)
                .padding(.horizontal)
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
