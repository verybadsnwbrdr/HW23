//
//  MediaView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct MediaView: View {
    private let title = Settings.TabBarTitles.media
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Ищете свою музыку?")
                    .bold()
                    .font(.system(size: 22))
                Text("Здесь появится купленная Вами в iTunes Store музыка")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            }
            .padding()
            .navigationTitle(title)
            .navigationBarItems(
                trailing: NavigationLink(destination: EditScreenView()) {
                    Text("Править")
                        .foregroundColor(.red)
                }
            )
        }
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}
