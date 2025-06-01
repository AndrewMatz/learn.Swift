//
//  ContentView.swift
//  DocumentApp.multiplatform
//
//  Created by Andrew Matz on 6/1/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: DocumentApp_multiplatformDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(DocumentApp_multiplatformDocument()))
}
