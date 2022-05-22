//
//  cueApp.swift
//  cue
//
//  Created by Matthew on 2022/5/21.
//

import SwiftUI

@main
struct cueApp: App {
    @State private var selection = "Red"
    let colors = ["Red", "Green", "Blue", "Black", "Tartan"]
    var body: some Scene {
        WindowGroup {
            SerialPortParaAll()
        }
    }
}
