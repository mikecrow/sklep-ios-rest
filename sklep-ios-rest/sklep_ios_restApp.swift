//
//  sklep_ios_restApp.swift
//  sklep-ios-rest
//
//  Created by Mike Crow on 23/02/2021.
//

import SwiftUI

@main
struct sklep_ios_restApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
