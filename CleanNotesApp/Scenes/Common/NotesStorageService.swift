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
    func fetchNotes() -> [NoteModel]
}

class NotesStorageService {
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
    
    
    func fetchNotes() -> [NoteModel] {
        
        guard let data = userDefaults.object(forKey: notesKey) as? Data
        else { return [defaultNote] }
        
        let notes = (try? JSONDecoder().decode([NoteModel].self, from: data)) ?? []
        return notes.isEmpty ? [defaultNote] : notes
    }
    
    
    
    
}
