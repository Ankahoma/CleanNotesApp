//
//  NoteDetailsModels.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 11.08.2023.

enum NoteDetails {
    
    enum GetNoteDetails {
        
        struct Request {}
        
        struct Response {
            var note: NoteModel?
        }
        
        struct ViewModel {
            var note: NoteModel?
        }
    }
}
