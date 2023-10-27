import SwiftUI

struct MainPageView: View {
    
    var activities =  ActivityViewModel()
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView(showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 15) {
                    VStack {
                        Text("Activites")
                            .bold()
                            .font(.system(size: 34))
                    }
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        Text("Napoli, IT")
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                    }
                    
                    TabView {
                        
                        NavigationLink(destination: ActivityView(activity: activities.activities[0])) {
                            ZStack {
                                Image("\(activities.activities[0].image)")
                                    .resizable()
                                    .frame(width: 360, height: 360)
                                
                                VStack(alignment: .leading) {
                                    Text("\(activities.activities[0].name)")
                                        .bold()
                                        .font(.system(size: 24))
                                    
                                    Text("\(activities.activities[0].description)")
                                        .bold()
                                        .font(.system(size: 16))
                                }
                                .padding(.top, 140)
                                .padding(.trailing, 260)
                                .foregroundColor(.white)
                            }
                        }
                        
                        NavigationLink(destination: ActivityView(activity: activities.activities[0])){
                            ZStack {
                                Image("\(activities.activities[5].image)")
                                    .resizable()
                                    .frame(width: 360, height: 360)
                                
                                VStack(alignment: .leading) {
                                    Text("\(activities.activities[5].name)")
                                        .bold()
                                        .font(.system(size: 24))
                                    
                                    Text("\(activities.activities[5].subtitle)")
                                        .bold()
                                        .font(.system(size: 16))
                                }
                                .padding(.top, 140)
                                .padding(.trailing, 180)
                                .foregroundColor(.white)
                            }
                        }
                        
                        NavigationLink(destination: ActivityView(activity: activities.activities[0])) {
                            ZStack {
                                Image("\(activities.activities[10].image)")
                                    .resizable()
                                    .frame(width: 360, height: 360)
                                
                                VStack(alignment: .leading) {
                                    Text("\(activities.activities[10].name)")
                                        .bold()
                                        .font(.system(size: 24))
                                    
                                    Text("\(activities.activities[10].description)")
                                        .bold()
                                        .font(.system(size: 16))
                                }
                                .padding(.top, 140)
                                .padding(.trailing, 260)
                                .foregroundColor(.white)
                            }
                        }
                        
                        NavigationLink(destination: ActivityView(activity: activities.activities[0])){
                            ZStack {
                                Image("\(activities.activities[15].image)")
                                    .resizable()
                                    .frame(width: 360, height: 360)
                                
                                VStack(alignment: .leading) {
                                    Text("\(activities.activities[15].name)")
                                        .bold()
                                        .font(.system(size: 24))
                                    
                                    Text("\(activities.activities[15].description)")
                                        .bold()
                                        .font(.system(size: 16))
                                }
                                .padding(.top, 140)
                                .padding(.trailing, 220)
                                .foregroundColor(.white)
                            }
                        }
                        
                        NavigationLink(destination: ActivityView(activity: activities.activities[0])) {
                            ZStack {
                                Image("\(activities.activities[20].image)")
                                    .resizable()
                                    .frame(width: 360, height: 360)
                                
                                VStack(alignment: .leading) {
                                    Text("\(activities.activities[20].name)")
                                        .bold()
                                        .font(.system(size: 24))
                                    
                                    Text("\(activities.activities[20].description)")
                                        .bold()
                                        .font(.system(size: 16))
                                }
                                .padding(.top, 140)
                                .padding(.trailing, 240)
                                .foregroundColor(.white)
                            }
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    .frame(height: 280)
                    .cornerRadius(15)
                    
                    
                    NavigationLink(destination: SearchView()) {
                        HStack(alignment: .center) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(height:70)
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                
                                HStack(alignment: .center) {
                                    Image(systemName: "shuffle")
                                        .foregroundColor(colorScheme == .dark ? .black : .white)
                                        .bold()
                                    Text("Let’s shuffle!")
                                        .bold()
                                        .foregroundColor(colorScheme == .dark ? .black : .white)
                                }.foregroundColor(colorScheme == .dark ? .white : .black)
                            }
                        }
                    }
                    
                    
                    VStack(alignment: .leading) {
                        HStack(spacing: 5) {
                            Text("Art & Museums")
                                .bold()
                                .font(.system(size: 17))
                            
                            Image(systemName: "chevron.right")
                        }
                        NavigationStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 10) {
                                    
                                    NavigationLink(destination: ActivityView(activity: activities.activities[0])) {
                                        
                                        
                                        
                                        ZStack {
                                            Image("\(activities.activities[0].image)")
                                                .resizable()
                                                .frame(width: 160, height: 98)
                                                .cornerRadius(15)
                                            
                                            Text("\(activities.activities[0].name)")
                                                .fontWeight(.bold)
                                                .foregroundStyle(.white)
                                                .padding(.top, 40)
                                                .padding(.trailing, 70)
                                        }
                                    }
                                    
                                    NavigationLink(destination: ActivityView(activity: activities.activities[0])) {
                                        
                                        ZStack {
                                            Image("\(activities.activities[1].image)")
                                                .resizable()
                                                .frame(width: 160, height: 98)
                                                .cornerRadius(15)
                                            
                                            Text("\(activities.activities[1].name)")
                                                .fontWeight(.bold)
                                                .foregroundStyle(.white)
                                                .padding(.top, 40)
                                                .padding(.trailing, 70)
                                        }
                                    }
                                    
                                    NavigationLink(destination: ActivityView(activity: activities.activities[0])) {
                                        
                                        ZStack {
                                            Image("\(activities.activities[2].image)")
                                                .resizable()
                                                .frame(width: 160, height: 98)
                                                .cornerRadius(15)
                                            
                                            Text("\(activities.activities[2].name)")
                                                .fontWeight(.bold)
                                                .foregroundStyle(.white)
                                                .padding(.top, 40)
                                                .padding(.trailing, 70)
                                        }
                                    }
                                }
                                
                            }
                        }
                    }
                    
                    
                    
                    VStack(alignment: .leading) {
                        HStack(spacing: 5) {
                            Text("Nightlife")
                                .bold()
                                .font(.system(size: 17))
                            
                            Image(systemName: "chevron.right")
                        }
                        NavigationStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 10) {
                                    
                                    NavigationLink(destination: ActivityView(activity: activities.activities[0]))
                                    {
                                        
                                        ZStack {
                                            Image("noimage")
                                                .resizable()
                                                .frame(width: 160, height: 98)
                                                .cornerRadius(15)
                                            
                                            Text("Name")
                                                .foregroundStyle(.white)
                                                .padding(.top, 40)
                                                .padding(.trailing, 70)
                                        }
                                        
                                    }
                                    NavigationLink(destination: ActivityView(activity: activities.activities[0]))
                                    {
                                        
                                        ZStack {
                                            Image("noimage")
                                                .resizable()
                                                .frame(width: 160, height: 98)
                                                .cornerRadius(15)
                                            
                                            Text("Name")
                                                .foregroundStyle(.white)
                                                .padding(.top, 40)
                                                .padding(.trailing, 70)
                                        }
                                        
                                    }
                                }
                            }
                        }
                    }
                    
                    
                    VStack(alignment: .leading) {
                        HStack(spacing: 5) {
                            Text("Nature")
                                .bold()
                                .font(.system(size: 17))
                            
                            Image(systemName: "chevron.right")
                        }
                        NavigationStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 10) {
                                    
                                    NavigationLink(destination: SearchView())
                                    {
                                        
                                        ZStack {
                                            Image("noimage")
                                                .resizable()
                                                .frame(width: 160, height: 98)
                                                .cornerRadius(15)
                                            
                                            Text("Name")
                                                .foregroundStyle(.white)
                                                .padding(.top, 40)
                                                .padding(.trailing, 70)
                                        }
                                    }
                                    
                                }
                            }
                        }
                        
                    }
                    
                    
                    VStack(alignment: .leading) {
                        HStack(spacing: 5) {
                            Text("Food & Restaurants")
                                .bold()
                                .font(.system(size: 17))
                            
                            Image(systemName: "chevron.right")
                        }
                        NavigationStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 10) {
                                    
                                    NavigationLink(destination: SearchView())
                                    {
                                        
                                        ZStack {
                                            Image("noimage")
                                                .resizable()
                                                .frame(width: 160, height: 98)
                                                .cornerRadius(15)
                                            
                                            Text("Name")
                                                .foregroundStyle(.white)
                                                .padding(.top, 40)
                                                .padding(.trailing, 70)
                                        }
                                        
                                    }
                                    
                                }
                            }
                        }
                        
                    }
                    
                    NavigationLink(destination: SearchView()) {
                        HStack(alignment: .center) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(height:70)
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                
                                HStack(alignment: .center) {
                                    Image(systemName: "mappin.and.ellipse")
                                        .foregroundColor(colorScheme == .dark ? .black : .white)
                                        .bold()
                                    Text("Chnage Location")
                                        .bold()
                                        .foregroundColor(colorScheme == .dark ? .black : .white)
                                }.foregroundColor(colorScheme == .dark ? .white : .black)
                            }
                        }
                    }
                    
                    NavigationLink(destination: FavouritesView()) {
                        HStack(alignment: .center) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(height:70)
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                
                                HStack(alignment: .center) {
                                    Image(systemName: "heart")
                                        .foregroundColor(colorScheme == .dark ? .black : .white)
                                        .bold()
                                    Text("See My Favourites")
                                        .bold()
                                        .foregroundColor(colorScheme == .dark ? .black : .white)
                                }.foregroundColor(colorScheme == .dark ? .white : .black)
                            }
                        }
                    }

                }
            }
        }
        .padding()
    }
}

#Preview {
    MainPageView()
        .environment(ActivityViewModel())
}
