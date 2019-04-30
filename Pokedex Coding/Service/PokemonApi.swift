//
//  PokemonApi.swift
//  Pokedex Coding
//
//  Created by Raphaël Cohen on 2019-04-30.
//  Copyright © 2019 Raphaël Cohen. All rights reserved.
//

import Foundation

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
