//
//  DocumentApp_multiplatformApp.swift
//  DocumentApp.multiplatform
//
//  Created by Andrew Matz on 6/1/25.
//

import SwiftUI

@main
struct DocumentApp_multiplatformApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: DocumentApp_multiplatformDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
