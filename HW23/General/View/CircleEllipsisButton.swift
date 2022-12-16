//
//  CircleEllipsisButton.swift
//  HW23
//
//  Created by Anton on 16.12.2022.
//

import SwiftUI

struct CircleEllipsisButton: View {
	let size: CGFloat
	var action = {}
	
    var body: some View {
		Button {
			action()
		} label: {
			ZStack {
				Circle()
					.frame(width: 35)
					.foregroundColor(.white)
					.opacity(0.2)
					.shadow(radius: 10)
					
				Image(systemName: "ellipsis")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 20)
			}
		}
    }
}

struct CircleEllipsisButton_Previews: PreviewProvider {
    static var previews: some View {
		CircleEllipsisButton(size: 35)
    }
}
