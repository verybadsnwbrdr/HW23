//
//  LargePlayerView.swift
//  HW23
//
//  Created by Anton on 14.12.2022.
//

import SwiftUI

struct LargePlayerView: View {
    @State var musicProgress = 0.0
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Image("1")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Ssss")
                            .bold()
                        Text("Evgenia")
                    }
                    .font(.system(size: 24))
                    
                    Spacer()
                    Circle()
                        .frame(width: 35)
                        .overlay {
                            HStack(spacing: 3) {
                                Circle()
                                    .frame(width: 5)
                                Circle()
                                    .frame(width: 5)
                                Circle()
                                    .frame(width: 5)
                            }
                            .foregroundColor(.white)
                        }
                        .foregroundColor(.gray)
                        .shadow(radius: 4)
                }
                
                Slider(value: $musicProgress)

                HStack(spacing: 80) {
                    Image(systemName: "backward.fill")
                        .resizable()
                        .frame(width: 50, height: 30)
                    
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 45, height: 45)
                    
                    Image(systemName: "forward.fill")
                        .resizable()
                        .frame(width: 50, height: 30)
                    
                }
                .shadow(radius: 10)
                
                Slider(value: $musicProgress) {
                } minimumValueLabel: {
                    Image(systemName: "goforward.plus")
                } maximumValueLabel: {
                    Image(systemName: "goforward.plus")
                }
                
                
                
            }
            .padding([.leading, .trailing], 30)
            .foregroundColor(.white)
            
        }
        //        .padding()
        
    }
}

struct LargePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        LargePlayerView()
    }
}
