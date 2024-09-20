//
//  ContentView.swift
//  SitemainEditor
//
//  Created by Herve Crespel on 06/09/2024.
//

import SwiftUI
import Genericsite
import Oware
import Attribex


struct ContentView: View {
    @Binding var document: SitemainDocument

    var body: some View {
        VStack {
            //MainView( $document.sitemain)
            //CompteView($document.argent.courant[0].compte)
            ArgentView($document.argent)
        }
    }
}

#Preview {
    ContentView(document: .constant(SitemainDocument(argent)))
}
