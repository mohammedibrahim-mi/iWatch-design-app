//
//  heartRate.swift
//  UIWatch WatchKit Extension
//
//  Created by Pixel on 22/10/21.
//

import SwiftUI

struct heartRate: View {
    @State private var hu = false
    var body: some View {
        
        NavigationView{
          
            ZStack{
                Image("hq")
                    .resizable()
                    .frame(width:220,height:300)
                    .hueRotation(.degrees(hu ? -400 : .pi * 300 ))
                    .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                    .onAppear(){
                   hu.toggle()
                    }
                Button(action:{}){
                    NavigationLink(destination: healthView()) {
                        
                        
                        
                        VStack{
                                     
                            Spacer()
                            Text("Rest your wrist \n on a table")
                                .kerning(1.0)
                                .foregroundColor(.black)
                                .frame(width: 150, height: 60)
                                .font(.custom( "Helvetica Neue", size: 12))
                                .padding(.leading,15)
                            Spacer()
                            Text("Start")
                                .kerning(1.0)
                             //   .font(.system(size: 14, design: .default))
                                .font(.custom( "Helvetica Neue", size: 10))
                                .foregroundColor(.black)
                                    .foregroundColor(Color.blue)
                                    .frame(width: 30, height: 8)
                                   .shadow(color: Color.white, radius: 8, x: -8, y: -8)
                                    .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                                    .padding()
                                    //.background(Color(red: 141/255, green: 160/255, blue: 94/255))
//                                .background(
//                                  LinearGradient(gradient: Gradient(colors: [Color(red: 79/255, green: 172/255, blue: 254/255), Color(red: 0/255, green: 242/255, blue: 254/255)]), startPoint: .center, endPoint: .bottom)
//                                    )
                                    .cornerRadius(5)
                                .animation(Animation.easeInOut(duration: 2))
                        }
                        
                       
                        
                    }
                }
                .frame(width: 40, height: 40)
                .shadow(color: Color.white, radius: 10, x: -8, y: -8)
                .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
            }
        }
    }
}

struct heartRate_Previews: PreviewProvider {
    static var previews: some View {
        heartRate()
    }
}
