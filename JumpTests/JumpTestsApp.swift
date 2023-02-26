//
//  JumpTestsApp.swift
//  JumpTests
//
//  Created by Felipe Fernandes on 24/02/23.
//

import SwiftUI

@main
struct JumpTestsApp: App {
    
    let coordinator = JumpTestsCoordinator()
    
    var body: some Scene {
        WindowGroup {
            coordinator.load(with: .viewA(), navigation: true)
        }
    }
}
