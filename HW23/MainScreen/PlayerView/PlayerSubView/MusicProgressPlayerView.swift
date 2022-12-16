//
//  MusicProgressPlayerView.swift
//  HW23
//
//  Created by Anton on 16.12.2022.
//

import SwiftUI

struct MusicProgressPlayerView: View {
	@Binding var musicProgress: Float
	var songDuration: Float
	
    var body: some View {
		VStack(spacing: 8) {
			HStack {
				VStack(alignment: .leading) {
					Text("Ssss")
						.bold()
					Text("Evgenia")
				}
				.font(.system(size: 22))
				
				Spacer()
				
				CircleEllipsisButton(size: 35)
			}
			
			VStack(spacing: 0) {
				CustomSliderView(value: $musicProgress, maxValue: songDuration)
				HStack {
					Text(musicProgress.displayTime())
					Spacer()
					Text(songDuration.displayTime())
				}
				.font(.system(size: 14))
				.opacity(0.4)
			}
		}
    }
}
