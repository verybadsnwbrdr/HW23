//
//  SongInfoModel.swift
//  HW23
//
//  Created by Anton on 17.12.2022.
//

import Foundation

struct SongInfoModel {
	let songName: String
	let singer: String
	let cover: String
	let songDuration: Float
}

extension SongInfoModel {
	static let mockModel = SongInfoModel(songName: "Новый год", singer: "Стекловата", cover: "songImage", songDuration: 150)
}

