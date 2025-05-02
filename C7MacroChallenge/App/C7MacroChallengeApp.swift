//
//  C7MacroChallengeApp.swift
//  C7MacroChallenge
//
//  Created by Fahim Uddin on 4/28/25.
//

import SwiftUI
import SwiftData

@main
struct C7MacroChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            TabBarView()
        }
        .modelContainer(for: Note.self)
    }
}
