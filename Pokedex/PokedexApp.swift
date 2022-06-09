//
//  PokedexApp.swift
//  Pokedex
//
//  Created by Paolo Baeli on 29/05/22.
//

import SwiftUI

@main
struct PokedexApp: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(red: 208.0/255, green: 78.0/255, blue: 65.0/255, alpha: 1.0)]
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
