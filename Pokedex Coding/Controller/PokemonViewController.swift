//
//  ViewController.swift
//  Pokedex Coding
//
//  Created by Raphaël Cohen on 2019-04-29.
//  Copyright © 2019 Raphaël Cohen. All rights reserved.
//

import UIKit
import SwiftyJSON

class PokemonViewController: UIViewController {
    
    var pokemons = [Pokemon]()
    var pokemonApi = PokemonApi()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pokemonApi.getPokemons{
            [weak self] pokemons in
            self?.pokemons = pokemons
            self?.tableView.reloadData()
            }
    }
    
}



// MARK: - UITableViewDelegate / Datasource
extension PokemonViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PokemonTableViewCell.self), for: indexPath)
        let currentPokemon = pokemons[indexPath.row]
        
        let pokemonViewModel = PokemonTableViewCellViewModel(cellIndex: indexPath.row,
                                                             pokemonName: currentPokemon.name,
                                                             pokemonNumber: currentPokemon.pokedexId,
                                                             pokemonImageUrl: currentPokemon.imageUrl)
        
        (cell as? PokemonTableViewCell)?.viewModel = pokemonViewModel
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}



