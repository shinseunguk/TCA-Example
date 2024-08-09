//
//  TCA_ExampleApp.swift
//  TCA-Example
//
//  Created by ukseung.dev on 8/9/24.
//

import SwiftUI
import ComposableArchitecture

// MARK: - App Entry Point

@main
struct CounterApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView(store: Store(initialState: Feature.State(), reducer: { Feature()._printChanges() } ))
        }
    }
}
