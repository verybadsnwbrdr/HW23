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
                              LinearGradient(colors: [.brown, .gray],
                                             startPoint: .top,
                                             endPoint: .bottom)
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
                                                                                .frame(width: 22, height: 5)
                                                                      
                                                            }
                                                            
                                                  }
                                        }
                                        
                                        Slider(value: $musicProgress)
                                        
                                        HStack(spacing: 80) {
                                                  Button {
                                                            
                                                  } label: {
                                                            Image(systemName: "backward.fill")
                                                                      .resizable()
                                                                      .frame(width: 50, height: 30)
                                                  }
                                                  
                                                  Button {
                                                            
                                                  } label: {
                                                            Image(systemName: "play.fill")
                                                                      .resizable()
                                                                      .frame(width: 45, height: 45)
                                                  }
                                                  
                                                  Button {
                                                            
                                                  } label: {
                                                            Image(systemName: "forward.fill")
                                                                      .resizable()
                                                                      .frame(width: 50, height: 30)
                                                  }
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
          }
}

struct LargePlayerView_Previews: PreviewProvider {
          static var previews: some View {
                    LargePlayerView()
          }
}
