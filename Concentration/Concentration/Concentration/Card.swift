//
//  Card.swift
//  Concentration
//
//  Created by Vipin Rohilla on 04/03/21.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        Card.identifierFactory += 1
        return Card.identifierFactory
    }
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
