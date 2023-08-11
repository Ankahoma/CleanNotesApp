//
//  NoteDetailsInteractor.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.

import UIKit

protocol NoteDetailsBusinessLogic {
    func doSomething(request: NoteDetails.Something.Request)
}

protocol NoteDetailsDataStore {
    //var name: String { get set }
}

class NoteDetailsInteractor: NoteDetailsBusinessLogic, NoteDetailsDataStore {
    var presenter: NoteDetailsPresentationLogic?
    var worker: NoteDetailsWorker?
    //var name: String = ""
    
    // MARK: Do something
    
    func doSomething(request: NoteDetails.Something.Request) {
        worker = NoteDetailsWorker()
        worker?.doSomeWork()
        
        let response = NoteDetails.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
