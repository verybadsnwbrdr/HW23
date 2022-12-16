//
//  CustomButtonView.swift
//  HW23
//
//  Created by Anton on 15.12.2022.
//

import SwiftUI

struct CustomButtonView: View {
	let image: String
	let size: CGFloat
	var action = {}
	
    var body: some View {
		Button {
			action()
		} label: {
			Image(systemName: image)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: size)
				.imageScale(.large)
		}
    }
}

