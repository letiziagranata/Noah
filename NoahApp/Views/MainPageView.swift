////
////  MainPageView.swift
////  NoahApp
////
////  Created by Amin Entezari on 20/10/23.
////
//import SwiftUI
//
//struct MainPageView: View {
//    
//    var body: some View {
//
//        NavigationStack {
//            
//            ScrollView(showsIndicators: false) {
//                
//                VStack(alignment: .leading, spacing: 15) {
//                    VStack {
//                        Text("Activites")
//                            .bold()
//                            .font(.system(size: 34))
//                    }
//                    HStack {
//                        Image(systemName: "mappin.and.ellipse")
//                        Text("Napoli, IT")
//                            .fontWeight(.semibold)
//                            .foregroundStyle(.gray)
//                     //   Spacer()
//                    }
//                    
//                    TabView {
//                        
//                        
//                        NavigationLink(destination: ActivityView(a))                            {
//                            ZStack {
//                                Image("noimage")
//                                    .resizable()
//                                    .frame(width: 360, height: 360)
//                                
//                                VStack(alignment: .leading) {
//                                    Text("Test")
//                                        .bold()
//                                        .font(.system(size: 24))
//                                    
//                                    Text("Test")
//                                        .bold()
//                                        .font(.system(size: 16))
//                                }
//                                .padding(.top, 140)
//                                .padding(.trailing, 260)
//                                .foregroundColor(.white)
//                            }
//                        }
//                    }
//                    .tabViewStyle(.page(indexDisplayMode: .always))
//                    .indexViewStyle(.page(backgroundDisplayMode: .always))
//                    .frame(height: 280)
//                    .cornerRadius(15)
//                    
//                    
//                    NavigationLink(destination: ShuffleView()) {
//                        HStack(alignment: .center) {
//                            
//                            Label("Let’s shuffle!", systemImage: "shuffle")
//                                .frame(maxWidth: .infinity)
//                                .padding(.top, 20)
//                                .padding(.bottom, 20)
//                                .background(.gray.opacity(0.25))
//                                .foregroundColor(.accentColor)
//                                .cornerRadius(15)
//                                .bold()
//                        }
//                    }
//                    
//                    
//                    VStack(alignment: .leading) {
//                        HStack(spacing: 5) {
//                            Text("Art & Museums")
//                                .bold()
//                                .font(.system(size: 17))
//                            
//                            Image(systemName: "chevron.right")
//                        }
//                        NavigationStack {
//                            ScrollView(.horizontal, showsIndicators: false) {
//                                HStack(spacing: 10) {
//                                    
//                                    NavigationLink(destination: ActivityView())
//                                    {
//                                        
//                                        ZStack {
//                                            Image("noimage")
//                                                .resizable()
//                                                .frame(width: 160, height: 98)
//                                            .cornerRadius(15)
//                                            
//                                            Text("Name")
//                                                .foregroundStyle(.white)
//                                                .padding(.top, 40)
//                                                .padding(.trailing, 70)
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                    }
//                    
//                    
//                    
//                    VStack(alignment: .leading) {
//                        HStack(spacing: 5) {
//                            Text("Night Life")
//                                .bold()
//                                .font(.system(size: 17))
//                            
//                            Image(systemName: "chevron.right")
//                        }
//                        NavigationStack {
//                            ScrollView(.horizontal, showsIndicators: false) {
//                                HStack(spacing: 10) {
//                                    
//                                    NavigationLink(destination: ActivityView())
//                                    {
//                                        
//                                        ZStack {
//                                            Image("noimage")
//                                                .resizable()
//                                                .frame(width: 160, height: 98)
//                                            .cornerRadius(15)
//                                            
//                                            Text("Name")
//                                                .foregroundStyle(.white)
//                                                .padding(.top, 40)
//                                                .padding(.trailing, 70)
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                    }
//                    
//                    
//                    VStack(alignment: .leading) {
//                        HStack(spacing: 5) {
//                            Text("Nature")
//                                .bold()
//                                .font(.system(size: 17))
//                            
//                            Image(systemName: "chevron.right")
//                        }
//                        NavigationStack {
//                            ScrollView(.horizontal, showsIndicators: false) {
//                                HStack(spacing: 10) {
//                                    
//                                    NavigationLink(destination: SearchView())
//                                    {
//                                        
//                                        ZStack {
//                                            Image("noimage")
//                                                .resizable()
//                                                .frame(width: 160, height: 98)
//                                            .cornerRadius(15)
//                                            
//                                            Text("Name")
//                                                .foregroundStyle(.white)
//                                                .padding(.top, 40)
//                                                .padding(.trailing, 70)
//                                        }
//                                    }
//                                    
//                                }
//                            }
//                        }
//                        
//                    }
//                    
//                    
//                    VStack(alignment: .leading) {
//                        HStack(spacing: 5) {
//                            Text("Food & Restaurants")
//                                .bold()
//                                .font(.system(size: 17))
//                            
//                            Image(systemName: "chevron.right")
//                        }
//                        NavigationStack {
//                            ScrollView(.horizontal, showsIndicators: false) {
//                                HStack(spacing: 10) {
//                                    
//                                    NavigationLink(destination: SearchView())
//                                    {
//                                        
//                                        ZStack {
//                                            Image("noimage")
//                                                .resizable()
//                                                .frame(width: 160, height: 98)
//                                            .cornerRadius(15)
//                                            
//                                            Text("Name")
//                                                .foregroundStyle(.white)
//                                                .padding(.top, 40)
//                                                .padding(.trailing, 70)
//                                        }
//
//                                    }
//                                    
//                                }
//                            }
//                        }
//                        
//                    }
//                    
//                    
//                    
//                    NavigationLink(destination: SearchView()) {
//                        HStack(alignment: .center) {
//                            
//                            Label("Chnage Location", systemImage: "mappin.and.ellipse")
//                                .frame(maxWidth: .infinity)
//                                .padding(.top, 20)
//                                .padding(.bottom, 20)
//                                .background(.gray.opacity(0.25))
//                                .foregroundColor(.accentColor)
//                                .cornerRadius(15)
//                                .bold()
//                            
//                        }
//                    }
//                    
//                    NavigationLink(destination: FavouritesView()) {
//                        HStack(alignment: .center) {
//                            
//                            Label("See My Favourites", systemImage: "heart")
//                                .frame(maxWidth: .infinity)
//                                .padding(.top, 20)
//                                .padding(.bottom, 20)
//                                .background(.gray.opacity(0.25))
//                                .foregroundColor(.accentColor)
//                                .cornerRadius(15)
//                                .bold()
//                        }
//                    }
//                }
//            }
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    MainPageView()
//}
