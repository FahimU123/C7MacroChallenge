//
//  NoteData.swift
//  C7MacroChallenge
//
//  Created by Davaughn Williams on 4/29/25.
//

import SwiftUI
import SwiftData

@Model
class Note: Identifiable {
//    @Attribute(.unique) var id: UUID
    var id: UUID
    var text: String?
    var imageData: Data?
    var videoURL: URL?
    
//    init(text: String? = nil, imageData: Data? = nil, videoURL: URL? = nil) {
    init(text: String?, imageData: Data?, videoURL: URL?) {
        self.id = UUID()
        self.text = text
        self.imageData = imageData
        self.videoURL = videoURL
    }
}
