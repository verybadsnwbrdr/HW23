//
//  SearchDetailView.swift
//  HW23
//
//  Created by Anton on 16.12.2022.
//

import SwiftUI

struct SearchDetailView: View {
	// TODO: - Add Model
//	let model: [GeneralModel]
	private let title = Settings.TabBarTitles.radio
	private let settings = Settings.Radio.self
	@Binding var isPresented: Bool
	
    var body: some View {
		NavigationView {
			ScrollView {
				Divider()
					.padding([.leading,.trailing])
				RectangleHorizontalScrollView()
				SquareHorizontalScrollView()
				SquareHorizontalScrollView()
				SquareHorizontalScrollView()
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

//struct SearchDetailView_Previews: PreviewProvider {
//    static var previews: some View {
////		SearchDetailView(model: RadioScreenModel.topScrollModels)
////		SearchDetailView()
//    }
//}
