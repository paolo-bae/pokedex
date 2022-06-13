//
//  PokemonDetailContentView.swift
//  Pokedex
//
//  Created by Paolo Baeli on 13/06/22.
//

import SwiftUI
import Kingfisher

struct PokemonDetailContentView: View {
    
    @EnvironmentObject var vm: ViewModel
    
    let pokemon: Pokemon
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .frame(width: 40, height: 5)
                .foregroundColor(.white)
                .padding(8)
            ScrollView {
                VStack {
                    Text("#\(pokemon.number)")
                        .font(.system(size: 20, weight: .black, design: .monospaced))
                        .foregroundColor(.white.opacity(0.5))
                        .padding(.trailing, 220)
                        .padding(.top, 40)
                    Text(pokemon.name)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                        .padding(.trailing, 110)
                    KFImage(URL(string: pokemon.ThumbnailImage)!)
                        .resizable()
                        .loadDiskFileSynchronously()
                        .interpolation(.none)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
                }
            }
        }
    }
}

struct PokemonDetailContentView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailContentView(pokemon: Pokemon.samplePokemon)
            .background(.black)
    }
}
