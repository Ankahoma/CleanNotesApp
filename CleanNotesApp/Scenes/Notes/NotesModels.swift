//
//  NotesListModels.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 11.08.2023.
import Foundation

enum Notes {
    
  enum GetNotes {
      
    struct Request {}
      
    struct Response {
        var notes: [NoteModel]?
    }
      
    struct ViewModel {
        var notes: [NoteModel]?
    }
  }
}
