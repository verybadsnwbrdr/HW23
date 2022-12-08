//
//  EditScreenModel.swift
//  HW23
//
//  Created by Anton on 28.11.2022.
//

import Foundation

struct EditScreenModel: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

extension EditScreenModel {
    static var tableModels: [EditScreenModel] = [
        EditScreenModel(name: "Плейлисты", image: "music.note.list"),
        EditScreenModel(name: "Артисты", image: "music.mic"),
        EditScreenModel(name: "Альбомы", image: "square.stack"),
        EditScreenModel(name: "Песни", image: "music.note"),
        EditScreenModel(name: "Телешоу и фильмы", image: "tv"),
        EditScreenModel(name: "Видеоклипы", image: "music.note.tv"),
        EditScreenModel(name: "Жанры", image: "guitars"),
        EditScreenModel(name: "Сборники", image: "person.2.crop.square.stack"),
        EditScreenModel(name: "Авторы", image: "music.quarternote.3"),
        EditScreenModel(name: "Загружено", image: "arrow.down.circle"),
        EditScreenModel(name: "Домашняя коллекция", image: "music.note.house")
    ]
}
