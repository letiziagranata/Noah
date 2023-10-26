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
                        
                        NavigationLink(destination: ActivityView(activity: activities.activities[5])) {
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
                        
                        NavigationLink(destination: ActivityView(activity: activities.activities[10])) {
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
                        
                        NavigationLink(destination: ActivityView(activity: activities.activities[15])) {
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
                        
                        NavigationLink(destination: ActivityView(activity: activities.activities[20])) {
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
                    
                    
                    NavigationLink(destination: ShuffleView()) {
                        HStack(alignment: .center) {
                            
                            Button(action: {}) {
                                Label("Let’s shuffle!", systemImage: "shuffle")
                                    .frame(maxWidth: .infinity)
                                    .padding(.top, 20)
                                    .padding(.bottom, 20)
                                    .background(.black)
                                    .foregroundColor(.white)
                                .bold()
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
                                    
                                    NavigationLink(destination: ActivityView(activity: activities.activities[1])) {
                                        
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
                                    
                                    NavigationLink(destination: ActivityView(activity: activities.activities[2])) {
                                        
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
                                    
                                    NavigationLink(destination:ActivityView(activity: activities.activities[5]))
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
                                    NavigationLink(destination:ActivityView(activity: activities.activities[5]))
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
                            
                            Label("Chnage Location", systemImage: "mappin.and.ellipse")
                                .frame(maxWidth: .infinity)
                                .padding(.top, 20)
                                .padding(.bottom, 20)
                                .background(.gray.opacity(0.25))
                                .foregroundColor(.accentColor)
                                .cornerRadius(15)
                                .bold()
                            
                        }
                    }
                    
                    NavigationLink(destination: FavouritesView()) {
                        HStack(alignment: .center) {
                            
                            Label("See My Favourites", systemImage: "heart")
                                .frame(maxWidth: .infinity)
                                .padding(.top, 20)
                                .padding(.bottom, 20)
                                .background(.gray.opacity(0.25))
                                .foregroundColor(.accentColor)
                                .cornerRadius(15)
                                .bold()
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
}
