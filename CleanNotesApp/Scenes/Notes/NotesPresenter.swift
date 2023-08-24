//
//  NotesListPresenter.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.


import UIKit

protocol NotesPresentationLogic {
    func presentNotes(response: Notes.GetNotes.Response)
    
}

class NotesPresenter {
    weak var viewController: NotesDisplayLogic?
    
}

extension NotesPresenter: NotesPresentationLogic {
    
    func presentNotes(response: Notes.GetNotes.Response) {
        let viewModel = Notes.GetNotes.ViewModel(notes: response.notes)
        viewController?.displayNotes(viewModel: viewModel)
    }
}
