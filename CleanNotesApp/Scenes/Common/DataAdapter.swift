//
//  DataAdapter.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 13.08.2023.
//

import Foundation

protocol DataAdapterLogic {
    func adaptData(response: Notes.GetNotes.Response)
}

class DataAdapter {
    var viewModel: Notes.GetNotes.ViewModel?
}


extension DataAdapter: DataAdapterLogic {
    
    func adaptData(response: Notes.GetNotes.Response) {
        
        
    }
}
