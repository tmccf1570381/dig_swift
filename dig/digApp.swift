//
//  digApp.swift
//  dig
//
//  Created by kakeru on 2023/06/12.
//

import SwiftUI

@main
struct digApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
