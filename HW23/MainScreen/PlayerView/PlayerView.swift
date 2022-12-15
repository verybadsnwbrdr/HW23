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
                    Image(systemName: settings.skipButton)
                        .foregroundColor(.black)
                }
            }
            .padding(EdgeInsets(top: 5, leading: 30, bottom: 5, trailing: 30))
        }
		.gesture(
			TapGesture()
				.onEnded {
					isPresented.toggle()
				}
		)
		.fullScreenCover(isPresented: $isPresented) {
			LargePlayerView(isPresented: $isPresented)
		}
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
