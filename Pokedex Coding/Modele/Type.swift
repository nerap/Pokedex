//
//  Type.swift
//  Pokedex Coding
//
//  Created by Raphaël Cohen on 2019-04-30.
//  Copyright © 2019 Raphaël Cohen. All rights reserved.
//

import Foundation
import UIKit

enum Type : String{
    case bug
    case dragon
    case electric
    case fairy
    case fighting
    case fire
    case flying
    case ghost
    case grass
    case ground
    case ice
    case normal
    case poison
    case psychic
    case rock
    case steel
    case water
    case dark
    
    func getIcon(type : [Type]) -> UIImage?{
    
        switch self {
        case .bug:
            return UIImage(named : "bug")
        case .dragon:
            return UIImage(named : "dragon")
        case .electric:
            return UIImage(named : "electric")
        case .fairy:
            return UIImage(named : "fairy")
        case .fighting:
            return UIImage(named : "fighting")
        case .fire:
            return UIImage(named : "fire")
        case .flying:
            return UIImage(named : "flying")
        case .ghost:
            return UIImage(named : "ghost")
        case .grass:
            return UIImage(named : "grass")
        case .ground:
            return UIImage(named : "ground")
        case .ice:
            return UIImage(named : "ice")
        case .normal:
            return UIImage(named : "normal")
        case .poison:
            return UIImage(named : "poison")
        case .psychic:
            return UIImage(named : "psychic")
        case .rock:
            return UIImage(named : "rock")
        case .steel:
            return UIImage(named : "steel")
        case .water:
            return UIImage(named : "water")
        default:
            return UIImage(named : "dark")
        }
        
    }
    
    
    func getWeakness(type: [Type]) -> [Type]{
        switch self {
        case .bug:
            return [.flying, .rock, .fire]
        case .dragon:
            return [.ice, .dragon, .fairy]
        case .electric:
            return [.ground]
        case .fairy:
            return [.poison, .steel]
        case .fighting:
            return [.flying, .psychic, .fairy]
        case .fire:
            return [.ground, .rock, .water]
        case .flying:
            return [.rock, .electric, .ice]
        case .ghost:
            return [.ghost, .dark]
        case .grass:
            return [.flying, .poison, .bug, .fire, .ice]
        case .ground:
            return [.water, .grass, .ice]
        case .ice:
            return [.fighting, .rock, .steel, .fire]
        case .normal:
            return [.fighting]
        case .poison:
            return [.ground, .psychic]
        case .psychic:
            return [.bug, .ghost, .dark]
        case .rock:
            return [.fighting, .ground, .steel, .water, .grass]
        case .steel:
            return [.fighting, .ground, .fire]
        case .water:
            return [.grass, .electric]
        default:
            return [.fighting, .bug, .fairy]
        }
    }
    
    
    func getStrongest(type: [Type]) -> [Type]{
        switch self {
        case .bug:
            return [.grass, .psychic, .dark]
        case .dragon:
            return [.dragon]
        case .electric:
            return [.flying, .water]
        case .fairy:
            return [.fighting, .dragon, .dark]
        case .fighting:
            return [.normal, .rock, .steel, .ice, .dark]
        case .fire:
            return [.bug, .steel, .grass, .ice]
        case .flying:
            return [.fighting, .bug, .grass]
        case .ghost:
            return [.ghost, .psychic]
        case .grass:
            return [.ground, .rock, .water]
        case .ground:
            return [.poison, .rock, .steel, .fire, .electric]
        case .ice:
            return [.flying, .ground, .grass, .dragon]
        case .normal:
            return []
        case .poison:
            return [.grass, .fairy]
        case .psychic:
            return [.fighting, .poison]
        case .rock:
            return [.flying, .bug, .fire, .ice]
        case .steel:
            return [.fighting, .ground, .fire]
        case .water:
            return [.ground, .rock, .fire]
        default:
            return [.ghost, .psychic]
        }
    }
    
}

