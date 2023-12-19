//
//  ContentView.swift
//  PrankShop
//
//  Created by Zoe Cutler on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var shop = Shop()
    
    var body: some View {
        NavigationStack {
            List(shop.items) { item in
                NavigationLink(value: item) {
                    HStack {
                        Image(item.imageResourceName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100.0, height: 100.0)
                            .clipped()
                        
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.title3)
                            Text(item.price.formatted(.currency(code: "USD")))
                                .foregroundStyle(.green)
                        }
                    }
                }
            }
            .navigationDestination(for: Item.self) { item in
                ItemDetailView(shop: shop, item: item)
            }
            .navigationTitle("Prank Shop")
        }
    }
}

#Preview {
    ContentView()
}
