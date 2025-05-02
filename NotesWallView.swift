//
//  MainWhyView.swift
//  C7MacroChallenge
//
//  Created by Davaughn Williams on 4/29/25.
//

import SwiftUI
import SwiftData

struct NotesWallView: View {
    @Query var notes: [Note]
    @Environment(\.modelContext) private var modelContext
    @State private var showingNewNoteSheet = false
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("Why I'm doing this")
                        .font(.custom("SF Mono", size: 24))
                        .fontWeight(.semibold)
                        .bold()
                        .padding(.leading)
                    
                    Spacer()
                    
                    Button {
                        showingNewNoteSheet = true
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundStyle(.black)
                            .font(.system(size: 35))
                            .fontWeight(.ultraLight)
                            .padding()
                    }
                }
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(notes) { note in
                            NoteCardView(note: note)
                        }
                    }
                    .padding()
                }
                //            CustomTabBar()
            }
            .sheet(isPresented: $showingNewNoteSheet) {
                AddNoteView()
            }
            
        }
    }
}

#Preview {
    NotesWallView()
        .modelContainer(for: Note.self)
}
