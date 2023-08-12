//
//  NotesListInteractor.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.


import UIKit


protocol NotesBusinessLogic {
  func fetchNotes(request: Notes.GetNotes.Request)
}

protocol NotesDataStore {
//  var defaultNote: NoteModel { get }
}

class NotesInteractor {
    var worker: NotesStorageService?
    var presenter: NotesPresentationLogic?
  
}
 
extension NotesInteractor: NotesBusinessLogic {
    
    func fetchNotes(request: Notes.GetNotes.Request) {
      let response = Notes.GetNotes.Response()
      presenter?.presentNotes(response: response)
    }
  }
 
extension NotesInteractor: NotesDataStore {

    }

