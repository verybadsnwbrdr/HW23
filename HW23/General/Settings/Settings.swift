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
		static let singer = "Стекловата"
		
		// MARK: - PlayerButtons
		
        static let playButton = "play.fill"
        static let forwardButton = "forward.fill"
		static let backwardButton = "backward.fill"
		static let lowerVolume = "speaker.fill"
		static let higherVolume = "speaker.wave.3.fill"
		
		// MARK: - BottomMenu
		
		static let quote = "quote.bubble"
		static let airPlay = "airplayaudio"
		static let list = "list.bullet"
    }
    
    enum Media {
        static let title = "Ищете свою музыку?"
        static let text = "Здесь появится купленная Вами в iTunes Store музыка"
        static let doneButton = "Готово"
        static let editButton = "Править"
    }
    
    enum Radio {
        static let title = "Радио"
        static let bottomSection = "Станции"
    }
	
	enum Search {
		static let categoriesSearch = "Поиск по категориям"
		static let searchPlaceHolder = "Ваша медиатека"
	}
}
