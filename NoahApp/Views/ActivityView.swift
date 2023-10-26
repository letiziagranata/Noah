//
//  ActivityView.swift
//  NoahApp
//
//  Created by Amin Entezari on 20/10/23.
//

import SwiftUI

struct ActivityView: View {
    var activity : Activity

    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
                VStack{
                    Image(activity.image)
                        .resizable()
                        .frame(width: 400, height: 330)
                                
                        
                    VStack {
                        HStack {
                            Text(activity.name)
                                .multilineTextAlignment(.leading)
                                .bold()
                                .font(.largeTitle)
                            
                            Spacer()
                            
                                                        
//                            Button {
//                                isSet.toggle()
//                            } label: {
//                                Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
//                                    .labelStyle(.iconOnly)
//                                    .foregroundColor(isSet ? .black : .gray)
//                            }
                            
                            
                        }
                        .padding(.bottom, 5)
                        
                        Rectangle()
                            .frame(width: 350, height: 1)
                            .padding(.bottom, 10)
                        
                        HStack {
                            Text("Opening hours:")
                                .bold()
                                .font(.system(size: 21))
                            Text(activity.openinghour)
                                .fontWeight(.light)
                                .font(.system(size: 21))
                            Spacer()
                        }.padding(.bottom, 1)
                        
                        HStack {
                            Text("Price:")
                                .bold()
                                .font(.system(size: 21))
                            Text("20")
                            
                            ///ASK!
                            
                                .fontWeight(.light)
                                .font(.system(size: 20))
                            Spacer()
                        }.padding(.bottom, 1)
                        
                        HStack {
                            Text("Adress:")
                                .bold()
                                .font(.system(size: 21))
                            Text(activity.address)
                                .fontWeight(.light)
                                .font(.system(size: 20))
                            Spacer()
                        }.padding(.bottom, 1)
                        
                        Text(activity.description)
                            .fontWeight(.light)
                            .font(.system(size: 20))
                            .padding(.vertical)
                        
                        VStack {
                            HStack {
                                Text("How to get there?")
                                    .bold()
                                    .font(.system(size: 21))
                                Spacer()
                            }
                            HStack {
                                Text(activity.transport)
                                    .fontWeight(.light)
                                    .font(.system(size: 20))
                                Spacer()
                            }
                        }.padding(.bottom, 1)
                        
                    }.frame(width: 350)
                } //end vstackl
        
        }.ignoresSafeArea()
    }
}

#Preview {
    let activity2 = Activity(id: 0, name: "ciao", subtitle: "ciao", description: "ciao", price: 20, openinghour: "ciao", address: "ciao", transport: "ciao", image: "pompei", image2: "pompei", category: .art)
    return ActivityView(activity: activity2)
}
