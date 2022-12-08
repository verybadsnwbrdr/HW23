//
//  RadioModel.swift
//  HW23
//
//  Created by Anton on 05.12.2022.
//

import Foundation

struct RadioScreenModel {
    var chapterTitle: String
    var title: String
    var subTitle: String?
    var image: String
}

extension RadioScreenModel {
    static let topScrollModels: [RadioScreenModel] = [
        RadioScreenModel(chapterTitle: "Избранная коллекция", title: "Музыка разных эпох и жанров", image: "2"),
        RadioScreenModel(chapterTitle: "Избранная радиостанция", title: "Поп-музыка", subTitle: "Станция Apple Music", image: "3"),
        RadioScreenModel(chapterTitle: "Избранная коллекция", title: "Музыка для тренировок", image: "1"),
        RadioScreenModel(chapterTitle: "Избранная коллекция", title: "Музыка для мотивации", image: "4"),
        RadioScreenModel(chapterTitle: "Избранная коллекция", title: "Музыка для спокойствия", image: "5"),
        RadioScreenModel(chapterTitle: "Избранная коллекция", title: "Музыка для сна", image: "6")
    ]
    
    static let bottomScrollModels: [RadioScreenModel] = [
        RadioScreenModel(chapterTitle: "Ностальгия по поп-музыке 2000-х", title: "Apple Music Поп", image: "7"),
        RadioScreenModel(chapterTitle: "Ностальгия по ню-металу", title: "Apple Music Хард-рок", image: "8"),
        RadioScreenModel(chapterTitle: "Ностальгия по старой эстраде", title: "Apple Music", image: "9"),
        RadioScreenModel(chapterTitle: "Ностальгия по золотой эре хип-хопа", title: "Apple Music Хип-Хоп", image: "10"),
        RadioScreenModel(chapterTitle: "Ностальгия по постпанк-ривайвлу", title: "Apple Music Альтернатива", image: "11"),
        RadioScreenModel(chapterTitle: "Ностальгия по электронике", title: "Apple Music Электроника", image: "12"),
        RadioScreenModel(chapterTitle: "Ностальгия по рейву", title: "Apple Music Танцевальная", image: "13")
    ]
}
