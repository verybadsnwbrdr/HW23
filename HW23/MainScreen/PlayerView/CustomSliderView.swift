//
//  CustomSliderView.swift
//  HW23
//
//  Created by Anton on 15.12.2022.
//

import SwiftUI

struct CustomSliderView: UIViewRepresentable {
	@Binding var value: Float
	var maxValue: Float
	
	func makeUIView(context: Context) -> UISlider {
		let slider = UISlider()
		
		slider.minimumValue = 0
		slider.maximumValue = maxValue
		slider.setValue(value, animated: true)
		slider.thumbTintColor = UIColor(white: 1, alpha: 0)
		slider.tintColor = .white
		return slider
	}
	
	func updateUIView(_ uiView: UISlider, context: Context) {
		
	}
}
