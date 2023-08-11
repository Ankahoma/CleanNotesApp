//
//  NoteCellModel.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 11.08.2023.
//

import Foundation

struct NoteModel: Codable {
    var noteId: Int?
    var createdAt: Date?
    var title: String?
    var body: String?
}


