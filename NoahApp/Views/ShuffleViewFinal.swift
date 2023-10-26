//
//  ShuffleViewFinal.swift
//  NoahApp
//
//  Created by Simone Sarnataro on 23/10/23.
//

import SwiftUI

struct ShuffleViewFinal: View {
    
    @State var activities = [
        Activity(id:0),
        Activity(id:1),
        Activity(id:2),
        Activity(id:3),
        Activity(id:4)
    ]
    
    @State var Mleft: Bool = false
    @State var Mright: Bool = false
    @State var IsFaceUp: Bool = true
    @State var rotationAngle = 0.0
    @State var scrolled = 0
    
    func Flip(){
        withAnimation(.snappy(duration: 0.3)){
            //when i tap on the info the bool-var changes from true to false and vice versa
            IsFaceUp.toggle()
        }
        withAnimation(.linear(duration: 0.001).delay(0.15)){
            rotationAngle=0
            rotationAngle+=180
        }
    }
    
    var body: some View {
        
        VStack{
            
            Text("Naples")
                .font(.largeTitle)
                .bold()
                .padding(.trailing, 220)
            
            ZStack{
                
                ForEach(activities) { activity in
                    
                    if IsFaceUp{
                        ZStack{
                            Image(activity.image)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                                .frame(width: 340, height: 580)
                            
                            Text("")
                                .frame(width: 340, height: 580)
                                .background(LinearGradient(gradient: .init(colors: [Color(.white).opacity(0),Color(.black).opacity(0.05),Color(.black)]), startPoint: .top, endPoint: .bottom)).clipShape(RoundedRectangle(cornerRadius: 40))
                            
                            VStack{
                                Image(systemName: "info.circle.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.black)
                                    .onTapGesture {
                                        Flip()
                                    }
                                    .padding(.bottom, 290)
                                    .padding(.trailing, 250)
                                
                                VStack(alignment: .leading){
                                    
                                    Text("Pompei")
                                        .font(.largeTitle)
                                        .bold()
                                        .shadow(radius: 10)
                                    Text("Archaeological Site")
                                        .font(.headline)
                                    
                                }.foregroundColor(.white)
                                    .padding(.trailing, 120)
                                
                            }.padding(.bottom, 130)
                        }//end zstack
                        .offset(x: activity.offset)
                            .gesture(DragGesture().onChanged({ (value) in
                                
                                withAnimation{
                                    if activity.id != activities.first!.id{
                                        activities[activity.id].offset = value.translation.width
                                        Mleft = false
                                        Mright = false
                                    }
                                    if value.translation.width < 0{
                                        Mleft = true
                                    }else{
                                        Mright = true
                                    }
                                }
                                
                            }).onEnded({ (value) in
                                withAnimation{
                                    
                                    if value.translation.width < 0{
                                        if -value.translation.width > 200 && activity.id != activities.first!.id{
                                            activities[activity.id].offset = -(5000)
                                            scrolled += 1
                                            Mleft = false
                                        }else{
                                            activities[activity.id].offset = 0
                                            Mleft = false
                                        }
                                    }else{
                                        if value.translation.width > 200 && activity.id != activities.first!.id{
                                            activities[activity.id].offset = (5000)
                                            scrolled += 1
                                            Mright = false
                                        }else{
                                            activities[activity.id].offset = 0
                                            Mright = false
                                        }
                                    }
                                    
                                }
                            })) //end gesture
                        
                        HStack(spacing: 20){
                            Image(systemName: "multiply.circle.fill")
                                    .resizable(resizingMode: .stretch)
                                    .foregroundColor(Color(red: 0.959, green: 0.369, blue: 0.367))
                                    .frame(width: 50, height: 50)
                                    .opacity(Mright ? 0.1 : 1)
                            Text("     ")
                            
                            Image(systemName: "bookmark.circle.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(Color(red: 0.347, green: 0.906, blue: 0.441))
                                    .opacity(Mleft ? 0.1 : 1)
                        }.padding(.top, 400)
                        
                    }else{
                        ZStack{
                            Image(activity.image)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                                .frame(width: 340, height: 580)
                                .blur(radius: 2, opaque: false)
                            
                            Text("")
                                .frame(width: 340, height: 580)
                                .background(LinearGradient(gradient: .init(colors: [Color(.white).opacity(0),Color(.black).opacity(0.05),Color(.black)]), startPoint: .top, endPoint: .bottom)).clipShape(RoundedRectangle(cornerRadius: 40))
                            
                            VStack{
                                
                                Image(systemName: "chevron.left")
                                    .foregroundColor(.black)
                                    .onTapGesture {
                                        Flip()
                                    }
                                    .padding(.trailing, 250)
                                
                                Image(activity.image2)
                                    .resizable()
                                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .clipShape(Circle())
                                    .shadow(radius: 10)
                                    .padding()
                                
                                VStack(alignment: .leading){
                                    Text(activity.name)
                                        .font(.largeTitle)
                                        .bold()
                                        .shadow(radius: 10)
                                    Text(activity.subtitle)
                                        .font(.headline)
                                    
                                    Rectangle()
                                        .frame(height: 1)
                                    
                                    Text(activity.description)
                                        .font(.body)
                                    
                                }.frame(width: 290, height: 275, alignment: .center)
                                    .foregroundColor(.white)
                            }.frame(width: 290, height: 550, alignment: .bottom)
                                .rotation3DEffect(
                                    .degrees(rotationAngle), axis: (0,1,0)
                                )
                        }//end zstackì
                    }
                    
                }//end ForEach
                
            }//end ZStack
            .rotation3DEffect( .degrees(IsFaceUp ? 0 : 180), axis: (0,1,0))
        }//end VStack
        .padding(.bottom, 20)
        
    }//end body
    
}//end ShuffleViewFinal
               
#Preview {
    ShuffleViewFinal()
}
