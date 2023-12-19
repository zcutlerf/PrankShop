//
//  Shop.swift
//  PrankShop
//
//  Created by Zoe Cutler on 12/19/23.
//

import Foundation

class Shop: ObservableObject {
    var items: [Item]
    
    init() {
        var cardDeck = Item(name: "Deck of Cards", description: "For surprising your audiences with amazing magic tricks.", price: 9.99, imageResourceName: "cardDeck")
        var fingerTrap = Item(name: "Finger Trap", description: "Ouch! Your foes won't be able to steal your wallet anymore.", price: 1.45, imageResourceName: "fingerTrap")
        var handShocker = Item(name: "Hand Shocker", description: "Give your coworkers a good ol' handshake with a twist!", price: 14.99, imageResourceName: "handShocker")
        var snakeCan = Item(name: "Snake in a Can", description: "Want some chips? Think again!", price: 8.00, imageResourceName: "snakeCan")
        var stickyHand = Item(name: "Sticky Hand", description: "A great way to make your parents mad by ruining their wallpaper.", price: 3.95, imageResourceName: "stickyHand")
        var whoopeeCushion = Item(name: "Whoopee Cushion", description: "Embarass your grandma at family dinner with this fart-sound generator. I know you kids have \"apps\" for this stuff, but sometimes low-tech has its charm.", price: 6.99, imageResourceName: "whoopeeCushion")
        
        cardDeck.relatedItemIDs = [snakeCan.id]
        fingerTrap.relatedItemIDs = [stickyHand.id, whoopeeCushion.id]
        handShocker.relatedItemIDs = [fingerTrap.id, whoopeeCushion.id, stickyHand.id]
        snakeCan.relatedItemIDs = [cardDeck.id, handShocker.id]
        stickyHand.relatedItemIDs = [fingerTrap.id]
        whoopeeCushion.relatedItemIDs = [fingerTrap.id, handShocker.id, snakeCan.id]
        
        items = [cardDeck, fingerTrap, handShocker, snakeCan, stickyHand, whoopeeCushion]
    }
    
    func itemsRelated(to item: Item) -> [Item] {
        item.relatedItemIDs.compactMap { id in
            items.first(where: { relatedItem in
                relatedItem.id == id
            })
        }
    }
}
