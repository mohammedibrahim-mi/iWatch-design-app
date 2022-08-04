//
//  secondView.swift
//  WatchesApp WatchKit Extension
//
//  Created by Pixel on 20/10/21.
//


import SwiftUI

struct healthView: View {
//    @State private var my : Tab = .metrics
//
//    enum Tab{
//        case control,metrics,play
//    }
    @State var mov = false
    var body: some View {
        
//        TabView(selection: $my){
//            Text("Controls").tag(Tab.control)
//            Text("Metrics").tag(Tab.metrics)
//        }
        
   
        
        NavigationView{
          
            ZStack{
                Color(red: 224/255, green: 229/255, blue: 236/255)

                VStack{
                    NavigationLink(destination: ContentView()) {
                    Text("Health")
                        .kerning(1.0)
                     //   .font(.system(size: 14, design: .default))
                        .font(.custom( "Helvetica Neue", size: 14))
                        .foregroundColor(.black)}
                    HStack{
                        Spacer()
                        Button(action:{
                        }){
                            NavigationLink(destination: heartRate()) {
//                                Image( "30")
//                                    .resizable()
                            Text("Blood O2 ")
                                .kerning(1.0)
                             //   .font(.system(size: 14, design: .default))
                                .font(.custom( "Helvetica Neue", size: 8))
                                .foregroundColor(.black)
                                    .foregroundColor(Color.blue)
                                    .frame(width: 30, height: 28)
                                   .shadow(color: Color.white, radius: 8, x: -8, y: -8)
                                    .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                                    .padding()
                                    //.background(Color(red: 141/255, green: 160/255, blue: 94/255))
                                .background(
                                  LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255), Color(red: 0/255, green: 242/255, blue: 254/255)]), startPoint: .center, endPoint: .bottom)
                                    )
                                    .cornerRadius(5)
                                    .animation(Animation.easeIn(duration: 2))
                                .onAppear(){
                                    self.mov.toggle()

                                }
//                                .rotation3DEffect(.degrees(mov ? 0 : 360 ),axis: (x: 2, y: 10, z: 0.1))
//                                .animation(Animation.easeIn(duration: 0.3))
                           }
                        }
                        .onAppear(){
                            self.mov.toggle()

                        }
                     //   .rotation3DEffect(.degrees(mov ? 0 : 360 ),axis: (x: 2, y: 10, z: 0.1))
                        .rotationEffect(.degrees(mov ? 360 : 250))
                        .animation(.interpolatingSpring(stiffness: 10, damping: 3))
                        .frame(width: 40, height: 40)
                        .shadow(color: Color.white, radius: 8, x: -8, y: -8)
                        .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                    
                        Spacer()
                        Button(action:{}){
                          //  NavigationLink(destination: healthView()) {
                            VStack{
//                                Image(systemName: "heart.fill")
//                                    .resizable()
                                Text("ECG")
                                    .kerning(1.0)
                                 //   .font(.system(size: 14, design: .default))
                                    .font(.custom( "Helvetica Neue", size: 8))
                                    .foregroundColor(.black)
                                    .foregroundColor(Color.white)
                                    .frame(width: 30, height: 28)
                                   .shadow(color: Color.white, radius: 10, x: -8, y: -8)
                                    .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                                    .padding()
                                    .background(
                                      LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255), Color(red: 0/255, green: 242/255, blue: 254/255)]), startPoint: .center, endPoint: .bottom)
                                        )
                                  //  .background(Color(red: 141/255, green: 160/255, blue: 94/255))
                                    .cornerRadius(5)
                                    .animation(Animation.easeIn(duration: 2))
                           // }
                            }



                        }
                        .frame(width: 40, height: 40)
                        .shadow(color: Color.white, radius: 10, x: -8, y: -8)
                        .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                        .onAppear(){
                            self.mov.toggle()
                          
                        }  .rotationEffect(.degrees(mov ? 360 : 250))
                      //  .rotation3DEffect(.degrees(mov ? 0 : 360 ),axis: (x: 2, y: 10, z: 0.1))
                        .animation(.interpolatingSpring(stiffness: 10, damping: 3))
                        Spacer()
                    }.padding(.top,10)

                    HStack{
                        Spacer()
                        Button(action:{
                        }){
                           // NavigationLink(destination: nextView()) {
//                                Image( "30")
//                                    .resizable()
                            Text("Activity")
                                .kerning(1.0)
                             //   .font(.system(size: 14, design: .default))
                                .font(.custom( "Helvetica Neue", size: 8))
                                .foregroundColor(.black)
                                    .foregroundColor(Color.blue)
                                    .frame(width: 30, height: 28)
                                   .shadow(color: Color.white, radius: 8, x: -8, y: -8)
                                    .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                                    .padding()
                                    //.background(Color(red: 141/255, green: 160/255, blue: 94/255))
                                    .background(
                                      LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255), Color(red: 0/255, green: 242/255, blue: 254/255)]), startPoint: .center, endPoint: .bottom)
                                        )
                                    .cornerRadius(5)
                                    .animation(Animation.easeIn(duration: 2))
                          //  }
                        }
                        .frame(width: 40, height: 40)
                        .shadow(color: Color.white, radius: 8, x: -8, y: -8)
                        .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                        .onAppear(){
                            self.mov.toggle()
                          
                        }  .rotationEffect(.degrees(mov ? 360 : 250))
                       // .rotation3DEffect(.degrees(mov ? 0 : 360 ),axis: (x: 2, y: 10, z: 0.1))
                        .animation(.interpolatingSpring(stiffness: 10, damping: 3))
                        Spacer()
                        Button(action:{}){
                          //  NavigationLink(destination: healthView()) {
//                                Image(systemName: "heart.fill")
//                                    .resizable()
                            Text("Heart Rate")
                                .kerning(1.0)
                             //   .font(.system(size: 14, design: .default))
                                .font(.custom( "Helvetica Neue", size: 8))
                                .foregroundColor(.black)
                                    .foregroundColor(Color.white)
                                    .frame(width: 30, height: 28)
                                   .shadow(color: Color.white, radius: 10, x: -8, y: -8)
                                    .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                                    .padding()
                                .background(
                                  LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 255/255), Color(red: 0/255, green: 242/255, blue: 254/255)]), startPoint: .center, endPoint: .bottom)
                                    )
                                  //  .background(Color(red: 141/255, green: 160/255, blue: 94/255))
                                    .cornerRadius(5)
                                    .animation(Animation.easeIn(duration: 2))
                          //  }


                        }
                        .frame(width: 40, height: 40)
                        .shadow(color: Color.white, radius: 10, x: -8, y: -8)
                        .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                        .onAppear(){
                            self.mov.toggle()
                          
                        }  .rotationEffect(.degrees(mov ? 360 : 250))
                       // .rotation3DEffect(.degrees(mov ? 0 : 360 ),axis: (x: 2, y: 10, z: 0.1))
                        .animation(.interpolatingSpring(stiffness: 10, damping: 3))
                        Spacer()
                    }.padding(.top,15.0)
                    .padding(.bottom,10.0)

                }




            }
            
            
            VStack{
                NavigationLink(destination: ContentView()) {
                    Text("Languages")
                        .font(.system(size: 12))
                }
                Text("ok")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
            }
                .padding()
        }
    }
}

