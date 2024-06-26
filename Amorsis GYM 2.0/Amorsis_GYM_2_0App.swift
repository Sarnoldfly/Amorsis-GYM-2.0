//
//  Amorsis_GYM_2_0App.swift
//  Amorsis GYM 2.0
//
//  Created by Mac on 27/3/24.
//


import SwiftUI
import SwiftData

@main
struct Amorsis_GYM_2_0App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .modelContainer(sharedModelContainer)
    }
}


