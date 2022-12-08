//
//  RadioView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct RadioScreenView: View {
    private let title = Settings.TabBarTitles.radio
    private let settings = Settings.Radio.self
    
    var body: some View {
        NavigationView {
            ScrollView {
                Divider()
                    .padding([.leading,.trailing])
                RadioTopScrollView()
                Divider()
                    .padding([.leading,.trailing])
                HStack {
                    Text(settings.bottomSection)
                        .bold()
                        .font(.title2)
                    Spacer()
                }
                .padding()
                RadioBottomScrollView()
            }
            .navigationTitle(title)
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioScreenView()
    }
}
