//
//  GameOption.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import Foundation


enum GameOption: Int, CaseIterable{
    case rock = 0
    case paper = 1
    case scissors = 2
    
    var weakness: GameOption {
        switch self {
        case .rock:
            return .paper
        case .paper:
            return .scissors
        case .scissors:
            return .rock
        }
    }
    
    init() {
        self = .rock
        self.getRandomOption()
    }
    
    mutating func getRandomOption() {
        let randomInt = Int.random(in: 0 ..< GameOption.allCases.count)
        self = GameOption.allCases[randomInt]
        
    }
}
