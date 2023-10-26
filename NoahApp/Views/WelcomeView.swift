//
//  WelcomeView.swift
//  NoahApp
//
//  Created by Amin Entezari on 20/10/23.
//

import SwiftUI

struct WelcomeView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack{
            VStack {
                Text("Hello, traveller! :)")
                    .font(.largeTitle)
                    .bold()
                Text("Welcome to Noah!")
                    .font(.largeTitle)
                    .bold()
            } .padding(.bottom, 20)
            
            VStack (alignment: .leading) {
                HStack {
                    Image(systemName: "globe.americas")
                        .font(.system(size: 40))
                    
                    VStack (alignment: .leading) {
                        Text("Improve Your Trips")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        
                        //TODO: title to left
                        Text("Don’t waste your time looking for all the things you can do in the city you’re visiting")
                            .font(.footnote)
                            .frame(width:180)
                    }
                } .padding(.bottom, 15)
                //TODO: next
                
                HStack {
                    Image(systemName: "list.bullet.circle")
                        .font(.system(size: 40))
                    VStack (alignment: .leading){
                        Text("Get Information")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        //TODO: title to left
                        Text("All the activities will be organised in categories.")
                            .font(.footnote)
                            .frame(width:150)
                    }
                } .padding(.bottom, 15)
                
                HStack {
                    Image(systemName: "shuffle.circle")
                        .font(.system(size: 40))
                    VStack (alignment: .leading) {
                        Text("Suggestions' Shuffle")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        //TODO: title to left
                        Text("Get inspired by random suggestions proposed in the shuffle mode..")
                            .font(.footnote)
                            .lineLimit(/*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                            .frame(width:180)
                    }
                } .padding(.bottom, 15)
                
                
                HStack {
                    Image(systemName: "bookmark.circle")
                        .font(.system(size: 40))
                    VStack (alignment: .leading) {
                        Text("Favourite")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        //TODO: title to left
                        Text("You can see all your saved activities in a dedicated section.")
                            .font(.footnote)
                            .frame(width:200)
                    }
                } .padding(.bottom, 15)
                
                
            }
            // .padding(.leading)
            VStack {
                Text("Ready to discover?")
                    .font(.title2)
                    .bold()
                    .padding(.top)
                
                
                
                Button(action: {
                    
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width:250, height:70)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                        
                        
                        Text("Let's go!")
                            .foregroundColor(colorScheme == .dark ? .black : .white)
                            .bold()
                    }
                }
            }
        }
    }
}


#Preview {
    WelcomeView()
}
