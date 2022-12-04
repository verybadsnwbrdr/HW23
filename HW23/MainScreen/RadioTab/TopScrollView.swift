//
//  TopScrollView.swift
//  HW23
//
//  Created by Anton on 04.12.2022.
//

import SwiftUI

struct TopScrollView: View {
    var rows = [
        GridItem(.fixed(280))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(0 ..< 5) { row in
                    VStack(alignment: .leading){
                        Text("Избранная радиостанция")
                            .foregroundColor(.gray)
                        Text("Популярное")
                            .bold()
                        Text("То, что слушают прямо сейчас")
                            .foregroundColor(.gray)
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 300)
                            .foregroundColor(.gray)
                            .opacity(0.2)
                    }
                }
            }
            .padding()
        }
    }
}

struct TopScrollView_Previews: PreviewProvider {
    static var previews: some View {
        TopScrollView()
    }
}
