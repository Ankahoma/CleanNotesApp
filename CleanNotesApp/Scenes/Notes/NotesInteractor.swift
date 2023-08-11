//
//  NotesListInteractor.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.


import UIKit

//class SkillsService: SkillsServiceProtocol {
//
//    private let userDefaults = UserDefaults.standard
//    private let skillsKey = "Skills"
//    private let defaultSkills = [
//        SkillModel(skill: "Swift"),
//        SkillModel(skill: "SwiftUI"),
//        SkillModel(skill: "iOS Development"),
//        SkillModel(skill: "REST APIs"),
//        SkillModel(skill: "Git"),
//        SkillModel(skill: "Python"),
//        SkillModel(skill: "Unit Testing")
//    ]
//
//    func fetchSkills() -> [SkillModel] {
//        guard let data = userDefaults.object(forKey: skillsKey) as? Data
//        else { return defaultSkills }
//
//        let skills = (try? JSONDecoder().decode([SkillModel].self, from: data)) ?? []
//        return skills.isEmpty ? defaultSkills : skills
//    }
//
//    func saveSkills(_ skills: [SkillModel]) {
//        guard let data = try? JSONEncoder().encode(skills)
//        else { return }
//        userDefaults.set(data, forKey: skillsKey)
//    }
//}

protocol NotesBusinessLogic {
  func fetchNotes(request: Notes.GetNotes.Request)
}

protocol NotesDataStore {
//  var defaultNote: NoteModel { get }
}

class NotesInteractor {
    var worker: NotesWorker?
    var presenter: NotesPresentationLogic?
  
}
 
extension NotesInteractor: NotesBusinessLogic {
    
    func fetchNotes(request: Notes.GetNotes.Request) {
      let response = Notes.GetNotes.Response()
      presenter?.presentNotes(response: response)
    }
  }
 
extension NotesInteractor: NotesDataStore {
//    var defaultNote: NoteModel {
//        return NoteModel(noteId: 1, createdAt: Date(),  title: "Привет!", body: "Я люблю Swift!")
    }
}
