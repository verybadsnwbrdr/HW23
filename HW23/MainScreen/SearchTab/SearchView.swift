//
//  SearchView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct SearchView: View {
    private let title = Settings.TabBarTitles.search
    @State var searchText = ""
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
			VStack(alignment: .leading) {
				Text("Поиск по категориям")
					.font(.title3)
					.bold()
				
                ScrollView(.vertical) {
                    LazyVGrid(columns: columns) {
                        ForEach(0 ..< 20) { item in
                            Image("1")
                                .resizable()
                                .frame(height: 110)
                                .cornerRadius(10)
                                .overlay(alignment: .leading) {
                                    VStack {
                                        Spacer()
                                        Text("Alo")
                                            .foregroundColor(.white)
                                    }
                                    .padding()
                                }
                        }
                    }
                }
            }
			.padding([.leading, .trailing])
			.edgesIgnoringSafeArea(.bottom)
            .navigationTitle(title)
        }
        .searchable(text: $searchText, prompt: "Ваша медиатека")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
