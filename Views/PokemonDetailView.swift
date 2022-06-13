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
    @State var offsetY: CGFloat = 0
    
    @EnvironmentObject var vm: ViewModel
    
    let pokemon: Pokemon
    
    @Binding var show: Bool
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                PokemonDetailContentView(pokemon: pokemon)
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
                        let snap = translation.height + offsetY
                        let quarter = proxy.size.height / 4
                        
                        if snap > quarter*2 {
                            show.toggle()
                        } else {
                            translation = .zero
                        }
                    }
                }
            )
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

//struct PokemonDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PokemonDetailView(pokemon: Pokemon.samplePokemon, show)
//            .background(.blue)
//    }
//}
