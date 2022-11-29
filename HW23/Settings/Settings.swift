//
//  Settings.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import Foundation

enum Settings {
    enum TabBarTitles {
        static let media = "Медиатека"
        static let radio = "Радио"
        static let search = "Поиск"
    }
    
    enum TabBarImages {
        static let media = "square.stack.fill"
        static let radio = "dot.radiowaves.left.and.right"
        static let search = "magnifyingglass"
    }
    
    enum Player {
        static let songName = "Новый год"
        static let songImage = "songImage"
        static let playButton = "play.fill"
        static let skipButton = "forward.fill"
    }
    
    enum Media {
        static let title = "Ищете свою музыку?"
        static let text = "Здесь появится купленная Вами в iTunes Store музыка"
        static let doneButton = "Готово"
        static let editButton = "Править"
    }
}
