//
//  NotesListInteractor.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.


import UIKit


protocol NotesBusinessLogic {
    func fetchNotes(request: Notes.GetNotes.Request)
    func saveNote(request: Notes.GetNotes.Request)
}

protocol NotesDataStore {
    
}

class NotesInteractor {
    var worker: NotesStorageService?
    var presenter: NotesPresentationLogic?
    
}

extension NotesInteractor: NotesBusinessLogic {
    func saveNote(request: Notes.GetNotes.Request) {
        // worker.saveNotes
    }
    
    
    func fetchNotes(request: Notes.GetNotes.Request) {
        worker = NotesStorageService()
        let response = Notes.GetNotes.Response(notes: (worker?.fetchNotes(request: request)))
        presenter?.presentNotes(response: response)
    }
}

extension NotesInteractor: NotesDataStore {
    
}

