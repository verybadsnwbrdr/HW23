//
//  MediaScreenView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct MediaScreenView: View {
    private let settings = Settings.Media.self
    @State var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                if !isPresented {
                    MainMediaView()
                        .padding()
                } else {
                    EditScreenView()
                }
            }
            .navigationTitle(Settings.TabBarTitles.media)
            .navigationBarItems(
                trailing: Button(isPresented ? settings.editButton : settings.doneButton) {
                    isPresented.toggle()
                }
                    .foregroundColor(.red)
            )
        }
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaScreenView()
    }
}
