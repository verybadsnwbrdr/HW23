//
//  EditScreenModel.swift
//  HW23
//
//  Created by Anton on 28.11.2022.
//

import Foundation

struct Model {
    
}

struct TableModel: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

extension Model {
    static var tableModels: [TableModel] = [
        .init(name: "Плейлисты", image: "music.note.list"),
        .init(name: "Артисты", image: "music.mic"),
        .init(name: "Альбомы", image: "square.stack"),
        .init(name: "Песни", image: "music.note"),
        .init(name: "Телешоу и фильмы", image: "tv"),
        .init(name: "Видеоклипы", image: "music.note.tv"),
        .init(name: "Жанры", image: "guitars"),
        .init(name: "Сборники", image: "person.2.crop.square.stack"),
        .init(name: "Авторы", image: "music.quarternote.3"),
        .init(name: "Загружено", image: "arrow.down.circle"),
        .init(name: "Домашняя коллекция", image: "music.note.house")
    ]
}
