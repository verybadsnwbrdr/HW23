//
//  FullScreenPlayerView.swift
//  HW23
//
//  Created by Anton on 17.12.2022.
//

import SwiftUI

struct FullScreenPlayerView: View {
	var playingSong: SongInfoModel
	@Binding var isPresented: Bool
	@State private var xOffset: CGSize = .zero
	
	var body: some View {
		ZStack {
			if isPresented {
				LargePlayerView(playingSong: playingSong)
					.ignoresSafeArea()
					.transition(.move(edge: .bottom))
					.offset(x: 0, y: xOffset.height)
					.animation(.easeInOut, value: xOffset)
					.gesture(dragGesture)
			}
		}
	}
}

private extension FullScreenPlayerView {
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

struct FullScreenPlayerView_Previews: PreviewProvider {
	static let mockSong = SongInfoModel.mockModel
	
	static var previews: some View {
		FullScreenPlayerView(playingSong: mockSong, isPresented: .constant(true))
	}
}

