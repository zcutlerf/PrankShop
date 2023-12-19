//
//  Item.swift
//  PrankShop
//
//  Created by Zoe Cutler on 12/19/23.
//

import Foundation

struct Item: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var description: String
    var price: Double
    var imageResourceName: String
    
    var relatedItemIDs: [Item.ID] = []
}
