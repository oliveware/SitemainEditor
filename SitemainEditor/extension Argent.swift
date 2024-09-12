//
//  extension Argent.swift
//  SitemainEditor
//
//  Created by Herve Crespel on 06/09/2024.
//

import Foundation
import Oware
import Attribex
import Semantex
import Genericsite

extension CompteCourant {
    
    init (_ compte:Comptejson) {
      //  id = Argent.newid("C")
      /*  self.compte = Compte(compte.data,
                             compte.generic.releve.solde.banque,
                             compte.generic.releve.ecritures)
       */
    }
}

extension Compte {
    convenience init(_ data:BankingData, _ soldebanque:String, _ ecrituresjson:[Ecriturejson] = []) {
        self.init(data, soldebanque, Ecritures(ecrituresjson))
    }
}

extension Argent {
    init(_ sitemain:Sitemain) {
        let rubrics = sitemain.intro.items
        let courantopics = rubrics[0].items
        //if courantopics.count > 0 {
        let firstcourant = courantopics[0].releve
        var argent = Argent(CompteCourant(firstcourant!))
        
    }
    
}

extension Sitemain {
    init(_ argent:Argent) {
        let sitemain = Sitemain()
    }
}

extension Ecritures {
    public init(_ ecritures:[Ecriturejson]) {
        devisekind = .EUR
        for json in ecritures {
            let ecriture = Ecriture(json.id,json.envoi,json.date,json.libellé,json.montant)
            if json.date == "" {
                engagement.append()
            } else {
                décompte.append(Ecriture(ecriture))
            }
        }
    }
}
