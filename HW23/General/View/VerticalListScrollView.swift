//
//  BottomScrollView.swift
//  HW23
//
//  Created by Anton on 04.12.2022.
//

import SwiftUI

struct VerticalListScrollView: View {
	var models: [GeneralModel]
	var columns = [
		GridItem(.flexible())
	]
	
	var body: some View {
		LazyVGrid(columns: columns) {
			ForEach(models, id: \.chapterTitle) { column in
				HStack {
					Image(column.image)
						.resizable()
						.frame(width: 120,height: 120)
						.cornerRadius(10)
					
					VStack(alignment: .leading, spacing: 8) {
						Text(column.chapterTitle)
							.font(.system(size: 14))
						Text(column.title)
							.font(.system(size: 12))
					}
					.padding(.leading, 10)
					Spacer()
				}
				Divider()
			}
		}
		.padding()
	}
}

struct BottomScrollView_Previews: PreviewProvider {
	static let mockModels = GeneralModel.bottomScrollModels
	
	static var previews: some View {
		VerticalListScrollView(models: mockModels)
	}
}
