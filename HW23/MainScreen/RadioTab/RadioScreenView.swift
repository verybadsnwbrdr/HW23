//
//  RadioView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct RadioScreenView: View {
    private let title = Settings.TabBarTitles.radio
    private let settings = Settings.Radio.self
	var models: [[GeneralModel]] = [
		GeneralModel.topScrollModels,
		GeneralModel.bottomScrollModels
	]
    
    var body: some View {
        NavigationView {
            ScrollView {
                Divider()
                    .padding([.leading,.trailing])
				RectangleHorizontalScrollView(models: models[0])
                Divider()
                    .padding([.leading,.trailing])
                HStack {
                    Text(settings.bottomSection)
                        .bold()
                        .font(.title2)
                    Spacer()
                }
                .padding()
				VerticalListScrollView(models: models[1])
            }
            .navigationTitle(title)
        }
    }
}

struct RadioView_Previews: PreviewProvider {
	static let mockModels = [GeneralModel.topScrollModels, GeneralModel.bottomScrollModels]
	
    static var previews: some View {
        RadioScreenView()
    }
}
