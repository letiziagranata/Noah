//
//  ActivityViewModel.swift
//  NoahApp
//
//  Created by Letizia Granata on 25/10/23.
//

import Foundation

class ActivityViewModel {
    var activities: [Activity] = [
    //act1
        Activity(id: 0, name: "arte1", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .art),
        Activity(id: 1, name: "arte2", subtitle: "Michela Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .art),
        Activity(id: 2, name: "arte3", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .art),
        Activity(id: 3, name: "arte4", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .art),
        Activity(id: 4, name: "arte 5", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .art),
        
        Activity(id: 5, name: "Nighlife1", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .nightlife),
        Activity(id: 6, name: "Nighlife2", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .nightlife),
        Activity(id: 7, name: "Nighlife3", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .nightlife),
        Activity(id: 8, name: "Nighlife4", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .nightlife),
        Activity(id: 9, name: "Nighlife5", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .nightlife),
        
        Activity(id: 10, name: "Food1", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .food),
        Activity(id: 11, name: "Food2", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .food),
        Activity(id: 12, name: "Food3", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .food),
        Activity(id: 13, name: "Food4", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .food),
        Activity(id: 14, name: "Food5", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .food),
        
        Activity(id: 15, name: "Freetime1", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .freetime),
        Activity(id: 16, name: "Freetime2", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .freetime),
        Activity(id: 17, name: "Freetime3", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .freetime),
        Activity(id: 18, name: "Freetime4", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .freetime),
        Activity(id: 19, name: "Freetime5", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .freetime),
        
        Activity(id: 20, name: "Nature1", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .nature),
        Activity(id: 21, name: "Nature2", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .nature),
        Activity(id: 22, name: "Nature3", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .nature),
        Activity(id: 23, name: "Nature4", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .nature),
        Activity(id: 24, name: "Nature5", subtitle: "Archeological Site", description: "Yeee", price: 10, openinghour: "9-10", address: "bho", transport: "linea 1", image: "pompei", image2: "pompei2", category: .nature),
       
    ]
}
