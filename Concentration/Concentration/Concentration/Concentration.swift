//
//  Concentration.swift
//  Concentration
//
//  Created by Vipin Rohilla on 04/03/21.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpcard: Int?
    
    func chooseCard(at index: Int)
    {
        if !cards[index].isMatched{
            if let matchIndex = indexOfOneAndOnlyFaceUpcard, matchIndex != index{
                if cards[matchIndex].identifier == cards[index].identifier{
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpcard = nil
            }
            else{
                for flipDownIndex in cards.indices{
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpcard = index
            }
        }
     }
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards{
            let card = Card()
            cards += [card, card]
        }
        //TODO: Shuffle the cards
    }
}
