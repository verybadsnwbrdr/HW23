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
		slider.value = value
		slider.thumbTintColor = UIColor(white: 1, alpha: 0)
		slider.tintColor = .white
		slider.addTarget(context.coordinator, action: #selector(Coordinator.valueChanged(_:)), for: .valueChanged)
		return slider
	}
	
	func updateUIView(_ uiView: UISlider, context: Context) {
		uiView.value = self.value
	}
	
	func makeCoordinator() -> Coordinator {
		Coordinator(value: $value)
	}
}

// Coordinator

extension CustomSliderView {
	final class Coordinator: NSObject {
		private var value: Binding<Float>
		
		init(value: Binding<Float>) {
			self.value = value
		}
		
		@objc fileprivate func valueChanged(_ sender: UISlider) {
			self.value.wrappedValue = sender.value
		}
	}
}
