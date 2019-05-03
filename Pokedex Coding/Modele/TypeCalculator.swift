//
//  TypeCalculator.swift
//  Pokedex Coding
//
//  Created by Raphaël Cohen on 2019-05-02.
//  Copyright © 2019 Raphaël Cohen. All rights reserved.
//

import Foundation


func inList(list : [Type], compare : Type) -> Bool{
    for (index, element) in list.enumerated() {
        if compare == element {
            return false
        }
    }
    return true
}

func getWeakerList(pokemon : Pokemon) -> Pokemon{
    var current_type = [Type]()
    for type in pokemon.types {
        
        var types = Type(rawValue: "water").getWeakness(type)
        
        for current : [Type] in types{
            if inList(current_type, current) == true{
                current_type.append(current)
            }
        }
    }
    var bob = PokemonApi.getPokemons{
        [weak self] pokemons in
        self?.pokemons = pokemons
    }
    
    
    for poke in bob {
        if (poke.type)
    }
    
}


func getType(){
    
}
