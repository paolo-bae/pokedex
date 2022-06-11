//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by Paolo Baeli on 03/06/22.
//
//
import SwiftUI

struct PokemonDetailView: View {
    
    @State var translation: CGSize = .zero
    
    @EnvironmentObject var vm: ViewModel
    
    let pokemon: Pokemon
    
    var body: some View {
        VStack {
            Text(pokemon.number)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(pokemon.type[0].getColor())
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .offset(y: translation.height)
        .gesture(DragGesture()
            .onChanged { value in
                translation = value.translation
            }
            .onEnded { value in
                withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.7)) {
                    translation = .zero
                }
            }
        )
        .ignoresSafeArea(edges: .bottom)
        
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: Pokemon.samplePokemon)
            .background(.blue)
    }
}
