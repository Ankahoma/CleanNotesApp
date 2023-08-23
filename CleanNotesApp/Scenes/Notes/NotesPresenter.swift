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
  weak var viewController: NotesViewController?
}

extension NotesPresenter: NotesPresentationLogic {
    func presentNotes(response: Notes.GetNotes.Response) {
        
        print("PRESENTER")
        print(response.notes)
        print("PRESENTER")
        
        let viewModel = Notes.GetNotes.ViewModel(notes: response.notes)
        viewController?.displayNotes(viewModel: viewModel)
        print("PRESENTER -2")
        print(viewModel.notes)
        print("PRESENTER -2")
        
//      viewController?.displayNotes(viewModel: viewModel)
    }
}
