//
//  SearchView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct SearchView: View {
	private let title = Settings.TabBarTitles.search
	private let settings = Settings.Search.self
	@State var searchText = String()
	@State var isPresented = Bool()
	@State var titleText = String()
	
	var models: [GeneralModel] = GeneralModel.topScrollModels
	
	private let columns = [
		GridItem(.flexible()),
		GridItem(.flexible())
	]
	
	var body: some View {
		NavigationStack {
			VStack(alignment: .leading) {
				Text(settings.categoriesSearch)
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
									titleText = model.title
								}
								.navigationDestination(isPresented: $isPresented) {
									SearchDetailView(title: $titleText,
													 models: models,
													 isPresented: $isPresented)
								}
						}
					}
					.padding([.leading, .trailing])
				}
			}
			.navigationTitle(title)
		}
		.searchable(text: $searchText, prompt: settings.searchPlaceHolder)
	}
}

struct SearchView_Previews: PreviewProvider {
	static let mockModels = GeneralModel.topScrollModels
	
	static var previews: some View {
		SearchView(models: mockModels)
	}
}
