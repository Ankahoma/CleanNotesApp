//
//  NotesStorageService.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 12.08.2023.
//

import Foundation
import UIKit

protocol NotesStorageLogic {
    func saveNote(_ note: NoteModel)
    func removeNote(_ indexPath: IndexPath)
    func fetchNotes(request: Notes.GetNotes.Request)
}

class NotesStorageService {
    var presenter: NotesPresentationLogic?
    private let userDefaults = UserDefaults.standard
    private let notesKey = "notes"
    var defaultNote: NoteModel {
        return NoteModel(noteId: 1, createdAt: Date(),  title: "Привет!", body: "Я люблю Swift!")
    }
    var localTempStorage:[NoteModel] = []
}

extension NotesStorageService: NotesStorageLogic {

    func saveNote(_ note: NoteModel) {
        localTempStorage.append(note)
        userDefaults.set(localTempStorage, forKey:  notesKey)
    }
    
    func removeNote(_ indexPath: IndexPath) {
        localTempStorage.remove(at: indexPath.row)
        userDefaults.set(localTempStorage, forKey:  notesKey)
    }
    

    
    func fetchNotes(request: Notes.GetNotes.Request) {
        var response = Notes.GetNotes.Response(notes: localTempStorage)
        response.notes?.append(defaultNote)
        
        print("WORKER")
        print(response.notes)
        print("WORKER")
        
        presenter = NotesPresenter()
        presenter?.presentNotes(response: response)
        
    }
 
}
