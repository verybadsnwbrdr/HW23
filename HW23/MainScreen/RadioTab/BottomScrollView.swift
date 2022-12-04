//
//  BottomScrollView.swift
//  HW23
//
//  Created by Anton on 04.12.2022.
//

import SwiftUI

struct BottomScrollView: View {
    var columns = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(0 ..< 5) { column in
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150,height: 150)
                        .foregroundColor(.gray)
                        .opacity(0.2)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Популярное")
                        Text("То что слушают прямо сейчас")
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
    static var previews: some View {
        BottomScrollView()
    }
}
