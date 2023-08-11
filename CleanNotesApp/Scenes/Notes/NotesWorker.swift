//
//  NotesWorker.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 11.08.2023.


import UIKit

protocol NotesWorkerLogic {
    func saveNotes(_ notes: [NoteModel]) -> ()
    func fetchNotes() -> [NoteModel]
}

class NotesWorker {
    private let userDefaults = UserDefaults.standard
    private let notesKey = "notes"
    var defaultNote: NoteModel {
        return NoteModel(noteId: 1, createdAt: Date(),  title: "Привет!", body: "Я люблю Swift!")
    }
}

extension NotesWorker: NotesWorkerLogic {
    func saveNotes(_ notes: [NoteModel]) {
        
    }
    
    func fetchNotes() -> [NoteModel] {
        guard let notes = userDefaults.object(forKey: notesKey) as? [NoteModel]
        else {
            return [defaultNote]
        }
        
        return notes
    }
    
    
}
