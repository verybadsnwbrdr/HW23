//
//  SearchView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct SearchView: View {
    private let title = Settings.TabBarTitles.search
    
    var body: some View {
        NavigationView {
            Text("")
                .navigationTitle(title)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
