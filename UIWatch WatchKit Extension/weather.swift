//
//  secondView.swift
//  WatchesApp WatchKit Extension
//
//  Created by Pixel on 20/10/21.
//


import SwiftUI

struct nextView: View {
    @State var mov = false
    var body: some View {
        NavigationView{
              ZStack{
                  Color(red: 224/255, green: 229/255, blue: 236/255)
              
                Text("01:53")
                    //.kerning(1.0)
                    .font(.custom( "Helvetica Neue", size: 16))
                    .foregroundColor(.black).padding(.bottom,110)
                 
                Image("28")
                    .resizable()
                    .foregroundColor(Color.blue)
                    .frame(width: 60, height: 45)
                    .shadow(color: Color.white, radius: 8, x: -8, y: -8)
                    .onAppear(){
                        self.mov.toggle()
                      
                    }
                    .rotation3DEffect(.degrees(mov ? 0 : 360 ),axis: (x: 2, y: 10, z: 0.1))
                    .animation(Animation.easeIn(duration: 0.3))
                
                NavigationLink(destination: ContentView()) {
                    Text("Hum..\n17")
                        .kerning(1.0)
                        .font(.custom( "Helvetica Neue", size: 10))
                        .foregroundColor(.black).padding(.leading,110)
                        .animation(Animation.easeInOut(duration: 2))
                }
                
             
                Text("Temp\n25")
                    .kerning(1.0)
                    .font(.custom( "Helvetica Neue", size: 10))
                    .foregroundColor(.black).padding(.trailing,110)
                    .animation(Animation.easeInOut(duration: 2))
                Text("Monday\nOctober 22")
                    .kerning(1.0)
                    .font(.custom( "Helvetica Neue", size: 10))
                    .foregroundColor(.black).padding(.top,110)
                    .animation(Animation.easeInOut(duration: 2))
                
              }
        }
    }
}

