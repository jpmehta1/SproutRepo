//
//  SproutApp.swift
//  Sprout
//
//  Created by Jeet P Mehta on 30/03/24.
//

import SwiftUI

@main
struct SproutApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
           FirstView()
        }
    }
}
