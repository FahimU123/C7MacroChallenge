//
//  NoteCardView.swift
//  C7MacroChallenge
//
//  Created by Davaughn Williams on 4/29/25.
//

import SwiftUI

struct NoteCardView: View {
    let note: Note
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(.systemGray5))
                .frame(width: 175, height: (note.videoURL != nil) || note.imageData != nil ? 224 : 100)
            
            if let text = note.text {
                Text(text)
                    .font(.custom("SF-Mono-Semibold", size: 12))
//                    .frame(width: 175, height: 100)
                    .padding()
            }
            
            if let video = note.videoURL {
                ZStack {
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                    
                    
                }
            }
            
            if let photo = note.imageData, let image = UIImage(data: photo) {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 175, height: 224)
                    .clipped()
                    .cornerRadius(16)
            }
        }
    }
}

#Preview {
    VStack {
        NoteCardView(note: Note(text: "I want to make my family proud", imageData: nil, videoURL: nil))
        
//        let sampleImage = UIImage(named: "samplePhoto")!
//        let imageData = sampleImage.jpegData(compressionQuality: 1.0)
//        return NoteCardView(note: Note(text: "Note with image", imageData: imageData, videoURL: nil))
        
//        NoteCardView(note: Note(text: "With video", imageData: nil, videoURL: URL(string: "https://example.com/video.mp4")))

    }
}
