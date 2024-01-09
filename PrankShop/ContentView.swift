//
//  ContentView.swift
//  PrankShop
//
//  Created by Zoe Cutler on 12/19/23.
//

import SwiftUI

#warning("As a user, I want to see a Navigation Title that says 'Prank Shop' on ContentView.")
#warning("As a user, when I tap on an item in the Prank Shop, I want to Navigation Link to the ItemDetailView, so I can see details about the specific item. I also want the Navigation Title of ItemDetailView to say the name of the item I'm looking at, so I know where I am.")
struct ContentView: View {
    @StateObject var shop = Shop()
    
    var body: some View {
        List(shop.items) { item in
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
}

#Preview {
    ContentView()
}
