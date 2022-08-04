//
//  ContentView.swift
//  WatchesApp WatchKit Extension
//
//  Created by Pixel on 01/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var mov = false
    var body: some View {
        NavigationView {
            ZStack{
                Color(red: 224/255, green: 229/255, blue: 236/255)
                VStack{
                    Text("Hi,Mohammed!")
                        .kerning(1.0)
                        .font(.custom( "Helvetica Neue", size: 14))
                        .foregroundColor(.black)
                    
                    HStack{
                        Spacer()
                        Button(action:{
                        }){
                            NavigationLink(destination: nextView()) {
                                Image( "30")
                                    .resizable()
                                    .foregroundColor(Color.blue)
                                    .frame(width: 30, height: 28)
                                   .shadow(color: Color.white, radius: 8, x: -8, y: -8)
                                    .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                                    .padding()

                                    .background(
                                      LinearGradient(gradient: Gradient(colors: [Color(red: 102/255, green: 126/255, blue: 234/255), Color(red: 118/255, green: 75/255, blue: 162/255)]), startPoint: .center, endPoint: .bottom)
                                        )
                                    .cornerRadius(5)
                                    .animation(Animation.easeInOut(duration: 2))
                            }
                        }
                        .frame(width: 40, height: 40)
                        .shadow(color: Color.white, radius: 8, x: -8, y: -8)
                        .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                        Spacer()
                        Button(action:{}){
                            NavigationLink(destination: healthView()) {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .foregroundColor(Color.white)
                                    .frame(width: 30, height: 28)
                                   .shadow(color: Color.white, radius: 10, x: -8, y: -8)
                                    .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                                    .padding()
                                    .background(
                                      LinearGradient(gradient: Gradient(colors: [Color(red: 247/255, green: 113/255, blue: 98/255), Color(red: 254/255, green: 81/255, blue: 150/255)]), startPoint: .center, endPoint: .bottom)
                                        )
                                    .cornerRadius(5)
                                    .animation(Animation.easeInOut(duration: 2))
                                
                            }
                        }
                        .frame(width: 40, height: 40)
                        .shadow(color: Color.white, radius: 10, x: -8, y: -8)
                        .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                        Spacer()
                    }
                    .padding(.top,10)
                    HStack{

                        Text("Weather")
                            .foregroundColor(.gray)
                            .font(.custom( "Helvetica Neue", size: 10))
                            .padding(.leading,28)
                       
                        Text("Health")
                            .foregroundColor(.gray)
                            .font(.custom( "Helvetica Neue", size: 10))
                            .padding(.leading,28)
                        Spacer()
                    }
                    .padding(.top,8)
                    
                }
    //            .background(
    //              LinearGradient(gradient: Gradient(colors: [.yellow, .black]), startPoint: .center, endPoint:     .bottom)
    //                )
                //.background(Color(red: 79/255, green: 67/255, blue: 140/255))
            }
        }
      //  .background(Color.red)
        //.background(Color(red: 79/255, green: 67/255, blue: 140/255))
        //.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
