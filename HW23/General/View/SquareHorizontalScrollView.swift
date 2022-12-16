//
//  SquareHorizontalScrollView.swift
//  HW23
//
//  Created by Anton on 17.12.2022.
//

import SwiftUI

struct SquareHorizontalScrollView: View {
	var models: [GeneralModel] = GeneralModel.bottomScrollModels
	
	var body: some View {
		VStack(spacing: 5) {
			Divider()
				.padding([.leading, .trailing])
			
			HStack {
				Text("Название секции тут")
					.font(.system(size: 20, weight: .bold))
				Spacer()
			}
				.padding([.leading, .trailing])
			
			ScrollView(.horizontal, showsIndicators: false) {
				HStack {
					ForEach(models, id: \.title) { model in
						VStack(alignment: .leading) {
							Image(model.image)
								.resizable()
								.frame(width: 240, height: 240)
								.cornerRadius(12)
							Text(model.chapterTitle)
							Text(model.title)
								.foregroundColor(.gray)
						}
						.frame(width: 240, height: 300)
					}
				}
				.padding([.leading, .trailing])
			}
		}
		
    }
}

struct SquareHorizontalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SquareHorizontalScrollView()
    }
}
