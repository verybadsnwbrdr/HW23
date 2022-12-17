//
//  SearchDetailView.swift
//  HW23
//
//  Created by Anton on 16.12.2022.
//

import SwiftUI

struct SearchDetailView: View {
	let models: [GeneralModel]
	private let title = Settings.TabBarTitles.radio
	private let settings = Settings.Search.self
	@Binding var isPresented: Bool
	
	var body: some View {
		NavigationStack {
			ScrollView {
				Divider()
					.padding([.leading,.trailing])
				RectangleHorizontalScrollView(models: models)
				SquareHorizontalScrollView(models: models)
				SquareHorizontalScrollView(models: models)
				SquareHorizontalScrollView(models: models)
			}
		}
		.navigationTitle("Radio")
		.navigationBarBackButtonHidden()
		.toolbar {
			leadingTopToolBar
			trailingTopToolBar
		}
	}
}

private extension SearchDetailView {
	var leadingTopToolBar: some ToolbarContent {
		ToolbarItemGroup(placement: .navigationBarLeading) {
			CustomButtonView(image: "chevron.backward", size: 12, action: {
				isPresented.toggle()
			})
		}
	}
	
	var trailingTopToolBar: some ToolbarContent {
		ToolbarItemGroup(placement: .navigationBarTrailing) {
			CircleEllipsisButton(size: 35)
		}
	}
}

struct SearchDetailView_Previews: PreviewProvider {
	@State static var mockBinding = true
	static let mockModels = GeneralModel.topScrollModels
	
    static var previews: some View {
		SearchDetailView(models: mockModels, isPresented: $mockBinding)
    }
}
