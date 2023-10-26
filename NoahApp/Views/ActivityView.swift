//
//  ActivityView.swift
//  NoahApp
//
//  Created by Amin Entezari on 20/10/23.
//

import SwiftUI

struct ActivityView: View {
//    @Environment(ActivityViewModel.self) var modelData
    
    var activity : Activity
    
//    var activityIndex: Int {
//        modelData.activities.firstIndex(where: { $0.id == activity.id })!
//    }
    
    
    var body: some View {
//        @Bindable var modelData = modelData
        
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
                        
//                        FavoriteButtonView(isSet: $modelData.activities[activityIndex].favourite)
                        
                        
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
    let modelData = ActivityViewModel()
    
    
//    return ActivityView(activity: modelData.activities[0])
//        .environment(modelData)
    
    return ActivityView(activity: Activity(id: 20, name: "a", subtitle: "a", description: "a", price: 2.2, openinghour: "2", address: "2", transport: "2", image: "pompeii", image2: "2", category: .art))
}
