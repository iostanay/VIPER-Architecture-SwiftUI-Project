//
//  Drag_Drop_TableApp.swift
//  Drag&Drop Table
//
//  Created by Tanay Bhattacharjee on 11/02/25.
//

import SwiftUI


    @main
    struct DragDropListApp: App {
        var body: some Scene {
            WindowGroup {
                DragDropListRouter.createModule()
            }
        }
    }

