//
//  NotesListInteractor.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.


import UIKit

protocol NotesListBusinessLogic {
  func fetchNotes(request: NotesList.Something.Request)
}

protocol NotesListDataStore {
  //var name: String { get set }
}

class NotesListInteractor {
    var presenter: NotesListPresentationLogic?
    var worker: NotesListWorker?
    //var name: String = ""
}
 
extension NotesListInteractor: NotesListBusinessLogic {
    func fetchNotes(request: NotesList.Something.Request) {
      worker = NotesListWorker()
      worker?.doSomeWork()
      
      let response = NotesList.Something.Response()
      presenter?.presentNotesList(response: response)
    }
  }
 
extension NotesListInteractor: NotesListDataStore {
    
}
