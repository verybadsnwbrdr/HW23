//
//  Float + Extension.swift
//  HW23
//
//  Created by Anton on 16.12.2022.
//

extension Float {
	func displayTime() -> String {
		"\(Int(self) / 60):\(String(format: "%02.f", self.truncatingRemainder(dividingBy: 60)))"
	}
}
