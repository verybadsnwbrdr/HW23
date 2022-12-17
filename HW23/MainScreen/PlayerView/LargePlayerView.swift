//
//  LargePlayerView.swift
//  HW23
//
//  Created by Anton on 15.12.2022.
//

import SwiftUI

struct LargePlayerView: View {
    private let settings = Settings.Player.self
    var playingSong: SongInfoModel
    
    @State private var musicProgress: Float = 100
    @State private var volumeSettings = 34.0
    
	var body: some View {
		ZStack {
			LinearGradient(colors: [ .gray,.brown, .brown], startPoint: .top, endPoint: .bottom)
				.ignoresSafeArea()
                
			
            VStack(spacing: 25) {
                Capsule()
                    .frame(width: 40, height: 6)
                    .opacity(0.5)
                    .padding(.top, 10)

                Image(playingSong.cover)
					.resizable()
                    .aspectRatio(contentMode: .fill)
					.frame(width: 350, height: 350)
					.cornerRadius(15)
					.shadow(radius: 10)

                MusicProgressPlayerView(musicProgress: $musicProgress, playingSong: playingSong)

                HStack(spacing: 80) {
                    CustomButtonView(image: settings.backwardButton, size: 47)
                    CustomButtonView(image: settings.playButton, size: 43)
                    CustomButtonView(image: settings.forwardButton, size: 47)
                }
                    .shadow(radius: 10)

                Slider(value: $volumeSettings, in: 0 ... 100) {
                } minimumValueLabel: {
                    Image(systemName: settings.lowerVolume)
                } maximumValueLabel: {
                    Image(systemName: settings.higherVolume)
                }
                    .tint(.white)

                HStack(spacing: 80) {
                    CustomButtonView(image: settings.quote, size: 26)
                    CustomButtonView(image: settings.airPlay, size: 26)
                    CustomButtonView(image: settings.list, size: 26)
                }
            }
            .padding([.leading, .trailing], 30)
            .padding(.bottom)
            .foregroundColor(.white)
        }
    }
}

struct LargePlayerView_Previews: PreviewProvider {
    static let mockSong = SongInfoModel.mockModel
    
    static var previews: some View {
        LargePlayerView(playingSong: mockSong)
    }
}
