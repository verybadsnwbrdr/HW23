//
//  PlayerView.swift
//  HW23
//
//  Created by Anton on 26.11.2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.gray)
                .frame(height: 60, alignment: .bottom)
                .opacity(0.1)
            HStack {
                Rectangle()
                    .fill(.gray)
                    .frame(width: 42, height: 42)
                    .opacity(0.1)
                    .cornerRadius(5)
                    .shadow(color: .gray, radius: 5)
                Text("Не исполняется")
                Spacer()
                Button (action: { }) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                }
                Button (action: { }) {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.black)
                }
            }
            .padding(EdgeInsets(top: 5, leading: 30, bottom: 5, trailing: 30))
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
