//
//  SearchView.swift
//  NoahApp
//
//  Created by Amin Entezari on 20/10/23.
//

import SwiftUI

struct SearchView: View {
    var searchCity: String = ""
    
    
    var body: some View {
        NavigationStack{
            Text("")
                .navigationTitle("Search")
                .searchable(text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=$text@*/.constant("")/*@END_MENU_TOKEN@*/, placement: .automatic)
            
            
        }
    }
}
#Preview {
    SearchView()
}
