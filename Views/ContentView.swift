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
    @State var show = false
    @State var selectedPokemon: Pokemon? = nil
    
    var body: some View {
        ZStack {
            //MARK: Pokedex Home View
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Pokédex")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                        .bold()
                    Text("The Pokédex contains detailed stats for every creature from the Pokémon games.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    LazyVStack {
                        ForEach(vm.filteredPokemon, id: \.id) { pokemon in
                            PokemonCard(pokemon: pokemon)
                                .onTapGesture {
                                    selectedPokemon = pokemon
                                    withAnimation() {
                                        show.toggle()
                                    }
                                }
                        }
                    }
                }
            }
            .padding(.horizontal)
//            .onTapGesture {
//                show.toggle()
//            }
            //MARK: Show Selected Pokemon Detail View
            if show {
                Color.black.opacity(0.3).ignoresSafeArea()
                
                PokemonDetailView(pokemon: selectedPokemon!, show: $show)
                    .transition(.move(edge: .bottom))
                    .zIndex(1)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
