//
//  MusicProgressPlayerView.swift
//  HW23
//
//  Created by Anton on 16.12.2022.
//

import SwiftUI

struct MusicProgressPlayerView: View {
	private let settings = Settings.Player.self
	@Binding var musicProgress: Float
	var playingSong: SongInfoModel
	
    var body: some View {
		VStack(spacing: 8) {
			HStack {
				VStack(alignment: .leading) {
					Text(playingSong.singer)
						.bold()
					Text(playingSong.songName)
				}
				.font(.system(size: 22))
				
				Spacer()
				
				CircleEllipsisButton(size: 35)
			}
			
			VStack(spacing: 0) {
				CustomSliderView(value: $musicProgress, songDuration: playingSong.songDuration)
				HStack {
					Text(musicProgress.displayTime())
					Spacer()
					Text(playingSong.songDuration.displayTime())
				}
				.font(.system(size: 14))
				.opacity(0.4)
			}
		}
    }
}
