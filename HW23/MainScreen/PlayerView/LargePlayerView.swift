//
//  LargePlayerView.swift
//  HW23
//
//  Created by Anton on 15.12.2022.
//

import SwiftUI

struct LargePlayerView: View {
    @Binding var isPresented: Bool
    @State var musicProgress: Float = 100
    var songDuration: Float = 155
    @State var volumeSettings = 34.0
    @State var offset: CGSize = .zero
	
	var body: some View {
		ZStack {
			LinearGradient(colors: [ .gray,.brown, .brown], startPoint: .top, endPoint: .bottom)
				.ignoresSafeArea()
			
			VStack(spacing: 40) {
                RoundedRectangle(cornerRadius: 3)
                    .frame(width: 50, height: 6)
                    .opacity(0.5)
                
                Spacer()
                
				Image("1")
					.resizable()
					.frame(width: 300, height: 300)
					.cornerRadius(20)
					.shadow(radius: 10)
                
                VStack(spacing: 8) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Ssss")
                                .bold()
                            Text("Evgenia")
                        }
                        .font(.system(size: 22))
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            ZStack {
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(.white)
                                    .opacity(0.1)
                                    .shadow(radius: 10)
                                    
                                Image(systemName: "ellipsis")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20)
                            }
                        }
                    }
                    
                    VStack(spacing: 0) {
                        CustomSliderView(value: $musicProgress, maxValue: songDuration)
                        HStack {
                            Text("0:00")
                                .opacity(0.4)
                            Spacer()
                            Text("\(Int(songDuration) / 60):\(String(format: "%02.f", songDuration.truncatingRemainder(dividingBy: 60)))")
                                .opacity(0.4)
                        }
                    }
                }


				
				HStack(spacing: 80) {
                    CustomButtonView(image: "backward.fill", size: 47)
                    CustomButtonView(image: "play.fill", size: 42)
                    CustomButtonView(image: "forward.fill", size: 47)
                }
                    .shadow(radius: 10)
                
                Slider(value: $volumeSettings, in: 0 ... 100) {
                } minimumValueLabel: {
                    Image(systemName: "speaker.fill")
                } maximumValueLabel: {
                    Image(systemName: "speaker.wave.3.fill")
                }
                    .tint(.white)
                
                HStack(spacing: 80) {
                    CustomButtonView(image: "quote.bubble", size: 26)
                    CustomButtonView(image: "airplayaudio", size: 26)
                    CustomButtonView(image: "list.bullet", size: 26)
                }
            }
            .padding([.leading, .trailing], 30)
			.foregroundColor(.white)

            
        }
        .gesture(
            DragGesture(minimumDistance: 100)
                .onChanged { value in
                    print(value.location.x)
                    offset = value.translation
                }
                .onEnded {_ in
                    isPresented.toggle()
                }
        )
//        .position(x: 0, y: positionY)
        .offset(x: 0, y: offset.height)
	}
}
//
//struct LargePlayer_Previews: PreviewProvider {
//	static var previews: some View {
//		LargePlayerView()
//	}
//}

