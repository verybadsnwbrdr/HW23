//
//  LargePlayerView.swift
//  HW23
//
//  Created by Anton on 15.12.2022.
//

import SwiftUI

struct LargePlayerView: View {
    @State private var musicProgress: Float = 100
    private var songDuration: Float = 155
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

				Image("1")
					.resizable()
					.frame(width: 350, height: 350)
					.cornerRadius(15)
					.shadow(radius: 10)

                MusicProgressPlayerView(musicProgress: $musicProgress,
                                        songDuration: songDuration)

                HStack(spacing: 80) {
                    CustomButtonView(image: "backward.fill", size: 47)
                    CustomButtonView(image: "play.fill", size: 43)
                    CustomButtonView(image: "forward.fill", size: 47)
                }
                    .shadow(radius: 10)

                Slider(value: $volumeSettings, in: 0 ... 100) {
                } minimumValueLabel: {
                    Image(systemName: "speaker.fill")
                } maximumValueLabel: {
                    Image(systemName: "speaker.wave.3.fill")
                }
                    .tint(.white)

                HStack(spacing: 80) {
                    CustomButtonView(image: "quote.bubble", size: 26)
                    CustomButtonView(image: "airplayaudio", size: 26)
                    CustomButtonView(image: "list.bullet", size: 26)
                }
            }
            .padding([.leading, .trailing], 30)
            .padding(.bottom)
            .foregroundColor(.white)
        }
    }
}

struct LargePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        LargePlayerView()
    }
}
