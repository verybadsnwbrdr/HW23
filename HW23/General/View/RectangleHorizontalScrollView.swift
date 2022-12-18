//
//  RadioTopScrollView.swift
//  HW23
//
//  Created by Anton on 04.12.2022.
//

import SwiftUI

struct RectangleHorizontalScrollView: View {
	var models: [GeneralModel]
    var rows = [
        GridItem(.fixed(280))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(models, id: \.title) { row in
                    VStack(alignment: .leading){
                        Text(row.chapterTitle)
                            .foregroundColor(.gray)
                        Text(row.title)
                            .bold()
                        Text(row.subTitle ?? " ")
                            .foregroundColor(.gray)
                        Image(row.image)
                            .resizable()
                            .frame(width: 350, height: 240)
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
        }
    }
}

struct TopScrollView_Previews: PreviewProvider {
	static let mockModels = GeneralModel.topScrollModels
	
    static var previews: some View {
        RectangleHorizontalScrollView(models: mockModels)
    }
}
