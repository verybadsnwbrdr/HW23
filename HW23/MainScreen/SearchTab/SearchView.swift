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
	@State var isPresented = false
	
	private var models: [GeneralModel] = GeneralModel.topScrollModels
	
	private let columns = [
		GridItem(.flexible()),
		GridItem(.flexible())
	]
	
	var body: some View {
		NavigationStack {
			VStack(alignment: .leading) {
				Text("Поиск по категориям")
					.font(.title3)
					.bold()
					.padding([.leading, .trailing])
				
				ScrollView(.vertical) {
					LazyVGrid(columns: columns) {
						ForEach(models, id: \.title) { model in
							Image(model.image)
								.resizable()
								.frame(height: 125)
								.cornerRadius(10)
								.overlay(alignment: .leading) {
									VStack {
										Spacer()
										Text(model.title)
											.font(.system(size: 11, weight: .bold))
											.foregroundColor(.white)
									}
									.padding([.leading, .bottom], 10)
								}
								.onTapGesture {
									isPresented.toggle()
								}
								.navigationDestination(isPresented: $isPresented) {
									// TODO: - Add Model
									SearchDetailView(isPresented: $isPresented)
								}
						}
					}
					.padding([.leading, .trailing])
				}
			}
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
