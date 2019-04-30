
struct JSONParser {
    
    private enum Constants {
        static let identifierKey = "_id"
        static let pokedexIdKey = "pkdx_id"
        static let nameKey = "name"
        static let imageUrlKey = "image_url"
        static let typesKey = "types"
        static let descriptionKey = "description"
        static let evolutionsKey = "evolutions"
        static let methodKey = "method"
        static let levelKey = "level"
        static let toKey = "to"
    }
    
    func bindToPokemon(json: JSON) -> Pokemon {
        return Pokemon(identifier: json[Constants.identifierKey].stringValue,
                       pokedexId: json[Constants.pokedexIdKey].intValue,
                       name: json[Constants.nameKey].stringValue,
                       imageUrl: json[Constants.imageUrlKey].stringValue,
                       description: json[Constants.descriptionKey].stringValue,
                       types: bindToType(jsonArray: json[Constants.typesKey].arrayValue),
                       evolutions: bindToEvolutions(jsonArray: json[Constants.evolutionsKey].arrayValue))
}
}



