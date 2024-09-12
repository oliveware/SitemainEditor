//
//  SitemainEditorDocument.swift
//  SitemainEditor
//
//  Created by Herve Crespel on 06/09/2024.
//

import SwiftUI
import UniformTypeIdentifiers
import Genericsite
import Oware

extension UTType {
    static var jsonText: UTType {
        UTType(importedAs: "public.json")
    }
}

struct SitemainDocument: FileDocument {
    var argent:Argent
    
    init(_ argent) {
        sitemain = site
    }

  static var readableContentTypes: [UTType] { [.jsonText] }

   init(configuration: ReadConfiguration) throws {
        guard let json = configuration.file.regularFileContents
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        let sitemain = try JSONDecoder().decode(Sitemain.self, from: json)
       argent = Argent(sitemain)
    }
    
   func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
       let sitemain = Sitemain(argent)
        let json = try JSONEncoder().encode(sitemain)
       // let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: json)
    }
}
