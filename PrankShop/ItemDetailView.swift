//
//  ItemDetailView.swift
//  PrankShop
//
//  Created by Zoe Cutler on 12/19/23.
//

import SwiftUI

struct ItemDetailView: View {
    @ObservedObject var shop: Shop
    
    var item: Item
    
    var body: some View {
        ScrollView {
            VStack {
                Image(item.imageResourceName)
                    .resizable()
                    .scaledToFit()
                    .clipped()
                
                Text(item.price.formatted(.currency(code: "USD")))
                    .foregroundStyle(.green)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                
                Divider()
                
                Text(item.description)
                
                Divider()
                
                HStack {
                    Text("Related Items")
                        .font(.title3.weight(.semibold))
                    
                    Spacer()
                }
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(shop.itemsRelated(to: item), id: \.self) { item in
                            VStack {
                                Image(item.imageResourceName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100.0, height: 100.0)
                                    .clipped()
                                Text(item.name)
                                Text(item.price.formatted(.currency(code: "USD")))
                                    .foregroundStyle(.green)
                                    .font(.caption)
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ItemDetailView(shop: Shop(), item: Item(name: "Sample Item", description: "This is a description la la la!", price: 1.99, imageResourceName: "cardDeck"))
}
