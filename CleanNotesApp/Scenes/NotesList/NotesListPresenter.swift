//
//  NotesListPresenter.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.


import UIKit

protocol NotesListPresentationLogic {
  func presentNotesList(response: NotesList.Something.Response)
}

class NotesListPresenter {
  weak var viewController: NotesListViewController?
}

extension NotesListPresenter: NotesListPresentationLogic {
    func presentNotesList(response: NotesList.Something.Response) {
      let viewModel = NotesList.Something.ViewModel()
      viewController?.displayNotesList(viewModel: viewModel)
    }
}
