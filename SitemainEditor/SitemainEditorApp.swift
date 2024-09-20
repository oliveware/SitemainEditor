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





let argent = Sitemain(
    exergue :
        "exergue de bas de page",
    go: "retour ...",
    titrage : ["Grand", " ", "titre"],
    maxime: "exergue d'accueil",
    accueil: "invitation à la suite",

    intro: intro
)
let intro = Theme(
    "Affaires à suivre","intro","parents",
    "dernière mise à jour le 15 septembre 2024 à 14h27",
    "tabord",
    [
        Rubric("comptes", "Comptes courants", "Comptes courants", "", "navigationcourant",
               [
                Topic("bp", "Banque postale", "Banque postale", "compte courant 1115372", "", Comptejson(BP)),
                Topic("cm", "Crédit Mutuel", "Crédit Mutuel", "compte courant 00089303801", "", Comptejson(CM)),
                Topic("sg", "Société générale", "Société générale", "compte courant 00050050428", "", Comptejson(SG))
               ]
              ),
        Rubric("epargne", "Epargne", "Epargne", "", "navigationepargne",
               []
              ),
        Rubric("bourse", "Bourse", "Bourse", "", "navigationbourse",
               []
              )
    ]
    
)


