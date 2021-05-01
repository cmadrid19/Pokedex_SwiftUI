//
//  ContentView.swift
//  Pokedex
//
//  Created by Maxim Macari on 21/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: PokemonViewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            Home()
                .navigationBarTitle("Pokedex")
        }
        .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
