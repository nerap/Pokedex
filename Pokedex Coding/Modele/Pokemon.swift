//
//  Pokemon.swift
//  Pokedex Coding
//
//  Created by Raphaël Cohen on 2019-04-30.
//  Copyright © 2019 Raphaël Cohen. All rights reserved.
//

import Foundation


class Pokemon {
    var identifier: String
    var pokedexId: Int
    var name: String
    var imageUrl: String
    var description: String
    var types: [Type]
    var evolutions: [Evolution]
    
    init(identifier: String,
         pokedexId: Int,
         name: String,
         imageUrl: String = "",
         description: String = "",
         types: [Type] = [],
         evolutions: [Evolution] = []) {
        
        
        self.identifier = identifier
        self.pokedexId = pokedexId
        self.name = name
        self.imageUrl = imageUrl
        self.description = description
        self.types = types
        self.evolutions = evolutions
    }
}
