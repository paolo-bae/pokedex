//
//  PokemonCard.swift
//  Pokedex
//
//  Created by Paolo Baeli on 29/05/22.
//

import SwiftUI
import Kingfisher

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(30)
    }
}

struct PokemonCard: View {
    @EnvironmentObject var vm: ViewModel
    let pokemon: Pokemon
    
    var body: some View {
        ZStack(alignment: .trailing) {
            HStack(alignment: .top) {
                KFImage(URL(string: pokemon.ThumbnailImage)!)
                    .resizable()
                    .loadDiskFileSynchronously()
                    .interpolation(.none)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                VStack(alignment: .leading) {
                    Text("\(pokemon.name.capitalized)")
                        .font(.system(size: 28, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    HStack {
                        ForEach(pokemon.type) { pokemonType in
                            pokemonType.getTypeIcon()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                        }
                    }
                    .offset(y: -10)
                }
                .padding(.trailing, 20)
                .padding(.top, 5)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(pokemon.type[0].getColor())
            .modifier(CardModifier())
            
            Text("#\(pokemon.number)")
                .font(.system(size: 60, weight: .black, design: .monospaced))
                .foregroundColor(.white.opacity(0.5))
                .padding(.trailing, 20)
                .padding(.top, 40)
        }
    }
}

struct PokemonCard_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCard(pokemon: Pokemon.samplePokemon)
    }
}
