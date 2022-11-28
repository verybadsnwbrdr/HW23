//
//  EditScreenModel.swift
//  HW23
//
//  Created by Anton on 28.11.2022.
//

import Foundation

struct EditScreenModel {
//    static var tableModels: [TableModel]
}

struct TableModel: Hashable, Identifiable {
    var id = UUID()
    
    var name: String
    var image: String
}

extension EditScreenModel {
    static var tableModels = [
        TableModel(name: "Плейлисты", image: "music.note.list"),
        TableModel(name: "Артисты", image: "music.mic"),
        TableModel(name: "Альбомы", image: "square.stack")
    ]
}
