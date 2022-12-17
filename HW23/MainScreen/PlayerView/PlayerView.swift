//
//  PlayerView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct PlayerView: View {
    private let settings = Settings.Player.self
	@State private var isPresented = false
	@State private var xOffset: CGSize = .zero
	
	var playingSong: SongInfoModel
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.gray)
                .frame(height: 60, alignment: .bottom)
				.opacity(0.1)
            HStack {
                Image(settings.songImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 46, height: 46)
                    .cornerRadius(5)
                    .shadow(color: .gray, radius: 5)
                Text(settings.songName)
                Spacer()
                Button(action: { }) {
                    Image(systemName: settings.playButton)
                        .foregroundColor(.black)
                }
                Button(action: { }) {
                    Image(systemName: settings.forwardButton)
                        .foregroundColor(.black)
                }
            }
			.padding([.top, .bottom], 5)
			.padding([.leading, .trailing], 30)
        }
		.gesture(
			TapGesture()
				.onEnded {
					isPresented.toggle()
				}
		)
		.fullScreenCover(isPresented: $isPresented) {
			LargePlayerView(playingSong: playingSong)
				.offset(x: 0, y: xOffset.height)
				.animation(.linear, value: xOffset)
				.gesture(dragGesture)
		}
    }
}

private extension PlayerView {
	var dragGesture: some Gesture {
		DragGesture(minimumDistance: 10)
			.onChanged { value in
				if value.translation.height > 0 {
					xOffset.height = value.translation.height
				}
			}
			.onEnded { value in
				if xOffset.height > 300 {
					isPresented.toggle()
					xOffset.height = .zero
				} else {
					xOffset.height = .zero
				}
			}
	}
}

struct PlayerView_Previews: PreviewProvider {
	static let mockSong = SongInfoModel.mockModel
	
	static var previews: some View {
		PlayerView(playingSong: mockSong)
	}
}
