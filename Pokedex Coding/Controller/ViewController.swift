//
//  ViewController.swift
//  Pokedex Coding
//
//  Created by Raphaël Cohen on 2019-04-29.
//  Copyright © 2019 Raphaël Cohen. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet var textField : UITextField!
    @IBOutlet var button : UIButton!
    @IBOutlet var text : UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clic(sender : UIButton){
        let response = readJSONFromFile(fileName: "pokemon")
        if let userInfo = response as? [String: Any] {
            let email = userInfo as? String
        }
        
    }

    //Ouvre une popup
    func alert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func getPokemons(completion: @escaping (([Pokemon]) -> Void)) {
        /*let json = JSON(readJSONFromFile(fileName: "pokemon"))
        //let pokemons = json.arrayValue.map { self.jsonParser.bindToPokemon(json: $0) }
        completion(pokemons)*/
        return
    }
}


