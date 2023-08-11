//
//  NoteDetailsPresenter.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.


import UIKit

protocol NoteDetailsPresentationLogic {
    func presentSomething(response: NoteDetails.Something.Response)
}

class NoteDetailsPresenter: NoteDetailsPresentationLogic {
    weak var viewController: NoteDetailsDisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: NoteDetails.Something.Response) {
        let viewModel = NoteDetails.Something.ViewModel()
        viewController?.displayNotesList(viewModel: viewModel)
    }
}
