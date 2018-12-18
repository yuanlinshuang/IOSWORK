//
//  Card.swift
//  seven
//
//  Created by 509 on 2018/11/11.
//  Copyright © 2018年 2016110349. All rights reserved.
//

import Foundation

struct  Card {
    var isFaceUp = false {
        didSet {
            if oldValue && !isFaceUp {
                isSeen = true
            }
        }
    }
    var isMatched = false
     private(set) var isSeen = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
}
