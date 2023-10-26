//
//  Activity.swift
//  NoahApp
//
//  Created by Letizia Granata on 25/10/23.
//

import Foundation

enum Category: String {
    case art
    case nightlife
    case food
    case nature
    case freetime
}

struct Activity: Identifiable {
    
    var id: Int
    var name: String
    var subtitle: String
    var description: String
    var price: Double
    var openinghour: String
    var address: String
    var transport: String
    var image: String
    var image2: String
    var category: Category
    var offset: CGFloat = 0
    var favourite: Bool = false
    
}
