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
		ZStack(alignment: .bottom) {
            Rectangle()
                .fill(.gray)
                .frame(height: 60, alignment: .bottom)
				.opacity(0.1)
				.gesture(
					TapGesture()
						.onEnded {
							isPresented.toggle()
						}
				)
            HStack {
				Image(playingSong.cover)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 46, height: 46)
                    .cornerRadius(5)
                    .shadow(color: .gray, radius: 5)
                Text(playingSong.songName)
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
			FullScreenPlayerView(playingSong: playingSong, isPresented: $isPresented)
				.offset(x: 0, y: 50)
				.animation(.easeInOut, value: isPresented)
        }
		.offset(x: 0, y: -50)
    }
}



struct PlayerView_Previews: PreviewProvider {
	static let mockSong = SongInfoModel.mockModel
	
	static var previews: some View {
		PlayerView(playingSong: mockSong)
	}
}
