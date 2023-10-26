//
//  NoahAppApp.swift
//  NoahApp
//
//  Created by Ali on 20/10/23.
//

import SwiftUI

@main
struct NoahApp: App {
    @State private var modelData = ActivityViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainPageView()
                .environment(modelData)
        }
    }
}
