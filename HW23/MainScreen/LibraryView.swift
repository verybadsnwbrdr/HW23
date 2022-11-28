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
        TabView {
            VStack {
                MediaView()
                PlayerView()
            }
                .tabItem {
                    Image(systemName: images.media)
                    Text(titles.media)
                }
            
            VStack {
                RadioView()
                PlayerView()
            }
                .tabItem {
                    Image(systemName: images.radio)
                    Text(titles.radio)
                }
            
            VStack {
                SearchView()
                PlayerView()
            }
                .tabItem {
                    Image(systemName: images.search)
                    Text(titles.search)
                }
        }
        .accentColor(.red)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}