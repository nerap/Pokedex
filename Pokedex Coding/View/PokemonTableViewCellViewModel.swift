//
//  PokemonTableViewCellViewModel.swift
//  Pokedex Coding
//
//  Created by Piquet Elise on 02/05/2019.
//  Copyright © 2019 Raphaël Cohen. All rights reserved.
//

import Foundation
import UIKit

struct PokemonTableViewCellViewModel {
    let cellIndex: Int
    let pokemonName: String
    let pokemonNumber: Int
    let pokemonImageUrl: String
    
    init(cellIndex: Int,
         pokemonName: String,
         pokemonNumber: Int,
         pokemonImageUrl: String = "") {
        
        self.cellIndex = cellIndex
        self.pokemonName = pokemonName
        self.pokemonNumber = pokemonNumber
        self.pokemonImageUrl = pokemonImageUrl
    }
}



