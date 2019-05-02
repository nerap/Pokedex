//
//  PokemonApi.swift
//  Pokedex Coding
//
//  Created by Raphaël Cohen on 2019-04-30.
//  Copyright © 2019 Raphaël Cohen. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class PokemonApi{
    
    
    var jsonParser = JSONParser()
    
    func readJSONFromFile(fileName: String) -> Any?
    {
        var json: Any?
        if let path = Bundle.main.path(forResource: "pokemon", ofType: "json") {
            do {
                let fileUrl = URL(fileURLWithPath: path)
                // Getting data from JSON file using the file URL
                let data = try Data(contentsOf: fileUrl, options: .mappedIfSafe)
                json = try? JSONSerialization.jsonObject(with: data)
            } catch {
                print("Json not Loaded")
            }
        }
        return json
    }
    
    func getPokemons(completion: @escaping (([Pokemon]) -> Void)) {
        if let path = Bundle.main.path(forResource: "pokemon", ofType: "json") {
            let url = URL(fileURLWithPath: path)
            
            Alamofire.request(url).responseJSON { response in
                
                guard let jsonResponse = response.result.value else {
                    return // TODO: error handling
                }
                let json = JSON(jsonResponse)
                
                let pokemons = json.arrayValue.map { self.jsonParser.bindToPokemon(json: $0) }
                completion(pokemons)
            }
        }
    }
}
