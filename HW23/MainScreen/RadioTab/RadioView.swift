//
//  RadioView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct RadioView: View {
    private let title = Settings.TabBarTitles.radio
    private let settings = Settings.Radio.self

    var body: some View {
        NavigationView {
            ScrollView {
                Divider()
                    .padding([.leading,.trailing])
                TopScrollView()
                Divider()
                    .padding([.leading,.trailing])
                HStack {
                    Text(settings.bottomSection)
                        .bold()
                        .font(.title2)
                    Spacer()
                }
                .padding()
                BottomScrollView()
            }
                .navigationTitle(title)
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
