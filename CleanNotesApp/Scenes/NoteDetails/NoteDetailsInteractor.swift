//
//  NoteDetailsInteractor.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.

import UIKit

protocol NoteDetailsBusinessLogic {
    func doSomething(request: NoteDetails.GetNoteDetails.Request)
}

protocol NoteDetailsDataStore {
    //var name: String { get set }
}

class NoteDetailsInteractor: NoteDetailsBusinessLogic, NoteDetailsDataStore {
    var presenter: NoteDetailsPresentationLogic?
    //var name: String = ""
    
    // MARK: Do something
    
    func doSomething(request: NoteDetails.GetNoteDetails.Request) {
        
//        let response = NoteDetails.GetNoteDetails.Response()
//        presenter?.presentSomething(response: response)
    }
}
