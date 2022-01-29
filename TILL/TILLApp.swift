//
//  TILLApp.swift
//  TILL
//
//  Created by Владимир Рябов on 29.01.2022.
//

import SwiftUI

@main
struct TILLApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.textCase, .uppercase)
        }
    }
}
