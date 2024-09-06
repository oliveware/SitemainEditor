//
//  SitemainEditorApp.swift
//  SitemainEditor
//
//  Created by Herve Crespel on 06/09/2024.
//

import SwiftUI

@main
struct SitemainEditorApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: SitemainEditorDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
