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
    //  var defaultNote: NoteModel { get }
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
        worker?.fetchNotes(request: request)
        var response: Notes.GetNotes.Response!
//        print("INTERACTOR")
//        print(response.notes)
//        print("INTERACTOR")
        
//        presenter?.presentNotes(response: response)
    }
}

extension NotesInteractor: NotesDataStore {
    
}

