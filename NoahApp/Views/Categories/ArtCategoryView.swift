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
                            Image(systemName: "person.fill")
                                .imageScale(.large)
                                .foregroundStyle(.blue)
                            
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
