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
//        ZStack(alignment: .topLeading) {
//            RoundedRectangle(cornerRadius: 25)
//                .fill(Color(.systemGray5))
//                .frame(width: 175, height: (note.videoURL != nil) || note.imageData != nil ? 224 : 100)
//            
//            if let text = note.text {
//                Text(text)
//                    .font(.custom("SF Mono", size: 12))
//                    .fontWeight(.semibold)
//                    .frame(maxWidth: 175, maxHeight: 100, alignment: .leading)
//                    .multilineTextAlignment(.leading)
////                    .padding([.leading, .trailing])
//            }
//            
//            if let video = note.videoURL {
//                ZStack {
//                    Image(systemName: "play.circle.fill")
//                        .resizable()
//                        .frame(width: 40, height: 40)
//                        .padding()
//                    
//                    
//                }
//            }
//            
//            if let photo = note.imageData, let image = UIImage(data: photo) {
//                Image(uiImage: image)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 175, height: 224)
//                    .clipped()
//                    .cornerRadius(16)
//            }
//        }
        
        VStack(alignment: .leading, spacing: 0) {
            
            // Image or video
            
            if let photo = note.imageData, let image = UIImage(data: photo) {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 175, height: 224)
                    .clipped()
                    .cornerRadius(16, corners: [.topLeft, .topRight])
            } else if note.videoURL != nil {
                ZStack {
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 175, height: 224)
                        .cornerRadius(16, corners: [.topLeft, .topRight])
                    
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(.white)
                }
            }
            
            // Text
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(.systemGray5))
                    .frame(width: 175, height: 100)
//                    .cornerRadius(16, corners: [.bottomLeft, .bottomRight])
                
                if let text = note.text {
                    Text(text)
                        .font(.custom("SF Mono", size: 12))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                        .frame(maxWidth: 155, alignment: .leading)
                        .padding()
                }
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    VStack {
//        NoteCardView(note: Note(text: "I want to make my family proud dkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkddkdkdkdkkddkdkdkkdkdkdkdkdkdkd", imageData: nil, videoURL: nil))
        
        let sampleImage = UIImage(named: "samplePhoto")!
        let imageData = sampleImage.jpegData(compressionQuality: 1.0)
        return NoteCardView(note: Note(text: "Note with image", imageData: imageData, videoURL: nil))
        
//        NoteCardView(note: Note(text: "With video", imageData: nil, videoURL: URL(string: "sampleVideo")))

    }
}
