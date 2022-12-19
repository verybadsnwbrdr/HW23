//
//  MainMediaView.swift
//  HW23
//
//  Created by Anton on 29.11.2022.
//

import SwiftUI

struct MainMediaView: View {
    private let settings = Settings.Media.self
    
    var body: some View {
        VStack {
            Text(settings.title)
                .bold()
                .font(.system(size: 22))
            Text(settings.text)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
        }
    }
}

struct MainMediaView_Previews: PreviewProvider {
    static var previews: some View {
        MainMediaView()
    }
}
