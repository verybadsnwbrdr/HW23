//
//  LibraryView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct LibraryView: View {
    private let titles = Settings.TabBarTitles.self
    private let images = Settings.TabBarImages.self
    
    var body: some View {
		ZStack(alignment: .bottom) {
			TabView {
				VStack {
					MediaScreenView()
					Rectangle()
						.frame(height: 53)
						.opacity(0)
				}
				.tabItem {
					Image(systemName: images.media)
					Text(titles.media)
				}
				
				VStack {
					RadioScreenView()
					Rectangle()
						.frame(height: 53)
						.opacity(0)
				}
				.tabItem {
					Image(systemName: images.radio)
					Text(titles.radio)
				}
				
				VStack {
					SearchView()
					Rectangle()
						.frame(height: 53)
						.opacity(0)
				}
				.tabItem {
					Image(systemName: images.search)
					Text(titles.search)
				}
			}
			.accentColor(.red)
			PlayerView(playingSong: SongInfoModel.mockModel)
		}
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

//					PlayerView(playingSong: SongInfoModel.mockModel)
