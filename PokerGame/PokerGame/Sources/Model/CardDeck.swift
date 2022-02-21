//
//  CardDeck.swift
//  PokerGame
//
//  Created by seongha shin on 2022/02/21.
//

import Foundation

///카드 덱 클래스
///덱은 초기화 시 CardData를 52장을 가지고 있으며,
///덱의 카드의 수가 줄거나, 셔플, 한장빼기등 CardData를 관리함
///변형이 일어나는 데이터이기 때문에 클래스로 제작
class CardDeck {
    
    public private(set) var deck: [CardData] = []
    
    var count: Int {
        deck.count
    }
    
    init() {
        reset()
    }
    
    func shuffle() {
        var newDeck = [CardData]()
        while count != 0 {
            guard let randomCard = removeOne() else {
                return
            }
            newDeck.append(randomCard)
        }
        
        deck = newDeck
    }
    
    func removeOne() -> CardData? {
        guard let randomIndex = (0..<deck.count).randomElement() else {
            return nil
        }
        return deck.remove(at: randomIndex)
    }
    
    func reset() {
        deck = CardData.CardPattern.allCases.flatMap { pattern in
            (1...13).compactMap { number in
                CardData(pattern: pattern, number: number)
            }
        }
    }
}
