//
//  RadioView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct RadioView: View {
    
    private let title = Settings.TabBarTitles.radio
    
    var body: some View {
        NavigationView {
            Text("2")
                .navigationTitle(title)
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
