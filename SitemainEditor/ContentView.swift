//
//  ContentView.swift
//  SitemainEditor
//
//  Created by Herve Crespel on 06/09/2024.
//

import SwiftUI
import Genericsite
import Oware


struct ContentView: View {
    @Binding var document: SitemainDocument

    var body: some View {
        VStack {
            MainView( $document.sitemain)
        }
    }
}

#Preview {
    ContentView(document: .constant(SitemainDocument(argent)))
}
