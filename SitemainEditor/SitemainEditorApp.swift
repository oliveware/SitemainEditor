//
//  SitemainEditorApp.swift
//  SitemainEditor
//
//  Created by Herve Crespel on 06/09/2024.
//

import SwiftUI
import Genericsite


@main
struct SitemainEditorApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: SitemainDocument(argent)) { file in
            ContentView(document: file.$document)
        }
    }
}



let DO = Sitemain(
    exergue :
        "Comprendre - Respecter - Utiliser - Expliquer",
    go: "retour ...",
    titrage : ["Data", " ", "Opera"],
    maxime: "La meilleure façon de prévoir le futur, c'est de l'inventer. Alan Kay",
    accueil: "A la découverte de Data Opera"
)

let argent = Sitemain(
    exergue :
        "exergue de bas de page",
    go: "retour ...",
    titrage : ["Grand", " ", "titre"],
    maxime: "exergue d'accueil",
    accueil: "invitation à la suite"
)

