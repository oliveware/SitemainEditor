//
//  ContentView.swift
//  SitemainEditor
//
//  Created by Herve Crespel on 06/09/2024.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: SitemainEditorDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(SitemainEditorDocument()))
}
