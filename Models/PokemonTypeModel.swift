//
//  PokemonTypeModel.swift
//  Pokedex
//
//  Created by Paolo Baeli on 31/05/22.
//

import Foundation
import SwiftUI

//ENUM POKEMON TYPE
enum PokemonType: String, Codable, Identifiable  {
    
    var id: String { rawValue }
    
    case grass
    case fire
    case water
    case bug
    case normal
    case dark
    case poison
    case electric
    case ice
    case fairy
    case ground
    case fighting
    case psychic
    case rock
    case ghost
    case dragon
    case steel
    case flying
}
//EXTENSION: GET CARD COLOR
extension PokemonType {
    func getColor() -> Color {
        switch self {
            case .grass:
                return Color(red: 145/255, green: 202/255, blue: 167/255)
            case .fire:
                return Color(red: 242/255, green: 203/255, blue: 160/255)
            case .water:
                return Color(red: 113/255, green: 189/255, blue: 223/255)
            case .bug:
                return Color(red: 170/255, green: 187/255, blue: 57/255)
            case .normal:
                return Color(red: 172/255, green: 170/255, blue: 122/255)
            case .dark:
                return Color(red: 113/255, green: 90/255, blue: 74/255)
            case .poison:
                return Color(red: 220/255, green: 152/255, blue: 202/255)
            case .electric:
                return Color(red: 247/255, green: 227/255, blue: 146/255)
            case .ice:
                return Color(red: 134/255, green: 211/255, blue: 206/255)
            case .fairy:
                return Color(red: 246/255, green: 203/255, blue: 223/255)
            case .ground:
                return Color(red: 224/255, green: 193/255, blue: 102/255)
            case .fighting:
                return Color(red: 195/255, green: 49/255, blue: 42/255)
            case .psychic:
                return Color(red: 243/255, green: 169/255, blue: 168/255)
            case .rock:
                return Color(red: 185/255, green: 162/255, blue: 56/255)
            case .ghost:
                return Color(red: 114/255, green: 89/255, blue: 154/255)
            case .dragon:
                return Color(red: 100/255, green: 87/255, blue: 166/255)
            case .steel:
                return Color(red: 184/255, green: 184/255, blue: 210/255)
            case .flying:
                return Color(red: 146/255, green: 184/255, blue: 227/255)
        }
    }
}
//EXTENSION: GET TYPE IMAGE
extension PokemonType {
    func getTypeIcon() -> some View {
        switch self {
        case .grass:
            return Image("Pokemon_Type_Icon_Grass").resizable().scaledToFit()
        case .fire:
            return Image("Pokemon_Type_Icon_Fire").resizable().scaledToFit()
        case .water:
            return Image("Pokemon_Type_Icon_Water").resizable().scaledToFit()
        case .bug:
            return Image("Pokemon_Type_Icon_Bug").resizable().scaledToFit()
        case .normal:
            return Image("Pokemon_Type_Icon_Normal").resizable().scaledToFit()
        case .dark:
            return Image("Pokemon_Type_Icon_Dark").resizable().scaledToFit()
        case .poison:
            return Image("Pokemon_Type_Icon_Poison").resizable().scaledToFit()
        case .electric:
            return Image("Pokemon_Type_Icon_Electric").resizable().scaledToFit()
        case .ice:
            return Image("Pokemon_Type_Icon_Ice").resizable().scaledToFit()
        case .fairy:
            return Image("Pokemon_Type_Icon_Fairy").resizable().scaledToFit()
        case .ground:
            return Image("Pokemon_Type_Icon_Ground").resizable().scaledToFit()
        case .fighting:
            return Image("Pokemon_Type_Icon_Fighting").resizable().scaledToFit()
        case .psychic:
            return Image("Pokemon_Type_Icon_Psychic").resizable().scaledToFit()
        case .rock:
            return Image("Pokemon_Type_Icon_Rock").resizable().scaledToFit()
        case .ghost:
            return Image("Pokemon_Type_Icon_Ghost").resizable().scaledToFit()
        case .dragon:
            return Image("Pokemon_Type_Icon_Dragon").resizable().scaledToFit()
        case .steel:
            return Image("Pokemon_Type_Icon_Steel").resizable().scaledToFit()
        case .flying:
            return Image("Pokemon_Type_Icon_Flying").resizable().scaledToFit()
        }
    }
}
