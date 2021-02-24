//
//  ContentView.swift
//  sklep-ios-rest
//
//  Created by Mike Crow on 24/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabSelection = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            KategoriaView().tabItem {
                Image(systemName: "list.dash")
                Text("Kategorie")
            }.tag(0)
            KoszykView().tabItem {
                Image(systemName: "cart.fill")
                Text("Koszyk")
            }.tag(1)
            MapaView().tabItem {
                Image(systemName: "map.fill")
                Text("Znajdz nas")
            }.tag(2)
            LogowanieView().tabItem {
                Image(systemName: "person.circle")
                Text("Logowanie")
            }.tag(3)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
