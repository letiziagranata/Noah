//
//  NatureCategoryView.swift
//  NoahApp
//
//  Created by Simone Sarnataro on 25/10/23.
//

import SwiftUI

struct ArtCategoryView: View {
    var viewModel = ActivityViewModel()
    
    var artActivities: [Activity] {
        return viewModel.activities.filter { $0.category == .art }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(artActivities) { activity in
                    NavigationLink {
                        ActivityView(activity: activity)
                    } label: {
                        HStack {
                            Image(activity.image)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                            
                            Text(activity.name)
                            Text(activity.subtitle)
                        }
                    }
                }
            }
            .navigationTitle("Art Activities")
        }
    }
}


#Preview {
    ArtCategoryView()
}
