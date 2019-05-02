//
//  PokemonTableViewCell.swift
//  Pokedex Coding
//
//  Created by Piquet Elise on 02/05/2019.
//  Copyright © 2019 Raphaël Cohen. All rights reserved.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ImagePokemon: UIImageView!
    @IBOutlet weak var NamePokemon: UILabel!
    @IBOutlet weak var IdPokemon: UILabel!
    
    var cellIndex:Int = 0
    
    var viewModel: PokemonTableViewCellViewModel?{
        didSet{
            guard let viewModel = viewModel else {
                return
            }
            cellIndex = viewModel.cellIndex
            NamePokemon.text = viewModel.pokemonName
            IdPokemon.text = "#\(viewModel.pokemonNumber)"
            ImagePokemon.image = UIImage(named: "toto")
        }
        
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        NamePokemon.text = nil
        IdPokemon.text = nil
        
    }
    
    
}
