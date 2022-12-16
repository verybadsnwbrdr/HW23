//
//  GeneralModel.swift
//  HW23
//
//  Created by Anton on 05.12.2022.
//

import Foundation

struct GeneralModel {
    var chapterTitle: String
    var title: String
    var subTitle: String?
    var image: String
}

extension GeneralModel {
    static let topScrollModels: [GeneralModel] = [
        GeneralModel(chapterTitle: "Избранная коллекция", title: "Музыка разных эпох и жанров", image: "2"),
        GeneralModel(chapterTitle: "Избранная радиостанция", title: "Поп-музыка", subTitle: "Станция Apple Music", image: "3"),
        GeneralModel(chapterTitle: "Избранная коллекция", title: "Музыка для тренировок", image: "1"),
        GeneralModel(chapterTitle: "Избранная коллекция", title: "Музыка для мотивации", image: "4"),
        GeneralModel(chapterTitle: "Избранная коллекция", title: "Музыка для спокойствия", image: "5"),
        GeneralModel(chapterTitle: "Избранная коллекция", title: "Музыка для сна", image: "6")
    ]
    
    static let bottomScrollModels: [GeneralModel] = [
        GeneralModel(chapterTitle: "Ностальгия по поп-музыке 2000-х", title: "Apple Music Поп", image: "7"),
        GeneralModel(chapterTitle: "Ностальгия по ню-металу", title: "Apple Music Хард-рок", image: "8"),
        GeneralModel(chapterTitle: "Ностальгия по старой эстраде", title: "Apple Music", image: "9"),
        GeneralModel(chapterTitle: "Ностальгия по золотой эре хип-хопа", title: "Apple Music Хип-Хоп", image: "10"),
        GeneralModel(chapterTitle: "Ностальгия по постпанк-ривайвлу", title: "Apple Music Альтернатива", image: "11"),
        GeneralModel(chapterTitle: "Ностальгия по электронике", title: "Apple Music Электроника", image: "12"),
        GeneralModel(chapterTitle: "Ностальгия по рейву", title: "Apple Music Танцевальная", image: "13")
    ]
}
