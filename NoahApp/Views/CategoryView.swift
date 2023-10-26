//
//  NatureCategoryView.swift
//  NoahApp
//
//  Created by Simone Sarnataro on 25/10/23.
//

import SwiftUI

struct CategoryView: View {
    var viewModel = ActivityViewModel()
        var category: Category
        
        var activities: [Activity] {
            return viewModel.activities.filter { $0.category == category }
        }
        
        var body: some View {
            NavigationStack {
                List {
                    ForEach(activities) { activity in
                        NavigationLink {
                            ActivityView(activity: activity, isSet: .constant(true))
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
                .navigationTitle("\(category.rawValue.capitalized) Activities")
            }
        }
}

#Preview {
    CategoryView(category: .nightlife)
}
