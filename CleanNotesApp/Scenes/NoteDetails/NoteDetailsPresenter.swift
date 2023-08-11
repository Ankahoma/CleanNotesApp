//
//  NoteDetailsPresenter.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.


import UIKit

protocol NoteDetailsPresentationLogic {
    func presentSomething(response: NoteDetails.GetNoteDetails.Response)
}

class NoteDetailsPresenter: NoteDetailsPresentationLogic {
    weak var viewController: NoteDetailsDisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: NoteDetails.GetNoteDetails.Response) {
        let viewModel = NoteDetails.GetNoteDetails.ViewModel()
        viewController?.displayNotesList(viewModel: viewModel)
    }
}
