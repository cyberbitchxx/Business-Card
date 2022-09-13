//
//  ContentView.swift
//  BusinessCard
//
//  Created by sofia on 02.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        zStack is used to control object layouts level
//        where bottomest line: most forgreound object
        ZStack
        {
            Color(red: 0.18, green: 0.20, blue: 0.21).ignoresSafeArea()
//            ignoresSafeArea a property used for color in this case to ignore safe area and cover all the monitor space
            
//            VStack is used here bc I need a photo to be above the text
            VStack
            {
                Image("avatar").resizable().aspectRatio(contentMode: .fill).frame(width: 150.0, height: 150.0).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(lineWidth: 3))
                Text("Sophie Shchukina")
                    .font(.title)
                    .fontWeight(.regular)
                    .padding()
                Text("iOS Software Engineer")
                    .padding(.top, -15.0)
                Divider()
                
                Link(destination: URL(string:"https://www.linkedin.com/in/sophie-shchukina-229b241b3/")!, label: {
                    Text("LinkedIn").bold().frame(width: 280, height: 50).foregroundColor(Color.white).background(Color.black).cornerRadius(12)
                })
                
                Link(destination: URL(string:"https://https://github.com/cyberbitrix")!, label: {
                    Text("GitHub").bold().frame(width: 280, height: 50).foregroundColor(Color.white).background(Color.black).cornerRadius(12)
                })
                
                Link(destination: URL(string:"https://t.me/cyberbitchxx")!, label: {
                    Text("Telegram").bold().frame(width: 280, height: 50).foregroundColor(Color.white).background(Color.black).cornerRadius(12)
                })
                
                
               
                
                    
                    
                            }.foregroundColor(.white)
            
        }
        .accessibilityLabel("Telegram")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
