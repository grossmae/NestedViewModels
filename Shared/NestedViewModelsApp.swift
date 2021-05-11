//
//  NestedViewModelsApp.swift
//  Shared
//
//  Created by Evan Grossman on 5/11/21.
//

import SwiftUI

@main
struct NestedViewModelsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(topViewModel: TopViewModel(title: "Title", subtitle: "Subtitle"))
        }
    }
}
